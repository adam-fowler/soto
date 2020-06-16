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
Client object for interacting with AWS DatabaseMigrationService service.

AWS Database Migration Service AWS Database Migration Service (AWS DMS) can migrate your data to and from the most widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to MySQL or SQL Server to PostgreSQL. For more information about AWS DMS, see What Is AWS Database Migration Service? in the AWS Database Migration User Guide. 
*/
public struct DatabaseMigrationService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the DatabaseMigrationService client
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
            amzTarget: "AmazonDMSv20160101",
            service: "dms",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-01-01",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [DatabaseMigrationServiceErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS.
    public func addTagsToResource(_ input: AddTagsToResourceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTagsToResourceResponse> {
        return client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Applies a pending maintenance action to a resource (for example, to a replication instance).
    public func applyPendingMaintenanceAction(_ input: ApplyPendingMaintenanceActionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyPendingMaintenanceActionResponse> {
        return client.send(operation: "ApplyPendingMaintenanceAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an endpoint using the provided settings.
    public func createEndpoint(_ input: CreateEndpointMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEndpointResponse> {
        return client.send(operation: "CreateEndpoint", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Creates an AWS DMS event notification subscription.  You can specify the type of source (SourceType) you want to be notified of, provide a list of AWS DMS source IDs (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. If you specify both the SourceType and SourceIds, such as SourceType = replication-instance and SourceIdentifier = my-replinstance, you will be notified of all the replication instance events for the specified source. If you specify a SourceType but don't specify a SourceIdentifier, you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either SourceType nor SourceIdentifier, you will be notified of events generated from all AWS DMS sources belonging to your customer account. For more information about AWS DMS events, see Working with Events and Notifications in the AWS Database Migration Service User Guide. 
    public func createEventSubscription(_ input: CreateEventSubscriptionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEventSubscriptionResponse> {
        return client.send(operation: "CreateEventSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates the replication instance using the specified parameters. AWS DMS requires that your account have certain roles with appropriate permissions before you can create a replication instance. For information on the required roles, see Creating the IAM Roles to Use With the AWS CLI and AWS DMS API. For information on the required permissions, see IAM Permissions Needed to Use AWS DMS.
    public func createReplicationInstance(_ input: CreateReplicationInstanceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplicationInstanceResponse> {
        return client.send(operation: "CreateReplicationInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a replication subnet group given a list of the subnet IDs in a VPC.
    public func createReplicationSubnetGroup(_ input: CreateReplicationSubnetGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplicationSubnetGroupResponse> {
        return client.send(operation: "CreateReplicationSubnetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a replication task using the specified parameters.
    public func createReplicationTask(_ input: CreateReplicationTaskMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplicationTaskResponse> {
        return client.send(operation: "CreateReplicationTask", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified certificate. 
    public func deleteCertificate(_ input: DeleteCertificateMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCertificateResponse> {
        return client.send(operation: "DeleteCertificate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the connection between a replication instance and an endpoint.
    public func deleteConnection(_ input: DeleteConnectionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectionResponse> {
        return client.send(operation: "DeleteConnection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified endpoint.  All tasks associated with the endpoint must be deleted before you can delete the endpoint.  
    public func deleteEndpoint(_ input: DeleteEndpointMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEndpointResponse> {
        return client.send(operation: "DeleteEndpoint", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Deletes an AWS DMS event subscription. 
    public func deleteEventSubscription(_ input: DeleteEventSubscriptionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEventSubscriptionResponse> {
        return client.send(operation: "DeleteEventSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified replication instance.  You must delete any migration tasks that are associated with the replication instance before you can delete it.  
    public func deleteReplicationInstance(_ input: DeleteReplicationInstanceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationInstanceResponse> {
        return client.send(operation: "DeleteReplicationInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a subnet group.
    public func deleteReplicationSubnetGroup(_ input: DeleteReplicationSubnetGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationSubnetGroupResponse> {
        return client.send(operation: "DeleteReplicationSubnetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified replication task.
    public func deleteReplicationTask(_ input: DeleteReplicationTaskMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationTaskResponse> {
        return client.send(operation: "DeleteReplicationTask", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all of the AWS DMS attributes for a customer account. These attributes include AWS DMS quotas for the account and a unique account identifier in a particular DMS region. DMS quotas include a list of resource quotas supported by the account, such as the number of replication instances allowed. The description for each resource quota, includes the quota name, current usage toward that quota, and the quota's maximum value. DMS uses the unique account identifier to name each artifact used by DMS in the given region. This command does not take any parameters.
    public func describeAccountAttributes(_ input: DescribeAccountAttributesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAttributesResponse> {
        return client.send(operation: "DescribeAccountAttributes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provides a description of the certificate.
    public func describeCertificates(_ input: DescribeCertificatesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificatesResponse> {
        return client.send(operation: "DescribeCertificates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
    public func describeConnections(_ input: DescribeConnectionsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConnectionsResponse> {
        return client.send(operation: "DescribeConnections", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the type of endpoints available.
    public func describeEndpointTypes(_ input: DescribeEndpointTypesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndpointTypesResponse> {
        return client.send(operation: "DescribeEndpointTypes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the endpoints for your account in the current region.
    public func describeEndpoints(_ input: DescribeEndpointsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndpointsResponse> {
        return client.send(operation: "DescribeEndpoints", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in Working with Events and Notifications in the AWS Database Migration Service User Guide. 
    public func describeEventCategories(_ input: DescribeEventCategoriesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventCategoriesResponse> {
        return client.send(operation: "DescribeEventCategories", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all the event subscriptions for a customer account. The description of a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.  If you specify SubscriptionName, this action lists the description for that subscription.
    public func describeEventSubscriptions(_ input: DescribeEventSubscriptionsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventSubscriptionsResponse> {
        return client.send(operation: "DescribeEventSubscriptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see Working with Events and Notifications in the AWS Database Migration User Guide. 
    public func describeEvents(_ input: DescribeEventsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventsResponse> {
        return client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the replication instance types that can be created in the specified region.
    public func describeOrderableReplicationInstances(_ input: DescribeOrderableReplicationInstancesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrderableReplicationInstancesResponse> {
        return client.send(operation: "DescribeOrderableReplicationInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  For internal use only
    public func describePendingMaintenanceActions(_ input: DescribePendingMaintenanceActionsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePendingMaintenanceActionsResponse> {
        return client.send(operation: "DescribePendingMaintenanceActions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the status of the RefreshSchemas operation.
    public func describeRefreshSchemasStatus(_ input: DescribeRefreshSchemasStatusMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRefreshSchemasStatusResponse> {
        return client.send(operation: "DescribeRefreshSchemasStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the task logs for the specified task.
    public func describeReplicationInstanceTaskLogs(_ input: DescribeReplicationInstanceTaskLogsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationInstanceTaskLogsResponse> {
        return client.send(operation: "DescribeReplicationInstanceTaskLogs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about replication instances for your account in the current region.
    public func describeReplicationInstances(_ input: DescribeReplicationInstancesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationInstancesResponse> {
        return client.send(operation: "DescribeReplicationInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the replication subnet groups.
    public func describeReplicationSubnetGroups(_ input: DescribeReplicationSubnetGroupsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationSubnetGroupsResponse> {
        return client.send(operation: "DescribeReplicationSubnetGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the task assessment results from Amazon S3. This action always returns the latest results.
    public func describeReplicationTaskAssessmentResults(_ input: DescribeReplicationTaskAssessmentResultsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationTaskAssessmentResultsResponse> {
        return client.send(operation: "DescribeReplicationTaskAssessmentResults", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about replication tasks for your account in the current region.
    public func describeReplicationTasks(_ input: DescribeReplicationTasksMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationTasksResponse> {
        return client.send(operation: "DescribeReplicationTasks", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the schema for the specified endpoint. 
    public func describeSchemas(_ input: DescribeSchemasMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchemasResponse> {
        return client.send(operation: "DescribeSchemas", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted. Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.
    public func describeTableStatistics(_ input: DescribeTableStatisticsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableStatisticsResponse> {
        return client.send(operation: "DescribeTableStatistics", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Uploads the specified certificate.
    public func importCertificate(_ input: ImportCertificateMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportCertificateResponse> {
        return client.send(operation: "ImportCertificate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all tags for an AWS DMS resource.
    public func listTagsForResource(_ input: ListTagsForResourceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the specified endpoint.
    public func modifyEndpoint(_ input: ModifyEndpointMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEndpointResponse> {
        return client.send(operation: "ModifyEndpoint", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies an existing AWS DMS event notification subscription. 
    public func modifyEventSubscription(_ input: ModifyEventSubscriptionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEventSubscriptionResponse> {
        return client.send(operation: "ModifyEventSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request. Some settings are applied during the maintenance window. 
    public func modifyReplicationInstance(_ input: ModifyReplicationInstanceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReplicationInstanceResponse> {
        return client.send(operation: "ModifyReplicationInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the settings for the specified replication subnet group.
    public func modifyReplicationSubnetGroup(_ input: ModifyReplicationSubnetGroupMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReplicationSubnetGroupResponse> {
        return client.send(operation: "ModifyReplicationSubnetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the specified replication task. You can't modify the task endpoints. The task must be stopped before you can modify it.  For more information about AWS DMS tasks, see Working with Migration Tasks in the AWS Database Migration Service User Guide.
    public func modifyReplicationTask(_ input: ModifyReplicationTaskMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReplicationTaskResponse> {
        return client.send(operation: "ModifyReplicationTask", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.
    public func rebootReplicationInstance(_ input: RebootReplicationInstanceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebootReplicationInstanceResponse> {
        return client.send(operation: "RebootReplicationInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.
    public func refreshSchemas(_ input: RefreshSchemasMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefreshSchemasResponse> {
        return client.send(operation: "RefreshSchemas", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Reloads the target database table with the source data. 
    public func reloadTables(_ input: ReloadTablesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReloadTablesResponse> {
        return client.send(operation: "ReloadTables", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes metadata tags from a DMS resource.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveTagsFromResourceResponse> {
        return client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the replication task. For more information about AWS DMS tasks, see Working with Migration Tasks  in the AWS Database Migration Service User Guide. 
    public func startReplicationTask(_ input: StartReplicationTaskMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReplicationTaskResponse> {
        return client.send(operation: "StartReplicationTask", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Starts the replication task assessment for unsupported data types in the source database. 
    public func startReplicationTaskAssessment(_ input: StartReplicationTaskAssessmentMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartReplicationTaskAssessmentResponse> {
        return client.send(operation: "StartReplicationTaskAssessment", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the replication task. 
    public func stopReplicationTask(_ input: StopReplicationTaskMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopReplicationTaskResponse> {
        return client.send(operation: "StopReplicationTask", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Tests the connection between the replication instance and the endpoint.
    public func testConnection(_ input: TestConnectionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TestConnectionResponse> {
        return client.send(operation: "TestConnection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
