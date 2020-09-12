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

extension CodeGuruReviewer {

    ///   Lists all the code reviews that the customer has created in the past 90 days. 
    public func listCodeReviewsPaginator(
        _ input: ListCodeReviewsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListCodeReviewsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCodeReviews,
            tokenKey: \ListCodeReviewsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  RecommendationFeedbackSummary  objects that contain customer recommendation feedback for all CodeGuru Reviewer users. 
    public func listRecommendationFeedbackPaginator(
        _ input: ListRecommendationFeedbackRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRecommendationFeedbackResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecommendationFeedback,
            tokenKey: \ListRecommendationFeedbackResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns the list of all recommendations for a completed code review. 
    public func listRecommendationsPaginator(
        _ input: ListRecommendationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRecommendationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecommendations,
            tokenKey: \ListRecommendationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  RepositoryAssociationSummary  objects that contain summary information about a repository association. You can filter the returned list by  ProviderType ,  Name ,  State , and  Owner . 
    public func listRepositoryAssociationsPaginator(
        _ input: ListRepositoryAssociationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRepositoryAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositoryAssociations,
            tokenKey: \ListRepositoryAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension CodeGuruReviewer.ListCodeReviewsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruReviewer.ListCodeReviewsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            providerTypes: self.providerTypes,
            repositoryNames: self.repositoryNames,
            states: self.states,
            type: self.type
        )

    }
}

extension CodeGuruReviewer.ListRecommendationFeedbackRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruReviewer.ListRecommendationFeedbackRequest {
        return .init(
            codeReviewArn: self.codeReviewArn,
            maxResults: self.maxResults,
            nextToken: token,
            recommendationIds: self.recommendationIds,
            userIds: self.userIds
        )

    }
}

extension CodeGuruReviewer.ListRecommendationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruReviewer.ListRecommendationsRequest {
        return .init(
            codeReviewArn: self.codeReviewArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension CodeGuruReviewer.ListRepositoryAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruReviewer.ListRepositoryAssociationsRequest {
        return .init(
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token,
            owners: self.owners,
            providerTypes: self.providerTypes,
            states: self.states
        )

    }
}
