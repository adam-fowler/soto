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

extension IVS {

    ///  Gets summary information about all channels in your account, in the AWS region where the API request is processed. This list can be filtered to match a specified string.
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListChannelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannels,
            tokenKey: \ListChannelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets summary information about stream keys for the specified channel.
    public func listStreamKeysPaginator(
        _ input: ListStreamKeysRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStreamKeysResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStreamKeys,
            tokenKey: \ListStreamKeysResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets summary information about live streams in your account, in the AWS region where the API request is processed.
    public func listStreamsPaginator(
        _ input: ListStreamsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStreamsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStreams,
            tokenKey: \ListStreamsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about AWS tags for the specified ARN.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            tokenKey: \ListTagsForResourceResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension IVS.ListChannelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVS.ListChannelsRequest {
        return .init(
            filterByName: self.filterByName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension IVS.ListStreamKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVS.ListStreamKeysRequest {
        return .init(
            channelArn: self.channelArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension IVS.ListStreamsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVS.ListStreamsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension IVS.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IVS.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )

    }
}

