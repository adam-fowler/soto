//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension ManagedBlockchain {

    ///  Returns a listing of all invitations made on the specified network.
    public func listInvitationsPaginator(
        _ input: ListInvitationsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListInvitationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInvitations,
            tokenKey: \ListInvitationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a listing of the members in a network and properties of their configurations.
    public func listMembersPaginator(
        _ input: ListMembersInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListMembersOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMembers,
            tokenKey: \ListMembersOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about the networks in which the current AWS account has members.
    public func listNetworksPaginator(
        _ input: ListNetworksInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListNetworksOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNetworks,
            tokenKey: \ListNetworksOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about the nodes within a network.
    public func listNodesPaginator(
        _ input: ListNodesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListNodesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNodes,
            tokenKey: \ListNodesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.
    public func listProposalVotesPaginator(
        _ input: ListProposalVotesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListProposalVotesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProposalVotes,
            tokenKey: \ListProposalVotesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a listing of proposals for the network.
    public func listProposalsPaginator(
        _ input: ListProposalsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListProposalsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProposals,
            tokenKey: \ListProposalsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension ManagedBlockchain.ListInvitationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListInvitationsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ManagedBlockchain.ListMembersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListMembersInput {
        return .init(
            isOwned: self.isOwned,
            maxResults: self.maxResults,
            name: self.name,
            networkId: self.networkId,
            nextToken: token,
            status: self.status
        )

    }
}

extension ManagedBlockchain.ListNetworksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListNetworksInput {
        return .init(
            framework: self.framework,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            status: self.status
        )

    }
}

extension ManagedBlockchain.ListNodesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListNodesInput {
        return .init(
            maxResults: self.maxResults,
            memberId: self.memberId,
            networkId: self.networkId,
            nextToken: token,
            status: self.status
        )

    }
}

extension ManagedBlockchain.ListProposalVotesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListProposalVotesInput {
        return .init(
            maxResults: self.maxResults,
            networkId: self.networkId,
            nextToken: token,
            proposalId: self.proposalId
        )

    }
}

extension ManagedBlockchain.ListProposalsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListProposalsInput {
        return .init(
            maxResults: self.maxResults,
            networkId: self.networkId,
            nextToken: token
        )

    }
}
