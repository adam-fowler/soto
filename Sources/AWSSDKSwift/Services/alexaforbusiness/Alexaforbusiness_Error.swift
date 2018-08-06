// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Alexaforbusiness
public enum AlexaforbusinessError: AWSErrorType {
    case notFoundException(message: String?)
    case resourceInUseException(message: String?)
    case limitExceededException(message: String?)
    case alreadyExistsException(message: String?)
    case deviceNotRegisteredException(message: String?)
    case nameInUseException(message: String?)
    case invalidUserStatusException(message: String?)
}

extension AlexaforbusinessError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "DeviceNotRegisteredException":
            self = .deviceNotRegisteredException(message: message)
        case "NameInUseException":
            self = .nameInUseException(message: message)
        case "InvalidUserStatusException":
            self = .invalidUserStatusException(message: message)
        default:
            return nil
        }
    }
}