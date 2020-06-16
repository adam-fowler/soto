//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS LakeFormation service.

AWS Lake Formation Defines the public endpoint for the AWS Lake Formation service.
*/
public struct LakeFormation {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the LakeFormation client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSLakeFormation",
            service: "lakeformation",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-03-31",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [LakeFormationErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Batch operation to grant permissions to the principal.
    public func batchGrantPermissions(_ input: BatchGrantPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGrantPermissionsResponse> {
        return client.send(operation: "BatchGrantPermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Batch operation to revoke permissions from the principal.
    public func batchRevokePermissions(_ input: BatchRevokePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchRevokePermissionsResponse> {
        return client.send(operation: "BatchRevokePermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deregisters the resource as managed by the Data Catalog. When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.
    public func deregisterResource(_ input: DeregisterResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterResourceResponse> {
        return client.send(operation: "DeregisterResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the current data access role for the given resource registered in AWS Lake Formation.
    public func describeResource(_ input: DescribeResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceResponse> {
        return client.send(operation: "DescribeResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  The AWS Lake Formation principal.
    public func getDataLakeSettings(_ input: GetDataLakeSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataLakeSettingsResponse> {
        return client.send(operation: "GetDataLakeSettings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the permissions for a specified table or database resource located at a path in Amazon S3.
    public func getEffectivePermissionsForPath(_ input: GetEffectivePermissionsForPathRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEffectivePermissionsForPathResponse> {
        return client.send(operation: "GetEffectivePermissionsForPath", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. For information about permissions, see Security and Access Control to Metadata and Data.
    public func grantPermissions(_ input: GrantPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GrantPermissionsResponse> {
        return client.send(operation: "GrantPermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.
    public func listPermissions(_ input: ListPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionsResponse> {
        return client.send(operation: "ListPermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the resources registered to be managed by the Data Catalog.
    public func listResources(_ input: ListResourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesResponse> {
        return client.send(operation: "ListResources", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  The AWS Lake Formation principal.
    public func putDataLakeSettings(_ input: PutDataLakeSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutDataLakeSettingsResponse> {
        return client.send(operation: "PutDataLakeSettings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers the resource as managed by the Data Catalog. To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy.
    public func registerResource(_ input: RegisterResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterResourceResponse> {
        return client.send(operation: "RegisterResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.
    public func revokePermissions(_ input: RevokePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokePermissionsResponse> {
        return client.send(operation: "RevokePermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the data access role used for vending access to the given (registered) resource in AWS Lake Formation. 
    public func updateResource(_ input: UpdateResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResourceResponse> {
        return client.send(operation: "UpdateResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
