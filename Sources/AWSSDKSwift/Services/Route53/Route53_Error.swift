// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Route53
public enum Route53ErrorType: AWSErrorType {
    case concurrentModification(message: String?)
    case conflictingDomainExists(message: String?)
    case conflictingTypes(message: String?)
    case delegationSetAlreadyCreated(message: String?)
    case delegationSetAlreadyReusable(message: String?)
    case delegationSetInUse(message: String?)
    case delegationSetNotAvailable(message: String?)
    case delegationSetNotReusable(message: String?)
    case healthCheckAlreadyExists(message: String?)
    case healthCheckInUse(message: String?)
    case healthCheckVersionMismatch(message: String?)
    case hostedZoneAlreadyExists(message: String?)
    case hostedZoneNotEmpty(message: String?)
    case hostedZoneNotFound(message: String?)
    case hostedZoneNotPrivate(message: String?)
    case incompatibleVersion(message: String?)
    case insufficientCloudWatchLogsResourcePolicy(message: String?)
    case invalidArgument(message: String?)
    case invalidChangeBatch(message: String?)
    case invalidDomainName(message: String?)
    case invalidInput(message: String?)
    case invalidPaginationToken(message: String?)
    case invalidTrafficPolicyDocument(message: String?)
    case invalidVPCId(message: String?)
    case lastVPCAssociation(message: String?)
    case limitsExceeded(message: String?)
    case noSuchChange(message: String?)
    case noSuchCloudWatchLogsLogGroup(message: String?)
    case noSuchDelegationSet(message: String?)
    case noSuchGeoLocation(message: String?)
    case noSuchHealthCheck(message: String?)
    case noSuchHostedZone(message: String?)
    case noSuchQueryLoggingConfig(message: String?)
    case noSuchTrafficPolicy(message: String?)
    case noSuchTrafficPolicyInstance(message: String?)
    case notAuthorizedException(message: String?)
    case priorRequestNotComplete(message: String?)
    case publicZoneVPCAssociation(message: String?)
    case queryLoggingConfigAlreadyExists(message: String?)
    case throttlingException(message: String?)
    case tooManyHealthChecks(message: String?)
    case tooManyHostedZones(message: String?)
    case tooManyTrafficPolicies(message: String?)
    case tooManyTrafficPolicyInstances(message: String?)
    case tooManyTrafficPolicyVersionsForCurrentPolicy(message: String?)
    case tooManyVPCAssociationAuthorizations(message: String?)
    case trafficPolicyAlreadyExists(message: String?)
    case trafficPolicyInUse(message: String?)
    case trafficPolicyInstanceAlreadyExists(message: String?)
    case vPCAssociationAuthorizationNotFound(message: String?)
    case vPCAssociationNotFound(message: String?)
}

