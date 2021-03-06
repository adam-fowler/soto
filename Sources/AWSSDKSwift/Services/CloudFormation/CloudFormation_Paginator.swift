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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

// MARK: Paginators

extension CloudFormation {

    ///  Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see AWS CloudFormation Limits in the AWS CloudFormation User Guide.
    public func describeAccountLimitsPaginator(
        _ input: DescribeAccountLimitsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeAccountLimitsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeAccountLimits,
            tokenKey: \DescribeAccountLimitsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to Stacks in the AWS CloudFormation User Guide.  You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID). 
    public func describeStackEventsPaginator(
        _ input: DescribeStackEventsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeStackEventsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeStackEvents,
            tokenKey: \DescribeStackEventsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns drift information for the resources that have been checked for drift in the specified stack. This includes actual and expected configuration values for resources where AWS CloudFormation detects configuration drift. For a given stack, there will be one StackResourceDrift for each stack resource that has been checked for drift. Resources that have not yet been checked for drift are not included. Resources that do not currently support drift detection are not checked, and so not included. For a list of resources that support drift detection, see Resources that Support Drift Detection. Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all supported resources for a given stack.
    public func describeStackResourceDriftsPaginator(
        _ input: DescribeStackResourceDriftsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeStackResourceDriftsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeStackResourceDrifts,
            tokenKey: \DescribeStackResourceDriftsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.  If the stack does not exist, an AmazonCloudFormationException is returned. 
    public func describeStacksPaginator(
        _ input: DescribeStacksInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeStacksOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeStacks,
            tokenKey: \DescribeStacksOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the CREATE_IN_PROGRESS or CREATE_PENDING state.
    public func listChangeSetsPaginator(
        _ input: ListChangeSetsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListChangeSetsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChangeSets,
            tokenKey: \ListChangeSetsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all exported output values in the account and Region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the  Fn::ImportValue  function.  For more information, see  AWS CloudFormation Export Stack Output Values.
    public func listExportsPaginator(
        _ input: ListExportsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListExportsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listExports,
            tokenKey: \ListExportsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.  For more information about importing an exported output value, see the  Fn::ImportValue  function. 
    public func listImportsPaginator(
        _ input: ListImportsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListImportsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImports,
            tokenKey: \ListImportsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or Region, or that have a specific status.
    public func listStackInstancesPaginator(
        _ input: ListStackInstancesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStackInstancesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStackInstances,
            tokenKey: \ListStackInstancesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns descriptions of all resources of the specified stack. For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.
    public func listStackResourcesPaginator(
        _ input: ListStackResourcesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStackResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStackResources,
            tokenKey: \ListStackResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns summary information about the results of a stack set operation. 
    public func listStackSetOperationResultsPaginator(
        _ input: ListStackSetOperationResultsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStackSetOperationResultsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStackSetOperationResults,
            tokenKey: \ListStackSetOperationResultsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns summary information about operations performed on a stack set. 
    public func listStackSetOperationsPaginator(
        _ input: ListStackSetOperationsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStackSetOperationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStackSetOperations,
            tokenKey: \ListStackSetOperationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns summary information about stack sets that are associated with the user.
    public func listStackSetsPaginator(
        _ input: ListStackSetsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStackSetsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStackSets,
            tokenKey: \ListStackSetsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).
    public func listStacksPaginator(
        _ input: ListStacksInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStacksOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStacks,
            tokenKey: \ListStacksOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of registration tokens for the specified type(s).
    public func listTypeRegistrationsPaginator(
        _ input: ListTypeRegistrationsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTypeRegistrationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTypeRegistrations,
            tokenKey: \ListTypeRegistrationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns summary information about the versions of a type.
    public func listTypeVersionsPaginator(
        _ input: ListTypeVersionsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTypeVersionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTypeVersions,
            tokenKey: \ListTypeVersionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns summary information about types that have been registered with CloudFormation.
    public func listTypesPaginator(
        _ input: ListTypesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTypesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTypes,
            tokenKey: \ListTypesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension CloudFormation.DescribeAccountLimitsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.DescribeAccountLimitsInput {
        return .init(
            nextToken: token
        )

    }
}

extension CloudFormation.DescribeStackEventsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.DescribeStackEventsInput {
        return .init(
            nextToken: token,
            stackName: self.stackName
        )

    }
}

extension CloudFormation.DescribeStackResourceDriftsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.DescribeStackResourceDriftsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            stackName: self.stackName,
            stackResourceDriftStatusFilters: self.stackResourceDriftStatusFilters
        )

    }
}

extension CloudFormation.DescribeStacksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.DescribeStacksInput {
        return .init(
            nextToken: token,
            stackName: self.stackName
        )

    }
}

extension CloudFormation.ListChangeSetsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListChangeSetsInput {
        return .init(
            nextToken: token,
            stackName: self.stackName
        )

    }
}

extension CloudFormation.ListExportsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListExportsInput {
        return .init(
            nextToken: token
        )

    }
}

extension CloudFormation.ListImportsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListImportsInput {
        return .init(
            exportName: self.exportName,
            nextToken: token
        )

    }
}

extension CloudFormation.ListStackInstancesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListStackInstancesInput {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            stackInstanceAccount: self.stackInstanceAccount,
            stackInstanceRegion: self.stackInstanceRegion,
            stackSetName: self.stackSetName
        )

    }
}

extension CloudFormation.ListStackResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListStackResourcesInput {
        return .init(
            nextToken: token,
            stackName: self.stackName
        )

    }
}

extension CloudFormation.ListStackSetOperationResultsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListStackSetOperationResultsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            operationId: self.operationId,
            stackSetName: self.stackSetName
        )

    }
}

extension CloudFormation.ListStackSetOperationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListStackSetOperationsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            stackSetName: self.stackSetName
        )

    }
}

extension CloudFormation.ListStackSetsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListStackSetsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )

    }
}

extension CloudFormation.ListStacksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListStacksInput {
        return .init(
            nextToken: token,
            stackStatusFilter: self.stackStatusFilter
        )

    }
}

extension CloudFormation.ListTypeRegistrationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListTypeRegistrationsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            registrationStatusFilter: self.registrationStatusFilter,
            type: self.type,
            typeArn: self.typeArn,
            typeName: self.typeName
        )

    }
}

extension CloudFormation.ListTypeVersionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListTypeVersionsInput {
        return .init(
            arn: self.arn,
            deprecatedStatus: self.deprecatedStatus,
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type,
            typeName: self.typeName
        )

    }
}

extension CloudFormation.ListTypesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFormation.ListTypesInput {
        return .init(
            deprecatedStatus: self.deprecatedStatus,
            maxResults: self.maxResults,
            nextToken: token,
            provisioningType: self.provisioningType,
            visibility: self.visibility
        )

    }
}

