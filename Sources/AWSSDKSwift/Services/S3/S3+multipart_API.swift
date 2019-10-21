// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

//
//  Created by Adam Fowler, Jonathan McAllister on 2019/10/20.
//
//
import Foundation
import AWSSDKSwiftCore
import NIO

public extension S3ErrorType {
    enum multipart : Error {
        case noUploadId
        case downloadEmpty(message: String)
        case failedToOpen(file: String)
        case failedToWrite(file: String)
        case failedToRead(file: String)
    }
}

public extension S3 {

    /// Multipart download of a file from S3.
    ///
    /// - parameters:
    ///     - input: The GetObjectRequest shape that contains the details of the object request.
    ///     - partSize: Size of each part to be downloaded
    ///     - on: an EventLoop to process each downloaded part on
    ///     - outputStream: Function to be called for each downloaded part. Called with data block and file size
    /// - returns: A future that will receive the complete file size once the multipart download has finished.
    func multipartDownload(_ input: GetObjectRequest, partSize: Int = 5*1024*1024, on eventLoop: EventLoop, outputStream: @escaping (Data, Int64) throws -> ()) -> Future<Int64> {
        // function downloading part of a file
        func multipartDownloadPart(fileSize: Int64, offset: Int64, prevPart: Future<Int64>) -> Future<Int64> {
            guard fileSize > offset else {
                return prevPart
            }

            let range = "bytes=\(offset)-\(offset + Int64(partSize - 1))"
            let getRequest = S3.GetObjectRequest(
                bucket: input.bucket,
                key: input.key,
                range: range,
                sSECustomerAlgorithm: input.sSECustomerAlgorithm,
                sSECustomerKey: input.sSECustomerKey,
                sSECustomerKeyMD5: input.sSECustomerKeyMD5,
                versionId: input.versionId
            )
            return getObject(getRequest)
                .and(prevPart)
                .hop(to: eventLoop)
                .flatMap { (output, _) -> Future<Int64> in
                    do {
                        // should never happen
                        guard let body = output.body else {
                            throw S3ErrorType.multipart.downloadEmpty(message: "Body is unexpectedly nil")
                        }
                        guard let length = output.contentLength, length > 0 else {
                            throw S3ErrorType.multipart.downloadEmpty(message: "Content length is unexpectedly zero")
                        }

                        // output the data downloaded
                        let part = eventLoop.submit { () -> Int64 in
                            try outputStream(body, fileSize)
                            return fileSize
                        }

                        let newOffset = offset + Int64(partSize)
                        return multipartDownloadPart(fileSize: fileSize, offset: newOffset, prevPart: part)

                    } catch {
                        return eventLoop.makeFailedFuture(error)
                    }
            }

        }

        // get object size before downloading
        let headRequest = S3.HeadObjectRequest(
            bucket: input.bucket,
            ifMatch: input.ifMatch,
            ifModifiedSince: input.ifModifiedSince,
            ifNoneMatch: input.ifNoneMatch,
            ifUnmodifiedSince: input.ifUnmodifiedSince,
            key: input.key,
            requestPayer: input.requestPayer,
            sSECustomerAlgorithm: input.sSECustomerAlgorithm,
            sSECustomerKey: input.sSECustomerKey,
            sSECustomerKeyMD5: input.sSECustomerKeyMD5,
            versionId: input.versionId
        )
        let result = headObject(headRequest)
            .hop(to: eventLoop)
            .flatMap { object -> Future<Int64> in
                do {
                    guard let contentLength = object.contentLength else {
                        throw S3ErrorType.multipart.downloadEmpty(message: "Content length is unexpectedly zero")
                    }
                    // download file
                    return multipartDownloadPart(fileSize: contentLength, offset: 0, prevPart: eventLoop.makeSucceededFuture(contentLength))
                } catch {
                    return eventLoop.makeFailedFuture(error)
                }
        }
        return result
    }

    /// Multipart download of a file from S3.
    ///
    /// - parameters:
    ///     - input: The GetObjectRequest shape that contains the details of the object request.
    ///     - partSize: Size of each part to be downloaded
    ///     - filename: Filename to save download to
    ///     - on: EventLoop to process downloaded parts
    ///     - progress: Callback that returns the progress of the download. It is called after each part is downloaded with a value between 0.0 and 1.0 indicating how far the download is complete (1.0 meaning finished).
    /// - returns: A future that will receive the complete file size once the multipart download has finished.
    func multipartDownload(_ input: GetObjectRequest, partSize: Int = 5*1024*1024, filename: String, on eventLoop: EventLoop = AWSClient.eventGroup.next(), progress: @escaping (Double) throws -> () = { _ in }) -> Future<Int64> {
        return eventLoop.submit {  () -> Foundation.FileHandle in
            FileManager.default.createFile(atPath: filename, contents: nil)
            return try FileHandle(forWritingTo: URL(fileURLWithPath: filename))
        }.flatMap { (fileHandle) -> Future<Int64> in
            var progressValue : Int64 = 0
            let outputStream: (Data, Int64) throws -> () = {  data, fileSize in
                fileHandle.write(data)
                progressValue += Int64(data.count)
                try progress(Double(progressValue) / Double(fileSize))
            }
            let download = self.multipartDownload(
                input,
                partSize: partSize,
                on: eventLoop,
                outputStream: outputStream
            )
            download.whenComplete { _ in
                fileHandle.closeFile()
            }
            return download
        }
    }

