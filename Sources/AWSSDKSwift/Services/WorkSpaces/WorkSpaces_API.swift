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
Client object for interacting with AWS WorkSpaces service.

Amazon WorkSpaces Service Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft Windows and Amazon Linux desktops for your users.
*/
public struct WorkSpaces {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the WorkSpaces client
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
            amzTarget: "WorkspacesService",
            service: "workspaces",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-04-08",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [WorkSpacesErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Associates the specified IP access control group with the specified directory.
    public func associateIpGroups(_ input: AssociateIpGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateIpGroupsResult> {
        return client.send(operation: "AssociateIpGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds one or more rules to the specified IP access control group. This action gives users permission to access their WorkSpaces from the CIDR address ranges specified in the rules.
    public func authorizeIpRules(_ input: AuthorizeIpRulesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AuthorizeIpRulesResult> {
        return client.send(operation: "AuthorizeIpRules", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Copies the specified image from the specified Region to the current Region.
    public func copyWorkspaceImage(_ input: CopyWorkspaceImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyWorkspaceImageResult> {
        return client.send(operation: "CopyWorkspaceImage", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an IP access control group. An IP access control group provides you with the ability to control the IP addresses from which users are allowed to access their WorkSpaces. To specify the CIDR address ranges, add rules to your IP access control group and then associate the group with your directory. You can add rules when you create the group or at any time using AuthorizeIpRules. There is a default IP access control group associated with your directory. If you don't associate an IP access control group with your directory, the default group is used. The default group includes a default rule that allows users to access their WorkSpaces from anywhere. You cannot modify the default IP access control group for your directory.
    public func createIpGroup(_ input: CreateIpGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIpGroupResult> {
        return client.send(operation: "CreateIpGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates the specified tags for the specified WorkSpaces resource.
    public func createTags(_ input: CreateTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagsResult> {
        return client.send(operation: "CreateTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates one or more WorkSpaces. This operation is asynchronous and returns before the WorkSpaces are created.
    public func createWorkspaces(_ input: CreateWorkspacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspacesResult> {
        return client.send(operation: "CreateWorkspaces", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified IP access control group. You cannot delete an IP access control group that is associated with a directory.
    public func deleteIpGroup(_ input: DeleteIpGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIpGroupResult> {
        return client.send(operation: "DeleteIpGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified tags from the specified WorkSpaces resource.
    public func deleteTags(_ input: DeleteTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTagsResult> {
        return client.send(operation: "DeleteTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified image from your account. To delete an image, you must first delete any bundles that are associated with the image and un-share the image if it is shared with other accounts. 
    public func deleteWorkspaceImage(_ input: DeleteWorkspaceImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWorkspaceImageResult> {
        return client.send(operation: "DeleteWorkspaceImage", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deregisters the specified directory. This operation is asynchronous and returns before the WorkSpace directory is deregistered. If any WorkSpaces are registered to this directory, you must remove them before you can deregister the directory.
    public func deregisterWorkspaceDirectory(_ input: DeregisterWorkspaceDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterWorkspaceDirectoryResult> {
        return client.send(operation: "DeregisterWorkspaceDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes the configuration of Bring Your Own License (BYOL) for the specified account.
    public func describeAccount(_ input: DescribeAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountResult> {
        return client.send(operation: "DescribeAccount", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes modifications to the configuration of Bring Your Own License (BYOL) for the specified account.
    public func describeAccountModifications(_ input: DescribeAccountModificationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountModificationsResult> {
        return client.send(operation: "DescribeAccountModifications", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more specified Amazon WorkSpaces clients.
    public func describeClientProperties(_ input: DescribeClientPropertiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientPropertiesResult> {
        return client.send(operation: "DescribeClientProperties", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes one or more of your IP access control groups.
    public func describeIpGroups(_ input: DescribeIpGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpGroupsResult> {
        return client.send(operation: "DescribeIpGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified tags for the specified WorkSpaces resource.
    public func describeTags(_ input: DescribeTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsResult> {
        return client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes the available WorkSpace bundles. You can filter the results using either bundle ID or owner, but not both.
    public func describeWorkspaceBundles(_ input: DescribeWorkspaceBundlesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceBundlesResult> {
        return client.send(operation: "DescribeWorkspaceBundles", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the available directories that are registered with Amazon WorkSpaces.
    public func describeWorkspaceDirectories(_ input: DescribeWorkspaceDirectoriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceDirectoriesResult> {
        return client.send(operation: "DescribeWorkspaceDirectories", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list that describes one or more specified images, if the image identifiers are provided. Otherwise, all images in the account are described. 
    public func describeWorkspaceImages(_ input: DescribeWorkspaceImagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceImagesResult> {
        return client.send(operation: "DescribeWorkspaceImages", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the snapshots for the specified WorkSpace.
    public func describeWorkspaceSnapshots(_ input: DescribeWorkspaceSnapshotsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceSnapshotsResult> {
        return client.send(operation: "DescribeWorkspaceSnapshots", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified WorkSpaces. You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.
    public func describeWorkspaces(_ input: DescribeWorkspacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspacesResult> {
        return client.send(operation: "DescribeWorkspaces", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the connection status of the specified WorkSpaces.
    public func describeWorkspacesConnectionStatus(_ input: DescribeWorkspacesConnectionStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspacesConnectionStatusResult> {
        return client.send(operation: "DescribeWorkspacesConnectionStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the specified IP access control group from the specified directory.
    public func disassociateIpGroups(_ input: DisassociateIpGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateIpGroupsResult> {
        return client.send(operation: "DisassociateIpGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Imports the specified Windows 7 or Windows 10 Bring Your Own License (BYOL) image into Amazon WorkSpaces. The image must be an already licensed EC2 image that is in your AWS account, and you must own the image. 
    public func importWorkspaceImage(_ input: ImportWorkspaceImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportWorkspaceImageResult> {
        return client.send(operation: "ImportWorkspaceImage", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use for the network management interface when you enable Bring Your Own License (BYOL).  The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.
    public func listAvailableManagementCidrRanges(_ input: ListAvailableManagementCidrRangesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAvailableManagementCidrRangesResult> {
        return client.send(operation: "ListAvailableManagementCidrRanges", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Migrates a WorkSpace from one operating system or bundle type to another, while retaining the data on the user volume. The migration process recreates the WorkSpace by using a new root volume from the target bundle image and the user volume from the last available snapshot of the original WorkSpace. During migration, the original D:\Users\%USERNAME% user profile folder is renamed to D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated. A new D:\Users\%USERNAME%\ folder is generated by the new OS. Certain files in the old user profile are moved to the new user profile. For available migration scenarios, details about what happens during migration, and best practices, see Migrate a WorkSpace.
    public func migrateWorkspace(_ input: MigrateWorkspaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigrateWorkspaceResult> {
        return client.send(operation: "MigrateWorkspace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the configuration of Bring Your Own License (BYOL) for the specified account.
    public func modifyAccount(_ input: ModifyAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountResult> {
        return client.send(operation: "ModifyAccount", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the properties of the specified Amazon WorkSpaces clients.
    public func modifyClientProperties(_ input: ModifyClientPropertiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClientPropertiesResult> {
        return client.send(operation: "ModifyClientProperties", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the self-service WorkSpace management capabilities for your users. For more information, see Enable Self-Service WorkSpace Management Capabilities for Your Users.
    public func modifySelfservicePermissions(_ input: ModifySelfservicePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySelfservicePermissionsResult> {
        return client.send(operation: "ModifySelfservicePermissions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Specifies which devices and operating systems users can use to access their WorkSpaces. For more information, see  Control Device Access.
    public func modifyWorkspaceAccessProperties(_ input: ModifyWorkspaceAccessPropertiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkspaceAccessPropertiesResult> {
        return client.send(operation: "ModifyWorkspaceAccessProperties", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modify the default properties used to create WorkSpaces.
    public func modifyWorkspaceCreationProperties(_ input: ModifyWorkspaceCreationPropertiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkspaceCreationPropertiesResult> {
        return client.send(operation: "ModifyWorkspaceCreationProperties", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the specified WorkSpace properties.
    public func modifyWorkspaceProperties(_ input: ModifyWorkspacePropertiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkspacePropertiesResult> {
        return client.send(operation: "ModifyWorkspaceProperties", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets the state of the specified WorkSpace. To maintain a WorkSpace without being interrupted, set the WorkSpace state to ADMIN_MAINTENANCE. WorkSpaces in this state do not respond to requests to reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this state is not stopped. Users cannot log into a WorkSpace in the ADMIN_MAINTENANCE state.
    public func modifyWorkspaceState(_ input: ModifyWorkspaceStateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkspaceStateResult> {
        return client.send(operation: "ModifyWorkspaceState", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Reboots the specified WorkSpaces. You cannot reboot a WorkSpace unless its state is AVAILABLE or UNHEALTHY. This operation is asynchronous and returns before the WorkSpaces have rebooted.
    public func rebootWorkspaces(_ input: RebootWorkspacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebootWorkspacesResult> {
        return client.send(operation: "RebootWorkspaces", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Rebuilds the specified WorkSpace. You cannot rebuild a WorkSpace unless its state is AVAILABLE, ERROR, UNHEALTHY, or STOPPED. Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see Rebuild a WorkSpace. This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.
    public func rebuildWorkspaces(_ input: RebuildWorkspacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebuildWorkspacesResult> {
        return client.send(operation: "RebuildWorkspaces", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers the specified directory. This operation is asynchronous and returns before the WorkSpace directory is registered. If this is the first time you are registering a directory, you will need to create the workspaces_DefaultRole role before you can register a directory. For more information, see  Creating the workspaces_DefaultRole Role.
    public func registerWorkspaceDirectory(_ input: RegisterWorkspaceDirectoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterWorkspaceDirectoryResult> {
        return client.send(operation: "RegisterWorkspaceDirectory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Restores the specified WorkSpace to its last known healthy state. You cannot restore a WorkSpace unless its state is  AVAILABLE, ERROR, UNHEALTHY, or STOPPED. Restoring a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see Restore a WorkSpace. This operation is asynchronous and returns before the WorkSpace is completely restored.
    public func restoreWorkspace(_ input: RestoreWorkspaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreWorkspaceResult> {
        return client.send(operation: "RestoreWorkspace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes one or more rules from the specified IP access control group.
    public func revokeIpRules(_ input: RevokeIpRulesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeIpRulesResult> {
        return client.send(operation: "RevokeIpRules", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the specified WorkSpaces. You cannot start a WorkSpace unless it has a running mode of AutoStop and a state of STOPPED.
    public func startWorkspaces(_ input: StartWorkspacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartWorkspacesResult> {
        return client.send(operation: "StartWorkspaces", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Stops the specified WorkSpaces. You cannot stop a WorkSpace unless it has a running mode of AutoStop and a state of AVAILABLE, IMPAIRED, UNHEALTHY, or ERROR.
    public func stopWorkspaces(_ input: StopWorkspacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopWorkspacesResult> {
        return client.send(operation: "StopWorkspaces", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Terminates the specified WorkSpaces. Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace. You can terminate a WorkSpace that is in any state except SUSPENDED. This operation is asynchronous and returns before the WorkSpaces have been completely terminated.
    public func terminateWorkspaces(_ input: TerminateWorkspacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateWorkspacesResult> {
        return client.send(operation: "TerminateWorkspaces", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Replaces the current rules of the specified IP access control group with the specified rules.
    public func updateRulesOfIpGroup(_ input: UpdateRulesOfIpGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRulesOfIpGroupResult> {
        return client.send(operation: "UpdateRulesOfIpGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
