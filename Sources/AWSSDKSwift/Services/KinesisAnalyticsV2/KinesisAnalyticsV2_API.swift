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
Client object for interacting with AWS KinesisAnalyticsV2 service.

Amazon Kinesis Data Analytics is a fully managed service that you can use to process and analyze streaming data using SQL or Java. The service enables you to quickly author and run SQL or Java code against streaming sources to perform time series analytics, feed real-time dashboards, and create real-time metrics.
*/
public struct KinesisAnalyticsV2 {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the KinesisAnalyticsV2 client
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
            amzTarget: "KinesisAnalytics_20180523",
            service: "kinesisanalytics",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-05-23",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [KinesisAnalyticsV2ErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Adds an Amazon CloudWatch log stream to monitor application configuration errors.
    public func addApplicationCloudWatchLoggingOption(_ input: AddApplicationCloudWatchLoggingOptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationCloudWatchLoggingOptionResponse> {
        return client.send(operation: "AddApplicationCloudWatchLoggingOption", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Adds a streaming source to your SQL-based Amazon Kinesis Data Analytics application.  You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see CreateApplication. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version. 
    public func addApplicationInput(_ input: AddApplicationInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationInputResponse> {
        return client.send(operation: "AddApplicationInput", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds an InputProcessingConfiguration to an SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application's SQL code executes. Currently, the only input processor available is AWS Lambda.
    public func addApplicationInputProcessingConfiguration(_ input: AddApplicationInputProcessingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationInputProcessingConfigurationResponse> {
        return client.send(operation: "AddApplicationInputProcessingConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds an external destination to your SQL-based Amazon Kinesis Data Analytics application. If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.  You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors.   Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version.
    public func addApplicationOutput(_ input: AddApplicationOutputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationOutputResponse> {
        return client.send(operation: "AddApplicationOutput", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds a reference data source to an existing SQL-based Amazon Kinesis Data Analytics application. Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table.
    public func addApplicationReferenceDataSource(_ input: AddApplicationReferenceDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationReferenceDataSourceResponse> {
        return client.send(operation: "AddApplicationReferenceDataSource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store and access resources securely. Note the following about VPC configurations for Kinesis Data Analytics applications:   VPC configurations are not supported for SQL applications.   When a VPC is added to a Kinesis Data Analytics application, the application can no longer be accessed from the Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC.  
    public func addApplicationVpcConfiguration(_ input: AddApplicationVpcConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationVpcConfigurationResponse> {
        return client.send(operation: "AddApplicationVpcConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an Amazon Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see Creating an Application. 
    public func createApplication(_ input: CreateApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationResponse> {
        return client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a snapshot of the application's state data.
    public func createApplicationSnapshot(_ input: CreateApplicationSnapshotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationSnapshotResponse> {
        return client.send(operation: "CreateApplicationSnapshot", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.
    public func deleteApplication(_ input: DeleteApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationResponse> {
        return client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data Analytics application. 
    public func deleteApplicationCloudWatchLoggingOption(_ input: DeleteApplicationCloudWatchLoggingOptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationCloudWatchLoggingOptionResponse> {
        return client.send(operation: "DeleteApplicationCloudWatchLoggingOption", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an InputProcessingConfiguration from an input.
    public func deleteApplicationInputProcessingConfiguration(_ input: DeleteApplicationInputProcessingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationInputProcessingConfigurationResponse> {
        return client.send(operation: "DeleteApplicationInputProcessingConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the output destination configuration from your SQL-based Amazon Kinesis Data Analytics application's configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination.
    public func deleteApplicationOutput(_ input: DeleteApplicationOutputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationOutputResponse> {
        return client.send(operation: "DeleteApplicationOutput", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a reference data source configuration from the specified SQL-based Amazon Kinesis Data Analytics application's configuration. If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the AddApplicationReferenceDataSource operation. 
    public func deleteApplicationReferenceDataSource(_ input: DeleteApplicationReferenceDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationReferenceDataSourceResponse> {
        return client.send(operation: "DeleteApplicationReferenceDataSource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a snapshot of application state.
    public func deleteApplicationSnapshot(_ input: DeleteApplicationSnapshotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationSnapshotResponse> {
        return client.send(operation: "DeleteApplicationSnapshot", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes a VPC configuration from a Kinesis Data Analytics application.
    public func deleteApplicationVpcConfiguration(_ input: DeleteApplicationVpcConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationVpcConfigurationResponse> {
        return client.send(operation: "DeleteApplicationVpcConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about a specific Amazon Kinesis Data Analytics application. If you want to retrieve a list of all applications in your account, use the ListApplications operation.
    public func describeApplication(_ input: DescribeApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationResponse> {
        return client.send(operation: "DescribeApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about a snapshot of application state data.
    public func describeApplicationSnapshot(_ input: DescribeApplicationSnapshotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationSnapshotResponse> {
        return client.send(operation: "DescribeApplicationSnapshot", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Infers a schema for an SQL-based Amazon Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.  You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface. 
    public func discoverInputSchema(_ input: DiscoverInputSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DiscoverInputSchemaResponse> {
        return client.send(operation: "DiscoverInputSchema", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists information about the current application snapshots.
    public func listApplicationSnapshots(_ input: ListApplicationSnapshotsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationSnapshotsResponse> {
        return client.send(operation: "ListApplicationSnapshots", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of Amazon Kinesis Data Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status.  If you want detailed information about a specific application, use DescribeApplication.
    public func listApplications(_ input: ListApplicationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationsResponse> {
        return client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the list of key-value tags assigned to the application. For more information, see Using Tagging.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the specified Amazon Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to start your application.
    public func startApplication(_ input: StartApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartApplicationResponse> {
        return client.send(operation: "StartApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the application from processing data. You can stop an application only if it is in the running state. You can use the DescribeApplication operation to find the application state. 
    public func stopApplication(_ input: StopApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopApplicationResponse> {
        return client.send(operation: "StopApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see Using Tagging.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes one or more tags from a Kinesis Analytics application. For more information, see Using Tagging.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an existing Amazon Kinesis Data Analytics application. Using this operation, you can update application code, input configuration, and output configuration.  Kinesis Data Analytics updates the ApplicationVersionId each time you update your application. 
    public func updateApplication(_ input: UpdateApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApplicationResponse> {
        return client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