extension Route53ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModification":
            self = .concurrentModification(message: message)
        case "ConflictingDomainExists":
            self = .conflictingDomainExists(message: message)
        case "ConflictingTypes":
            self = .conflictingTypes(message: message)
        case "DelegationSetAlreadyCreated":
            self = .delegationSetAlreadyCreated(message: message)
        case "DelegationSetAlreadyReusable":
            self = .delegationSetAlreadyReusable(message: message)
        case "DelegationSetInUse":
            self = .delegationSetInUse(message: message)
        case "DelegationSetNotAvailable":
            self = .delegationSetNotAvailable(message: message)
        case "DelegationSetNotReusable":
            self = .delegationSetNotReusable(message: message)
        case "HealthCheckAlreadyExists":
            self = .healthCheckAlreadyExists(message: message)
        case "HealthCheckInUse":
            self = .healthCheckInUse(message: message)
        case "HealthCheckVersionMismatch":
            self = .healthCheckVersionMismatch(message: message)
        case "HostedZoneAlreadyExists":
            self = .hostedZoneAlreadyExists(message: message)
        case "HostedZoneNotEmpty":
            self = .hostedZoneNotEmpty(message: message)
        case "HostedZoneNotFound":
            self = .hostedZoneNotFound(message: message)
        case "HostedZoneNotPrivate":
            self = .hostedZoneNotPrivate(message: message)
        case "IncompatibleVersion":
            self = .incompatibleVersion(message: message)
        case "InsufficientCloudWatchLogsResourcePolicy":
            self = .insufficientCloudWatchLogsResourcePolicy(message: message)
        case "InvalidArgument":
            self = .invalidArgument(message: message)
        case "InvalidChangeBatch":
            self = .invalidChangeBatch(message: message)
        case "InvalidDomainName":
            self = .invalidDomainName(message: message)
        case "InvalidInput":
            self = .invalidInput(message: message)
        case "InvalidPaginationToken":
            self = .invalidPaginationToken(message: message)
        case "InvalidTrafficPolicyDocument":
            self = .invalidTrafficPolicyDocument(message: message)
        case "InvalidVPCId":
            self = .invalidVPCId(message: message)
        case "LastVPCAssociation":
            self = .lastVPCAssociation(message: message)
        case "LimitsExceeded":
            self = .limitsExceeded(message: message)
        case "NoSuchChange":
            self = .noSuchChange(message: message)
        case "NoSuchCloudWatchLogsLogGroup":
            self = .noSuchCloudWatchLogsLogGroup(message: message)
        case "NoSuchDelegationSet":
            self = .noSuchDelegationSet(message: message)
        case "NoSuchGeoLocation":
            self = .noSuchGeoLocation(message: message)
        case "NoSuchHealthCheck":
            self = .noSuchHealthCheck(message: message)
        case "NoSuchHostedZone":
            self = .noSuchHostedZone(message: message)
        case "NoSuchQueryLoggingConfig":
            self = .noSuchQueryLoggingConfig(message: message)
        case "NoSuchTrafficPolicy":
            self = .noSuchTrafficPolicy(message: message)
        case "NoSuchTrafficPolicyInstance":
            self = .noSuchTrafficPolicyInstance(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "PriorRequestNotComplete":
            self = .priorRequestNotComplete(message: message)
        case "PublicZoneVPCAssociation":
            self = .publicZoneVPCAssociation(message: message)
        case "QueryLoggingConfigAlreadyExists":
            self = .queryLoggingConfigAlreadyExists(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "TooManyHealthChecks":
            self = .tooManyHealthChecks(message: message)
        case "TooManyHostedZones":
            self = .tooManyHostedZones(message: message)
        case "TooManyTrafficPolicies":
            self = .tooManyTrafficPolicies(message: message)
        case "TooManyTrafficPolicyInstances":
            self = .tooManyTrafficPolicyInstances(message: message)
        case "TooManyTrafficPolicyVersionsForCurrentPolicy":
            self = .tooManyTrafficPolicyVersionsForCurrentPolicy(message: message)
        case "TooManyVPCAssociationAuthorizations":
            self = .tooManyVPCAssociationAuthorizations(message: message)
        case "TrafficPolicyAlreadyExists":
            self = .trafficPolicyAlreadyExists(message: message)
        case "TrafficPolicyInUse":
            self = .trafficPolicyInUse(message: message)
        case "TrafficPolicyInstanceAlreadyExists":
            self = .trafficPolicyInstanceAlreadyExists(message: message)
        case "VPCAssociationAuthorizationNotFound":
            self = .vPCAssociationAuthorizationNotFound(message: message)
        case "VPCAssociationNotFound":
            self = .vPCAssociationNotFound(message: message)
        default:
            return nil
        }
    }
}

