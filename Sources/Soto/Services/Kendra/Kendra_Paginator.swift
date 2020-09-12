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

extension Kendra {

    ///  Gets statistics about synchronizing Amazon Kendra with a data source.
    public func listDataSourceSyncJobsPaginator(
        _ input: ListDataSourceSyncJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDataSourceSyncJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDataSourceSyncJobs,
            tokenKey: \ListDataSourceSyncJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the data sources that you have created.
    public func listDataSourcesPaginator(
        _ input: ListDataSourcesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDataSourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDataSources,
            tokenKey: \ListDataSourcesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Amazon Kendra indexes that you have created.
    public func listIndicesPaginator(
        _ input: ListIndicesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListIndicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listIndices,
            tokenKey: \ListIndicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension Kendra.ListDataSourceSyncJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kendra.ListDataSourceSyncJobsRequest {
        return .init(
            id: self.id,
            indexId: self.indexId,
            maxResults: self.maxResults,
            nextToken: token,
            startTimeFilter: self.startTimeFilter,
            statusFilter: self.statusFilter
        )

    }
}

extension Kendra.ListDataSourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kendra.ListDataSourcesRequest {
        return .init(
            indexId: self.indexId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Kendra.ListIndicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Kendra.ListIndicesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}
