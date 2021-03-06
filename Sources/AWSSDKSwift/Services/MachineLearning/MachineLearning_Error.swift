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

/// Error enum for MachineLearning
public enum MachineLearningErrorType: AWSErrorType {
    case idempotentParameterMismatchException(message: String?)
    case internalServerException(message: String?)
    case invalidInputException(message: String?)
    case invalidTagException(message: String?)
    case limitExceededException(message: String?)
    case predictorNotMountedException(message: String?)
    case resourceNotFoundException(message: String?)
    case tagLimitExceededException(message: String?)
}

extension MachineLearningErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "PredictorNotMountedException":
            self = .predictorNotMountedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        default:
            return nil
        }
    }
}

extension MachineLearningErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .idempotentParameterMismatchException(let message):
            return "IdempotentParameterMismatchException: \(message ?? "")"
        case .internalServerException(let message):
            return "InternalServerException: \(message ?? "")"
        case .invalidInputException(let message):
            return "InvalidInputException: \(message ?? "")"
        case .invalidTagException(let message):
            return "InvalidTagException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .predictorNotMountedException(let message):
            return "PredictorNotMountedException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tagLimitExceededException(let message):
            return "TagLimitExceededException: \(message ?? "")"
        }
    }
}