extension Route53ErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .concurrentModification(let message):
            return "ConcurrentModification: \(message ?? "")"
        case .conflictingDomainExists(let message):
            return "ConflictingDomainExists: \(message ?? "")"
        case .conflictingTypes(let message):
            return "ConflictingTypes: \(message ?? "")"
        case .delegationSetAlreadyCreated(let message):
            return "DelegationSetAlreadyCreated: \(message ?? "")"
        case .delegationSetAlreadyReusable(let message):
            return "DelegationSetAlreadyReusable: \(message ?? "")"
        case .delegationSetInUse(let message):
            return "DelegationSetInUse: \(message ?? "")"
        case .delegationSetNotAvailable(let message):
            return "DelegationSetNotAvailable: \(message ?? "")"
        case .delegationSetNotReusable(let message):
            return "DelegationSetNotReusable: \(message ?? "")"
        case .healthCheckAlreadyExists(let message):
            return "HealthCheckAlreadyExists: \(message ?? "")"
        case .healthCheckInUse(let message):
            return "HealthCheckInUse: \(message ?? "")"
        case .healthCheckVersionMismatch(let message):
            return "HealthCheckVersionMismatch: \(message ?? "")"
        case .hostedZoneAlreadyExists(let message):
            return "HostedZoneAlreadyExists: \(message ?? "")"
        case .hostedZoneNotEmpty(let message):
            return "HostedZoneNotEmpty: \(message ?? "")"
        case .hostedZoneNotFound(let message):
            return "HostedZoneNotFound: \(message ?? "")"
        case .hostedZoneNotPrivate(let message):
            return "HostedZoneNotPrivate: \(message ?? "")"
        case .incompatibleVersion(let message):
            return "IncompatibleVersion: \(message ?? "")"
        case .insufficientCloudWatchLogsResourcePolicy(let message):
            return "InsufficientCloudWatchLogsResourcePolicy: \(message ?? "")"
        case .invalidArgument(let message):
            return "InvalidArgument: \(message ?? "")"
        case .invalidChangeBatch(let message):
            return "InvalidChangeBatch: \(message ?? "")"
        case .invalidDomainName(let message):
            return "InvalidDomainName: \(message ?? "")"
        case .invalidInput(let message):
            return "InvalidInput: \(message ?? "")"
        case .invalidPaginationToken(let message):
            return "InvalidPaginationToken: \(message ?? "")"
        case .invalidTrafficPolicyDocument(let message):
            return "InvalidTrafficPolicyDocument: \(message ?? "")"
        case .invalidVPCId(let message):
            return "InvalidVPCId: \(message ?? "")"
        case .lastVPCAssociation(let message):
            return "LastVPCAssociation: \(message ?? "")"
        case .limitsExceeded(let message):
            return "LimitsExceeded: \(message ?? "")"
        case .noSuchChange(let message):
            return "NoSuchChange: \(message ?? "")"
        case .noSuchCloudWatchLogsLogGroup(let message):
            return "NoSuchCloudWatchLogsLogGroup: \(message ?? "")"
        case .noSuchDelegationSet(let message):
            return "NoSuchDelegationSet: \(message ?? "")"
        case .noSuchGeoLocation(let message):
            return "NoSuchGeoLocation: \(message ?? "")"
        case .noSuchHealthCheck(let message):
            return "NoSuchHealthCheck: \(message ?? "")"
        case .noSuchHostedZone(let message):
            return "NoSuchHostedZone: \(message ?? "")"
        case .noSuchQueryLoggingConfig(let message):
            return "NoSuchQueryLoggingConfig: \(message ?? "")"
        case .noSuchTrafficPolicy(let message):
            return "NoSuchTrafficPolicy: \(message ?? "")"
        case .noSuchTrafficPolicyInstance(let message):
            return "NoSuchTrafficPolicyInstance: \(message ?? "")"
        case .notAuthorizedException(let message):
            return "NotAuthorizedException: \(message ?? "")"
        case .priorRequestNotComplete(let message):
            return "PriorRequestNotComplete: \(message ?? "")"
        case .publicZoneVPCAssociation(let message):
            return "PublicZoneVPCAssociation: \(message ?? "")"
        case .queryLoggingConfigAlreadyExists(let message):
            return "QueryLoggingConfigAlreadyExists: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .tooManyHealthChecks(let message):
            return "TooManyHealthChecks: \(message ?? "")"
        case .tooManyHostedZones(let message):
            return "TooManyHostedZones: \(message ?? "")"
        case .tooManyTrafficPolicies(let message):
            return "TooManyTrafficPolicies: \(message ?? "")"
        case .tooManyTrafficPolicyInstances(let message):
            return "TooManyTrafficPolicyInstances: \(message ?? "")"
        case .tooManyTrafficPolicyVersionsForCurrentPolicy(let message):
            return "TooManyTrafficPolicyVersionsForCurrentPolicy: \(message ?? "")"
        case .tooManyVPCAssociationAuthorizations(let message):
            return "TooManyVPCAssociationAuthorizations: \(message ?? "")"
        case .trafficPolicyAlreadyExists(let message):
            return "TrafficPolicyAlreadyExists: \(message ?? "")"
        case .trafficPolicyInUse(let message):
            return "TrafficPolicyInUse: \(message ?? "")"
        case .trafficPolicyInstanceAlreadyExists(let message):
            return "TrafficPolicyInstanceAlreadyExists: \(message ?? "")"
        case .vPCAssociationAuthorizationNotFound(let message):
            return "VPCAssociationAuthorizationNotFound: \(message ?? "")"
        case .vPCAssociationNotFound(let message):
            return "VPCAssociationNotFound: \(message ?? "")"
        }
    }
}
