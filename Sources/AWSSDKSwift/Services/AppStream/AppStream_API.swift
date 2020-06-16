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
Client object for interacting with AWS AppStream service.

Amazon AppStream 2.0 This is the Amazon AppStream 2.0 API Reference. This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand.   You can call the AppStream 2.0 API operations by using an interface VPC endpoint (interface endpoint). For more information, see Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint in the Amazon AppStream 2.0 Administration Guide.  To learn more about AppStream 2.0, see the following resources:    Amazon AppStream 2.0 product page     Amazon AppStream 2.0 documentation   
*/
public struct AppStream {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AppStream client
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
            amzTarget: "PhotonAdminProxyService",
            service: "appstream2",
            signingName: "appstream",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-12-01",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [AppStreamErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Associates the specified fleet with the specified stack.
    public func associateFleet(_ input: AssociateFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateFleetResult> {
        return client.send(operation: "AssociateFleet", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.
    public func batchAssociateUserStack(_ input: BatchAssociateUserStackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAssociateUserStackResult> {
        return client.send(operation: "BatchAssociateUserStack", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the specified users from the specified stacks.
    public func batchDisassociateUserStack(_ input: BatchDisassociateUserStackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDisassociateUserStackResult> {
        return client.send(operation: "BatchDisassociateUserStack", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.
    public func copyImage(_ input: CopyImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyImageResponse> {
        return client.send(operation: "CopyImage", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    public func createDirectoryConfig(_ input: CreateDirectoryConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectoryConfigResult> {
        return client.send(operation: "CreateDirectoryConfig", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a fleet. A fleet consists of streaming instances that run a specified image.
    public func createFleet(_ input: CreateFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFleetResult> {
        return client.send(operation: "CreateFleet", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an image builder. An image builder is a virtual machine that is used to create an image. The initial state of the builder is PENDING. When it is ready, the state is RUNNING.
    public func createImageBuilder(_ input: CreateImageBuilderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageBuilderResult> {
        return client.send(operation: "CreateImageBuilder", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a URL to start an image builder streaming session.
    public func createImageBuilderStreamingURL(_ input: CreateImageBuilderStreamingURLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageBuilderStreamingURLResult> {
        return client.send(operation: "CreateImageBuilderStreamingURL", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations. 
    public func createStack(_ input: CreateStackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStackResult> {
        return client.send(operation: "CreateStack", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup. 
    public func createStreamingURL(_ input: CreateStreamingURLRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStreamingURLResult> {
        return client.send(operation: "CreateStreamingURL", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a usage report subscription. Usage reports are generated daily.
    public func createUsageReportSubscription(_ input: CreateUsageReportSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUsageReportSubscriptionResult> {
        return client.send(operation: "CreateUsageReportSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new user in the user pool.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResult> {
        return client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.
    public func deleteDirectoryConfig(_ input: DeleteDirectoryConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectoryConfigResult> {
        return client.send(operation: "DeleteDirectoryConfig", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified fleet.
    public func deleteFleet(_ input: DeleteFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFleetResult> {
        return client.send(operation: "DeleteFleet", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.
    public func deleteImage(_ input: DeleteImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageResult> {
        return client.send(operation: "DeleteImage", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified image builder and releases the capacity.
    public func deleteImageBuilder(_ input: DeleteImageBuilderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageBuilderResult> {
        return client.send(operation: "DeleteImageBuilder", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.
    public func deleteImagePermissions(_ input: DeleteImagePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImagePermissionsResult> {
        return client.send(operation: "DeleteImagePermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.
    public func deleteStack(_ input: DeleteStackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStackResult> {
        return client.send(operation: "DeleteStack", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disables usage report generation.
    public func deleteUsageReportSubscription(_ input: DeleteUsageReportSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUsageReportSubscriptionResult> {
        return client.send(operation: "DeleteUsageReportSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a user from the user pool.
    public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResult> {
        return client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains.  Although the response syntax in this topic includes the account password, this password is not returned in the actual response.
    public func describeDirectoryConfigs(_ input: DescribeDirectoryConfigsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectoryConfigsResult> {
        return client.send(operation: "DescribeDirectoryConfigs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.
    public func describeFleets(_ input: DescribeFleetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetsResult> {
        return client.send(operation: "DescribeFleets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.
    public func describeImageBuilders(_ input: DescribeImageBuildersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageBuildersResult> {
        return client.send(operation: "DescribeImageBuilders", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. 
    public func describeImagePermissions(_ input: DescribeImagePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagePermissionsResult> {
        return client.send(operation: "DescribeImagePermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
    public func describeImages(_ input: DescribeImagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResult> {
        return client.send(operation: "DescribeImages", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.
    public func describeSessions(_ input: DescribeSessionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSessionsResult> {
        return client.send(operation: "DescribeSessions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.
    public func describeStacks(_ input: DescribeStacksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStacksResult> {
        return client.send(operation: "DescribeStacks", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more usage report subscriptions.
    public func describeUsageReportSubscriptions(_ input: DescribeUsageReportSubscriptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsageReportSubscriptionsResult> {
        return client.send(operation: "DescribeUsageReportSubscriptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:   The stack name   The user name (email address of the user associated with the stack) and the authentication type for the user  
    public func describeUserStackAssociations(_ input: DescribeUserStackAssociationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserStackAssociationsResult> {
        return client.send(operation: "DescribeUserStackAssociations", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more specified users in the user pool.
    public func describeUsers(_ input: DescribeUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResult> {
        return client.send(operation: "DescribeUsers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. 
    public func disableUser(_ input: DisableUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableUserResult> {
        return client.send(operation: "DisableUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the specified fleet from the specified stack.
    public func disassociateFleet(_ input: DisassociateFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateFleetResult> {
        return client.send(operation: "DisassociateFleet", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.
    public func enableUser(_ input: EnableUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableUserResult> {
        return client.send(operation: "EnableUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Immediately stops the specified streaming session.
    public func expireSession(_ input: ExpireSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExpireSessionResult> {
        return client.send(operation: "ExpireSession", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the name of the fleet that is associated with the specified stack.
    public func listAssociatedFleets(_ input: ListAssociatedFleetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssociatedFleetsResult> {
        return client.send(operation: "ListAssociatedFleets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the name of the stack with which the specified fleet is associated.
    public func listAssociatedStacks(_ input: ListAssociatedStacksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssociatedStacksResult> {
        return client.send(operation: "ListAssociatedStacks", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the specified fleet.
    public func startFleet(_ input: StartFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartFleetResult> {
        return client.send(operation: "StartFleet", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the specified image builder.
    public func startImageBuilder(_ input: StartImageBuilderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartImageBuilderResult> {
        return client.send(operation: "StartImageBuilder", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the specified fleet.
    public func stopFleet(_ input: StopFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopFleetResult> {
        return client.send(operation: "StopFleet", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the specified image builder.
    public func stopImageBuilder(_ input: StopImageBuilderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopImageBuilderResult> {
        return client.send(operation: "StopImageBuilder", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value. To list the current tags for your resources, use ListTagsForResource. To disassociate tags from your resources, use UntagResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates one or more specified tags from the specified AppStream 2.0 resource. To list the current tags for your resources, use ListTagsForResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    public func updateDirectoryConfig(_ input: UpdateDirectoryConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDirectoryConfigResult> {
        return client.send(operation: "UpdateDirectoryConfig", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified fleet. If the fleet is in the STOPPED state, you can update any attribute except the fleet name. If the fleet is in the RUNNING state, you can update the DisplayName, ComputeCapacity, ImageARN, ImageName, IdleDisconnectTimeoutInSeconds, and DisconnectTimeoutInSeconds attributes. If the fleet is in the STARTING or STOPPING state, you can't update it.
    public func updateFleet(_ input: UpdateFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetResult> {
        return client.send(operation: "UpdateFleet", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds or updates permissions for the specified private image. 
    public func updateImagePermissions(_ input: UpdateImagePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateImagePermissionsResult> {
        return client.send(operation: "UpdateImagePermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified fields for the specified stack.
    public func updateStack(_ input: UpdateStackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateStackResult> {
        return client.send(operation: "UpdateStack", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
