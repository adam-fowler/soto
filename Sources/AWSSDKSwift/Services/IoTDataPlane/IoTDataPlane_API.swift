// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS IoT AWS IoT-Data enables secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. It implements a broker for applications and things to publish messages over HTTP (Publish) and retrieve, update, and delete thing shadows. A thing shadow is a persistent representation of your things and their state in the AWS cloud.
*/
public struct IoTDataPlane {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "data.iot",
            signingName: "iotdata",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2015-05-28",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoTDataPlaneErrorType.self]
        )
    }

    ///  Deletes the thing shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.
    public func deleteThingShadow(_ input: DeleteThingShadowRequest) throws -> Future<DeleteThingShadowResponse> {
        return try client.send(operation: "DeleteThingShadow", path: "/things/{thingName}/shadow", httpMethod: "DELETE", input: input)
    }

    ///  Gets the thing shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.
    public func getThingShadow(_ input: GetThingShadowRequest) throws -> Future<GetThingShadowResponse> {
        return try client.send(operation: "GetThingShadow", path: "/things/{thingName}/shadow", httpMethod: "GET", input: input)
    }

    ///  Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.
    @discardableResult public func publish(_ input: PublishRequest) throws -> Future<Void> {
        return try client.send(operation: "Publish", path: "/topics/{topic}", httpMethod: "POST", input: input)
    }

    ///  Updates the thing shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.
    public func updateThingShadow(_ input: UpdateThingShadowRequest) throws -> Future<UpdateThingShadowResponse> {
        return try client.send(operation: "UpdateThingShadow", path: "/things/{thingName}/shadow", httpMethod: "POST", input: input)
    }
}