    /// Multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - on: an EventLoop to process each part to upload
    ///     - inputStream: The function supplying the data parts to the multipartUpload. Each parts must be at least 5MB in size expect the last one which has no size limit.
    /// - returns: A Future that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    func multipartUpload(_ input: CreateMultipartUploadRequest, on eventLoop: EventLoop, inputStream: @escaping () throws -> Data?) -> Future<CompleteMultipartUploadOutput> {
        var completedParts: [S3.CompletedPart] = []

        // function uploading part of a file and queueing up upload of the next part
        func multipartUploadPart(partNumber: Int, uploadId: String, body: Data? = nil) -> Future<[S3.CompletedPart]> {
            // create upload data future, if there is no data to load because this is the first time this is called create a succeeded future
            let uploadResult : Future<[S3.CompletedPart]>
            if let body = body {
                let request = S3.UploadPartRequest(
                    body: body,
                    bucket: input.bucket,
                    contentLength: Int64(body.count),
                    key: input.key,
                    partNumber: partNumber,
                    requestPayer: input.requestPayer,
                    sSECustomerAlgorithm: input.sSECustomerAlgorithm,
                    sSECustomerKey: input.sSECustomerKey,
                    sSECustomerKeyMD5: input.sSECustomerKeyMD5,
                    uploadId: uploadId
                )
                // request upload future
                uploadResult = self.uploadPart(request).hop(to: eventLoop).map { output -> [S3.CompletedPart] in
                    let part = S3.CompletedPart(eTag: output.eTag, partNumber: partNumber)
                    completedParts.append(part)
                    return completedParts
                }
            } else {
                uploadResult = eventLoop.makeSucceededFuture([])
            }

            // load data future
            let result = eventLoop.submit {
                return try inputStream()
                }
                .and(uploadResult)
                // upload data
                .flatMap { (data, parts) -> Future<[S3.CompletedPart]> in
                    guard let data = data, data.count > 0 else { return eventLoop.makeSucceededFuture(parts)}
                    return multipartUploadPart(partNumber: partNumber+1, uploadId: uploadId, body: data)
            }
            return result
        }

        // initialize multipart upload
        let result = createMultipartUpload(input).flatMap { upload -> Future<CompleteMultipartUploadOutput> in
            guard let uploadId = upload.uploadId else { return eventLoop.makeFailedFuture(S3ErrorType.multipart.noUploadId) }
            // upload all the parts
            return multipartUploadPart(partNumber: 1, uploadId: uploadId)
                .flatMap { parts -> Future<CompleteMultipartUploadOutput> in
                    let request = S3.CompleteMultipartUploadRequest(
                        bucket: input.bucket,
                        key:input.key,
                        multipartUpload: S3.CompletedMultipartUpload(parts:parts),
                        requestPayer: input.requestPayer,
                        uploadId: uploadId
                    )
                    return self.completeMultipartUpload(request)
                }
                .flatMapErrorThrowing { error in
                    // if failure then abort the multipart upload
                    let request = S3.AbortMultipartUploadRequest(bucket: input.bucket, key: input.key, requestPayer: input.requestPayer, uploadId: uploadId)
                    _ = self.abortMultipartUpload(request)
                    throw error
            }
        }
        return result
    }

    /// Multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - partSize: Size of each part to upload. This has to be at least 5MB
    ///     - filename: Name of file to upload
    ///     - on: EventLoop to process parts for upload
    ///     - progress: Callback that returns the progress of the upload. It is called after each part is uploaded with a value between 0.0 and 1.0 indicating how far the upload is complete (1.0 meaning finished).
    /// - returns: A Future that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    func multipartUpload(_ input: CreateMultipartUploadRequest, partSize: Int = 5*1024*1024, filename: String, on eventLoop: EventLoop = AWSClient.eventGroup.next(), progress: @escaping (Double) throws->() = { _ in }) -> Future<CompleteMultipartUploadOutput> {
        var fileSize : UInt64 = 0
        return eventLoop.submit {  () -> FileHandle in
            fileSize = try FileManager.default.attributesOfItem(atPath: filename)[.size] as? UInt64 ?? UInt64.max
            return try FileHandle(forReadingFrom: URL(fileURLWithPath: filename))
        }.flatMap { (fileHandle) -> Future<CompleteMultipartUploadOutput> in
            var progressAmount : Int64 = 0

            let inputStream: () throws -> Data? = {
                try progress(Double(progressAmount) / Double(fileSize))
                let data = fileHandle.readData(ofLength: partSize)
                progressAmount += Int64(data.count)
                return data
            }

            let upload = self.multipartUpload(
                input,
                on: eventLoop,
                inputStream: inputStream
            )

            upload.whenComplete { _ in
                fileHandle.closeFile()
            }
            return upload
        }
    }
}
