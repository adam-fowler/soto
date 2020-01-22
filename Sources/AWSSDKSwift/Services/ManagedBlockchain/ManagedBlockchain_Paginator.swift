// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ManagedBlockchain {

    ///  Returns a listing of all invitations made on the specified network.
    public func listInvitationsPaginator(_ input: ListInvitationsInput, onPage: @escaping (ListInvitationsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInvitations, tokenKey: \ListInvitationsOutput.nextToken, onPage: onPage)
    }

    ///  Returns a listing of the members in a network and properties of their configurations.
    public func listMembersPaginator(_ input: ListMembersInput, onPage: @escaping (ListMembersOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMembers, tokenKey: \ListMembersOutput.nextToken, onPage: onPage)
    }

    ///  Returns information about the networks in which the current AWS account has members.
    public func listNetworksPaginator(_ input: ListNetworksInput, onPage: @escaping (ListNetworksOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listNetworks, tokenKey: \ListNetworksOutput.nextToken, onPage: onPage)
    }

    ///  Returns information about the nodes within a network.
    public func listNodesPaginator(_ input: ListNodesInput, onPage: @escaping (ListNodesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listNodes, tokenKey: \ListNodesOutput.nextToken, onPage: onPage)
    }

    ///  Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.
    public func listProposalVotesPaginator(_ input: ListProposalVotesInput, onPage: @escaping (ListProposalVotesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProposalVotes, tokenKey: \ListProposalVotesOutput.nextToken, onPage: onPage)
    }

    ///  Returns a listing of proposals for the network.
    public func listProposalsPaginator(_ input: ListProposalsInput, onPage: @escaping (ListProposalsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProposals, tokenKey: \ListProposalsOutput.nextToken, onPage: onPage)
    }

}

extension ManagedBlockchain.ListInvitationsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListInvitationsInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension ManagedBlockchain.ListMembersInput: AWSPaginateStringToken {
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

extension ManagedBlockchain.ListNetworksInput: AWSPaginateStringToken {
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

extension ManagedBlockchain.ListNodesInput: AWSPaginateStringToken {
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

extension ManagedBlockchain.ListProposalVotesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListProposalVotesInput {
        return .init(
            maxResults: self.maxResults, 
            networkId: self.networkId, 
            nextToken: token, 
            proposalId: self.proposalId
        )

    }
}

extension ManagedBlockchain.ListProposalsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListProposalsInput {
        return .init(
            maxResults: self.maxResults, 
            networkId: self.networkId, 
            nextToken: token
        )

    }
}

