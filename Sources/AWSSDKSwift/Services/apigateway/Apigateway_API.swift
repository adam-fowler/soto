// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon API Gateway Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.
*/
public struct Apigateway {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "apigateway",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2015-07-09",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ApigatewayError.self]
        )
    }

    ///  Sets up a method's integration.
    public func putIntegration(_ input: PutIntegrationRequest) throws -> Integration {
        return try client.send(operation: "PutIntegration", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", httpMethod: "PUT", input: input)
    }

    ///  Gets information about a Deployment resource.
    public func getDeployment(_ input: GetDeploymentRequest) throws -> Deployment {
        return try client.send(operation: "GetDeployment", path: "/restapis/{restapi_id}/deployments/{deployment_id}", httpMethod: "GET", input: input)
    }

    ///  Describe a BasePathMapping resource.
    public func getBasePathMapping(_ input: GetBasePathMappingRequest) throws -> BasePathMapping {
        return try client.send(operation: "GetBasePathMapping", path: "/domainnames/{domain_name}/basepathmappings/{base_path}", httpMethod: "GET", input: input)
    }

    public func getDocumentationVersion(_ input: GetDocumentationVersionRequest) throws -> DocumentationVersion {
        return try client.send(operation: "GetDocumentationVersion", path: "/restapis/{restapi_id}/documentation/versions/{doc_version}", httpMethod: "GET", input: input)
    }

    ///  Gets information about the current Account resource.
    public func getAccount(_ input: GetAccountRequest) throws -> Account {
        return try client.send(operation: "GetAccount", path: "/account", httpMethod: "GET", input: input)
    }

    ///  Gets information about the current ApiKeys resource.
    public func getApiKeys(_ input: GetApiKeysRequest) throws -> ApiKeys {
        return try client.send(operation: "GetApiKeys", path: "/apikeys", httpMethod: "GET", input: input)
    }

    ///  Represents a put integration.
    public func putIntegrationResponse(_ input: PutIntegrationResponseRequest) throws -> IntegrationResponse {
        return try client.send(operation: "PutIntegrationResponse", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", httpMethod: "PUT", input: input)
    }

    ///  Changes information about a Resource resource.
    public func updateResource(_ input: UpdateResourceRequest) throws -> Resource {
        return try client.send(operation: "UpdateResource", path: "/restapis/{restapi_id}/resources/{resource_id}", httpMethod: "PATCH", input: input)
    }

    ///  Deletes an existing VpcLink of a specified identifier.
    public func deleteVpcLink(_ input: DeleteVpcLinkRequest) throws {
        _ = try client.send(operation: "DeleteVpcLink", path: "/vpclinks/{vpclink_id}", httpMethod: "DELETE", input: input)
    }

    ///  Gets the Tags collection for a given resource.
    public func getTags(_ input: GetTagsRequest) throws -> Tags {
        return try client.send(operation: "GetTags", path: "/tags/{resource_arn}", httpMethod: "GET", input: input)
    }

    public func deleteDocumentationVersion(_ input: DeleteDocumentationVersionRequest) throws {
        _ = try client.send(operation: "DeleteDocumentationVersion", path: "/restapis/{restapi_id}/documentation/versions/{doc_version}", httpMethod: "DELETE", input: input)
    }

    ///  Represents a delete integration.
    public func deleteIntegration(_ input: DeleteIntegrationRequest) throws {
        _ = try client.send(operation: "DeleteIntegration", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", httpMethod: "DELETE", input: input)
    }

    public func updateDocumentationPart(_ input: UpdateDocumentationPartRequest) throws -> DocumentationPart {
        return try client.send(operation: "UpdateDocumentationPart", path: "/restapis/{restapi_id}/documentation/parts/{part_id}", httpMethod: "PATCH", input: input)
    }

    ///  Gets a usage plan key of a given key identifier.
    public func getUsagePlanKey(_ input: GetUsagePlanKeyRequest) throws -> UsagePlanKey {
        return try client.send(operation: "GetUsagePlanKey", path: "/usageplans/{usageplanId}/keys/{keyId}", httpMethod: "GET", input: input)
    }

    public func createDocumentationPart(_ input: CreateDocumentationPartRequest) throws -> DocumentationPart {
        return try client.send(operation: "CreateDocumentationPart", path: "/restapis/{restapi_id}/documentation/parts", httpMethod: "POST", input: input)
    }

    ///  Add a method to an existing Resource resource.
    public func putMethod(_ input: PutMethodRequest) throws -> Method {
        return try client.send(operation: "PutMethod", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", httpMethod: "PUT", input: input)
    }

    ///  Describe an existing Method resource.
    public func getMethod(_ input: GetMethodRequest) throws -> Method {
        return try client.send(operation: "GetMethod", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", httpMethod: "GET", input: input)
    }

    ///  Updates an existing Authorizer resource. AWS CLI
    public func updateAuthorizer(_ input: UpdateAuthorizerRequest) throws -> Authorizer {
        return try client.send(operation: "UpdateAuthorizer", path: "/restapis/{restapi_id}/authorizers/{authorizer_id}", httpMethod: "PATCH", input: input)
    }

    ///  Changes information about the BasePathMapping resource.
    public func updateBasePathMapping(_ input: UpdateBasePathMappingRequest) throws -> BasePathMapping {
        return try client.send(operation: "UpdateBasePathMapping", path: "/domainnames/{domain_name}/basepathmappings/{base_path}", httpMethod: "PATCH", input: input)
    }

    public func getDocumentationPart(_ input: GetDocumentationPartRequest) throws -> DocumentationPart {
        return try client.send(operation: "GetDocumentationPart", path: "/restapis/{restapi_id}/documentation/parts/{part_id}", httpMethod: "GET", input: input)
    }

    ///  Gets a usage plan of a given plan identifier.
    public func getUsagePlan(_ input: GetUsagePlanRequest) throws -> UsagePlan {
        return try client.send(operation: "GetUsagePlan", path: "/usageplans/{usageplanId}", httpMethod: "GET", input: input)
    }

    ///  Deletes an existing Method resource.
    public func deleteMethod(_ input: DeleteMethodRequest) throws {
        _ = try client.send(operation: "DeleteMethod", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", httpMethod: "DELETE", input: input)
    }

    ///  Gets information about one or more Stage resources.
    public func getStages(_ input: GetStagesRequest) throws -> Stages {
        return try client.send(operation: "GetStages", path: "/restapis/{restapi_id}/stages", httpMethod: "GET", input: input)
    }

    ///  Generates a sample mapping template that can be used to transform a payload into the structure of a model.
    public func getModelTemplate(_ input: GetModelTemplateRequest) throws -> Template {
        return try client.send(operation: "GetModelTemplate", path: "/restapis/{restapi_id}/models/{model_name}/default_template", httpMethod: "GET", input: input)
    }

    ///  Deletes a Stage resource.
    public func deleteStage(_ input: DeleteStageRequest) throws {
        _ = try client.send(operation: "DeleteStage", path: "/restapis/{restapi_id}/stages/{stage_name}", httpMethod: "DELETE", input: input)
    }

    ///  Generates a ClientCertificate resource.
    public func generateClientCertificate(_ input: GenerateClientCertificateRequest) throws -> ClientCertificate {
        return try client.send(operation: "GenerateClientCertificate", path: "/clientcertificates", httpMethod: "POST", input: input)
    }

    ///  Adds or updates a tag on a given resource.
    public func tagResource(_ input: TagResourceRequest) throws {
        _ = try client.send(operation: "TagResource", path: "/tags/{resource_arn}", httpMethod: "PUT", input: input)
    }

    ///  Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload. 
    public func createUsagePlan(_ input: CreateUsagePlanRequest) throws -> UsagePlan {
        return try client.send(operation: "CreateUsagePlan", path: "/usageplans", httpMethod: "POST", input: input)
    }

    ///  Describes existing Models defined for a RestApi resource.
    public func getModels(_ input: GetModelsRequest) throws -> Models {
        return try client.send(operation: "GetModels", path: "/restapis/{restapi_id}/models", httpMethod: "GET", input: input)
    }

    ///  Gets information about the current ApiKey resource.
    public func getApiKey(_ input: GetApiKeyRequest) throws -> ApiKey {
        return try client.send(operation: "GetApiKey", path: "/apikeys/{api_Key}", httpMethod: "GET", input: input)
    }

    ///  Simulate the execution of a Method in your RestApi with headers, parameters, and an incoming request body.
    public func testInvokeMethod(_ input: TestInvokeMethodRequest) throws -> TestInvokeMethodResponse {
        return try client.send(operation: "TestInvokeMethod", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", httpMethod: "POST", input: input)
    }

    ///  Changes information about a model.
    public func updateModel(_ input: UpdateModelRequest) throws -> Model {
        return try client.send(operation: "UpdateModel", path: "/restapis/{restapi_id}/models/{model_name}", httpMethod: "PATCH", input: input)
    }

    ///  Represents a collection of DomainName resources.
    public func getDomainNames(_ input: GetDomainNamesRequest) throws -> DomainNames {
        return try client.send(operation: "GetDomainNames", path: "/domainnames", httpMethod: "GET", input: input)
    }

    ///  Updates a RequestValidator of a given RestApi.
    public func updateRequestValidator(_ input: UpdateRequestValidatorRequest) throws -> RequestValidator {
        return try client.send(operation: "UpdateRequestValidator", path: "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", httpMethod: "PATCH", input: input)
    }

    ///  Adds a MethodResponse to an existing Method resource.
    public func putMethodResponse(_ input: PutMethodResponseRequest) throws -> MethodResponse {
        return try client.send(operation: "PutMethodResponse", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", httpMethod: "PUT", input: input)
    }

    public func getSdkTypes(_ input: GetSdkTypesRequest) throws -> SdkTypes {
        return try client.send(operation: "GetSdkTypes", path: "/sdktypes", httpMethod: "GET", input: input)
    }

    ///  Changes information about the DomainName resource.
    public func updateDomainName(_ input: UpdateDomainNameRequest) throws -> DomainName {
        return try client.send(operation: "UpdateDomainName", path: "/domainnames/{domain_name}", httpMethod: "PATCH", input: input)
    }

    ///  Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
    public func putGatewayResponse(_ input: PutGatewayResponseRequest) throws -> GatewayResponse {
        return try client.send(operation: "PutGatewayResponse", path: "/restapis/{restapi_id}/gatewayresponses/{response_type}", httpMethod: "PUT", input: input)
    }

    ///  Lists the RestApi resource in the collection.
    public func getRestApi(_ input: GetRestApiRequest) throws -> RestApi {
        return try client.send(operation: "GetRestApi", path: "/restapis/{restapi_id}", httpMethod: "GET", input: input)
    }

    public func getDocumentationVersions(_ input: GetDocumentationVersionsRequest) throws -> DocumentationVersions {
        return try client.send(operation: "GetDocumentationVersions", path: "/restapis/{restapi_id}/documentation/versions", httpMethod: "GET", input: input)
    }

    ///  Lists the RestApis resources for your collection.
    public func getRestApis(_ input: GetRestApisRequest) throws -> RestApis {
        return try client.send(operation: "GetRestApis", path: "/restapis", httpMethod: "GET", input: input)
    }

    ///  Gets all the usage plans of the caller's account.
    public func getUsagePlans(_ input: GetUsagePlansRequest) throws -> UsagePlans {
        return try client.send(operation: "GetUsagePlans", path: "/usageplans", httpMethod: "GET", input: input)
    }

    ///  Gets the VpcLinks collection under the caller's account in a selected region.
    public func getVpcLinks(_ input: GetVpcLinksRequest) throws -> VpcLinks {
        return try client.send(operation: "GetVpcLinks", path: "/vpclinks", httpMethod: "GET", input: input)
    }

    ///  Gets all the usage plan keys representing the API keys added to a specified usage plan.
    public func getUsagePlanKeys(_ input: GetUsagePlanKeysRequest) throws -> UsagePlanKeys {
        return try client.send(operation: "GetUsagePlanKeys", path: "/usageplans/{usageplanId}/keys", httpMethod: "GET", input: input)
    }

    public func importDocumentationParts(_ input: ImportDocumentationPartsRequest) throws -> DocumentationPartIds {
        return try client.send(operation: "ImportDocumentationParts", path: "/restapis/{restapi_id}/documentation/parts", httpMethod: "PUT", input: input)
    }

    ///  Flushes all authorizer cache entries on a stage.
    public func flushStageAuthorizersCache(_ input: FlushStageAuthorizersCacheRequest) throws {
        _ = try client.send(operation: "FlushStageAuthorizersCache", path: "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers", httpMethod: "DELETE", input: input)
    }

    public func deleteDocumentationPart(_ input: DeleteDocumentationPartRequest) throws {
        _ = try client.send(operation: "DeleteDocumentationPart", path: "/restapis/{restapi_id}/documentation/parts/{part_id}", httpMethod: "DELETE", input: input)
    }

    ///  Updates a usage plan of a given plan Id.
    public func updateUsagePlan(_ input: UpdateUsagePlanRequest) throws -> UsagePlan {
        return try client.send(operation: "UpdateUsagePlan", path: "/usageplans/{usageplanId}", httpMethod: "PATCH", input: input)
    }

    ///  Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.  Enable custom authorizers 
    public func testInvokeAuthorizer(_ input: TestInvokeAuthorizerRequest) throws -> TestInvokeAuthorizerResponse {
        return try client.send(operation: "TestInvokeAuthorizer", path: "/restapis/{restapi_id}/authorizers/{authorizer_id}", httpMethod: "POST", input: input)
    }

    ///  Creates a new BasePathMapping resource.
    public func createBasePathMapping(_ input: CreateBasePathMappingRequest) throws -> BasePathMapping {
        return try client.send(operation: "CreateBasePathMapping", path: "/domainnames/{domain_name}/basepathmappings", httpMethod: "POST", input: input)
    }

    ///  Gets a specified VPC link under the caller's account in a region.
    public func getVpcLink(_ input: GetVpcLinkRequest) throws -> VpcLink {
        return try client.send(operation: "GetVpcLink", path: "/vpclinks/{vpclink_id}", httpMethod: "GET", input: input)
    }

    ///  Represents a delete integration response.
    public func deleteIntegrationResponse(_ input: DeleteIntegrationResponseRequest) throws {
        _ = try client.send(operation: "DeleteIntegrationResponse", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", httpMethod: "DELETE", input: input)
    }

    ///  Gets a GatewayResponse of a specified response type on the given RestApi.
    public func getGatewayResponse(_ input: GetGatewayResponseRequest) throws -> GatewayResponse {
        return try client.send(operation: "GetGatewayResponse", path: "/restapis/{restapi_id}/gatewayresponses/{response_type}", httpMethod: "GET", input: input)
    }

    ///  Generates a client SDK for a RestApi and Stage.
    public func getSdk(_ input: GetSdkRequest) throws -> SdkResponse {
        return try client.send(operation: "GetSdk", path: "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}", httpMethod: "GET", input: input)
    }

    ///  Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.
    public func deleteDeployment(_ input: DeleteDeploymentRequest) throws {
        _ = try client.send(operation: "DeleteDeployment", path: "/restapis/{restapi_id}/deployments/{deployment_id}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the DomainName resource.
    public func deleteDomainName(_ input: DeleteDomainNameRequest) throws {
        _ = try client.send(operation: "DeleteDomainName", path: "/domainnames/{domain_name}", httpMethod: "DELETE", input: input)
    }

    ///  Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.
    public func updateUsage(_ input: UpdateUsageRequest) throws -> Usage {
        return try client.send(operation: "UpdateUsage", path: "/usageplans/{usageplanId}/keys/{keyId}/usage", httpMethod: "PATCH", input: input)
    }

    ///  Describe an existing Authorizer resource. AWS CLI
    public func getAuthorizer(_ input: GetAuthorizerRequest) throws -> Authorizer {
        return try client.send(operation: "GetAuthorizer", path: "/restapis/{restapi_id}/authorizers/{authorizer_id}", httpMethod: "GET", input: input)
    }

    ///  Describe an existing Authorizers resource. AWS CLI
    public func getAuthorizers(_ input: GetAuthorizersRequest) throws -> Authorizers {
        return try client.send(operation: "GetAuthorizers", path: "/restapis/{restapi_id}/authorizers", httpMethod: "GET", input: input)
    }

    ///  Deletes a usage plan key and remove the underlying API key from the associated usage plan.
    public func deleteUsagePlanKey(_ input: DeleteUsagePlanKeyRequest) throws {
        _ = try client.send(operation: "DeleteUsagePlanKey", path: "/usageplans/{usageplanId}/keys/{keyId}", httpMethod: "DELETE", input: input)
    }

    ///  Updates an existing Method resource.
    public func updateMethod(_ input: UpdateMethodRequest) throws -> Method {
        return try client.send(operation: "UpdateMethod", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", httpMethod: "PATCH", input: input)
    }

    ///  Deletes an existing MethodResponse resource.
    public func deleteMethodResponse(_ input: DeleteMethodResponseRequest) throws {
        _ = try client.send(operation: "DeleteMethodResponse", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing Authorizer resource. AWS CLI
    public func deleteAuthorizer(_ input: DeleteAuthorizerRequest) throws {
        _ = try client.send(operation: "DeleteAuthorizer", path: "/restapis/{restapi_id}/authorizers/{authorizer_id}", httpMethod: "DELETE", input: input)
    }

    public func createDocumentationVersion(_ input: CreateDocumentationVersionRequest) throws -> DocumentationVersion {
        return try client.send(operation: "CreateDocumentationVersion", path: "/restapis/{restapi_id}/documentation/versions", httpMethod: "POST", input: input)
    }

    ///  Creates a Resource resource.
    public func createResource(_ input: CreateResourceRequest) throws -> Resource {
        return try client.send(operation: "CreateResource", path: "/restapis/{restapi_id}/resources/{parent_id}", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified API.
    public func deleteRestApi(_ input: DeleteRestApiRequest) throws {
        _ = try client.send(operation: "DeleteRestApi", path: "/restapis/{restapi_id}", httpMethod: "DELETE", input: input)
    }

    ///  Represents a get integration response.
    public func getIntegrationResponse(_ input: GetIntegrationResponseRequest) throws -> IntegrationResponse {
        return try client.send(operation: "GetIntegrationResponse", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", httpMethod: "GET", input: input)
    }

    ///  Adds a new Authorizer resource to an existing RestApi resource. AWS CLI
    public func createAuthorizer(_ input: CreateAuthorizerRequest) throws -> Authorizer {
        return try client.send(operation: "CreateAuthorizer", path: "/restapis/{restapi_id}/authorizers", httpMethod: "POST", input: input)
    }

    ///  Changes information about an ApiKey resource.
    public func updateApiKey(_ input: UpdateApiKeyRequest) throws -> ApiKey {
        return try client.send(operation: "UpdateApiKey", path: "/apikeys/{api_Key}", httpMethod: "PATCH", input: input)
    }

    ///  Gets the usage data of a usage plan in a specified time interval.
    public func getUsage(_ input: GetUsageRequest) throws -> Usage {
        return try client.send(operation: "GetUsage", path: "/usageplans/{usageplanId}/usage", httpMethod: "GET", input: input)
    }

    ///  Changes information about an ClientCertificate resource.
    public func updateClientCertificate(_ input: UpdateClientCertificateRequest) throws -> ClientCertificate {
        return try client.send(operation: "UpdateClientCertificate", path: "/clientcertificates/{clientcertificate_id}", httpMethod: "PATCH", input: input)
    }

    public func getDocumentationParts(_ input: GetDocumentationPartsRequest) throws -> DocumentationParts {
        return try client.send(operation: "GetDocumentationParts", path: "/restapis/{restapi_id}/documentation/parts", httpMethod: "GET", input: input)
    }

    ///  Deletes a usage plan of a given plan Id.
    public func deleteUsagePlan(_ input: DeleteUsagePlanRequest) throws {
        _ = try client.send(operation: "DeleteUsagePlan", path: "/usageplans/{usageplanId}", httpMethod: "DELETE", input: input)
    }

    ///  Adds a new Model resource to an existing RestApi resource.
    public func createModel(_ input: CreateModelRequest) throws -> Model {
        return try client.send(operation: "CreateModel", path: "/restapis/{restapi_id}/models", httpMethod: "POST", input: input)
    }

    ///  Creates a Deployment resource, which makes a specified RestApi callable over the internet.
    public func createDeployment(_ input: CreateDeploymentRequest) throws -> Deployment {
        return try client.send(operation: "CreateDeployment", path: "/restapis/{restapi_id}/deployments", httpMethod: "POST", input: input)
    }

    ///  Creates a ReqeustValidator of a given RestApi.
    public func createRequestValidator(_ input: CreateRequestValidatorRequest) throws -> RequestValidator {
        return try client.send(operation: "CreateRequestValidator", path: "/restapis/{restapi_id}/requestvalidators", httpMethod: "POST", input: input)
    }

    ///  Get the integration settings.
    public func getIntegration(_ input: GetIntegrationRequest) throws -> Integration {
        return try client.send(operation: "GetIntegration", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", httpMethod: "GET", input: input)
    }

    ///  Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
    public func createVpcLink(_ input: CreateVpcLinkRequest) throws -> VpcLink {
        return try client.send(operation: "CreateVpcLink", path: "/vpclinks", httpMethod: "POST", input: input)
    }

    ///  Flushes a stage's cache.
    public func flushStageCache(_ input: FlushStageCacheRequest) throws {
        _ = try client.send(operation: "FlushStageCache", path: "/restapis/{restapi_id}/stages/{stage_name}/cache/data", httpMethod: "DELETE", input: input)
    }

    ///  Creates a new domain name.
    public func createDomainName(_ input: CreateDomainNameRequest) throws -> DomainName {
        return try client.send(operation: "CreateDomainName", path: "/domainnames", httpMethod: "POST", input: input)
    }

    ///  Create an ApiKey resource.  AWS CLI
    public func createApiKey(_ input: CreateApiKeyRequest) throws -> ApiKey {
        return try client.send(operation: "CreateApiKey", path: "/apikeys", httpMethod: "POST", input: input)
    }

    ///  Represents an update integration.
    public func updateIntegration(_ input: UpdateIntegrationRequest) throws -> Integration {
        return try client.send(operation: "UpdateIntegration", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", httpMethod: "PATCH", input: input)
    }

    ///  A feature of the API Gateway control service for creating a new API from an external API definition file.
    public func importRestApi(_ input: ImportRestApiRequest) throws -> RestApi {
        return try client.send(operation: "ImportRestApi", path: "/restapis?mode=import", httpMethod: "POST", input: input)
    }

    ///  Creates a usage plan key for adding an existing API key to a usage plan.
    public func createUsagePlanKey(_ input: CreateUsagePlanKeyRequest) throws -> UsagePlanKey {
        return try client.send(operation: "CreateUsagePlanKey", path: "/usageplans/{usageplanId}/keys", httpMethod: "POST", input: input)
    }

    ///  Gets a RequestValidator of a given RestApi.
    public func getRequestValidator(_ input: GetRequestValidatorRequest) throws -> RequestValidator {
        return try client.send(operation: "GetRequestValidator", path: "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", httpMethod: "GET", input: input)
    }

    ///  Deletes the ApiKey resource.
    public func deleteApiKey(_ input: DeleteApiKeyRequest) throws {
        _ = try client.send(operation: "DeleteApiKey", path: "/apikeys/{api_Key}", httpMethod: "DELETE", input: input)
    }

    ///  Represents a domain name that is contained in a simpler, more intuitive URL that can be called.
    public func getDomainName(_ input: GetDomainNameRequest) throws -> DomainName {
        return try client.send(operation: "GetDomainName", path: "/domainnames/{domain_name}", httpMethod: "GET", input: input)
    }

    ///  Deletes a model.
    public func deleteModel(_ input: DeleteModelRequest) throws {
        _ = try client.send(operation: "DeleteModel", path: "/restapis/{restapi_id}/models/{model_name}", httpMethod: "DELETE", input: input)
    }

    ///  Creates a new Stage resource that references a pre-existing Deployment for the API. 
    public func createStage(_ input: CreateStageRequest) throws -> Stage {
        return try client.send(operation: "CreateStage", path: "/restapis/{restapi_id}/stages", httpMethod: "POST", input: input)
    }

    ///  Gets a collection of ClientCertificate resources.
    public func getClientCertificates(_ input: GetClientCertificatesRequest) throws -> ClientCertificates {
        return try client.send(operation: "GetClientCertificates", path: "/clientcertificates", httpMethod: "GET", input: input)
    }

    ///  Changes information about the specified API.
    public func updateRestApi(_ input: UpdateRestApiRequest) throws -> RestApi {
        return try client.send(operation: "UpdateRestApi", path: "/restapis/{restapi_id}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an existing VpcLink of a specified identifier.
    public func updateVpcLink(_ input: UpdateVpcLinkRequest) throws -> VpcLink {
        return try client.send(operation: "UpdateVpcLink", path: "/vpclinks/{vpclink_id}", httpMethod: "PATCH", input: input)
    }

    ///  Represents an update integration response.
    public func updateIntegrationResponse(_ input: UpdateIntegrationResponseRequest) throws -> IntegrationResponse {
        return try client.send(operation: "UpdateIntegrationResponse", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", httpMethod: "PATCH", input: input)
    }

    ///  Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
    public func getGatewayResponses(_ input: GetGatewayResponsesRequest) throws -> GatewayResponses {
        return try client.send(operation: "GetGatewayResponses", path: "/restapis/{restapi_id}/gatewayresponses", httpMethod: "GET", input: input)
    }

    ///  Represents a collection of BasePathMapping resources.
    public func getBasePathMappings(_ input: GetBasePathMappingsRequest) throws -> BasePathMappings {
        return try client.send(operation: "GetBasePathMappings", path: "/domainnames/{domain_name}/basepathmappings", httpMethod: "GET", input: input)
    }

    ///  Changes information about a Deployment resource.
    public func updateDeployment(_ input: UpdateDeploymentRequest) throws -> Deployment {
        return try client.send(operation: "UpdateDeployment", path: "/restapis/{restapi_id}/deployments/{deployment_id}", httpMethod: "PATCH", input: input)
    }

    ///  Exports a deployed version of a RestApi in a specified format.
    public func getExport(_ input: GetExportRequest) throws -> ExportResponse {
        return try client.send(operation: "GetExport", path: "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}", httpMethod: "GET", input: input)
    }

    ///  A feature of the API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.
    public func putRestApi(_ input: PutRestApiRequest) throws -> RestApi {
        return try client.send(operation: "PutRestApi", path: "/restapis/{restapi_id}", httpMethod: "PUT", input: input)
    }

    ///  Describes a MethodResponse resource.
    public func getMethodResponse(_ input: GetMethodResponseRequest) throws -> MethodResponse {
        return try client.send(operation: "GetMethodResponse", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", httpMethod: "GET", input: input)
    }

    ///  Describes an existing model defined for a RestApi resource.
    public func getModel(_ input: GetModelRequest) throws -> Model {
        return try client.send(operation: "GetModel", path: "/restapis/{restapi_id}/models/{model_name}", httpMethod: "GET", input: input)
    }

    ///  Creates a new RestApi resource.
    public func createRestApi(_ input: CreateRestApiRequest) throws -> RestApi {
        return try client.send(operation: "CreateRestApi", path: "/restapis", httpMethod: "POST", input: input)
    }

    ///  Deletes the BasePathMapping resource.
    public func deleteBasePathMapping(_ input: DeleteBasePathMappingRequest) throws {
        _ = try client.send(operation: "DeleteBasePathMapping", path: "/domainnames/{domain_name}/basepathmappings/{base_path}", httpMethod: "DELETE", input: input)
    }

    ///  Updates an existing MethodResponse resource.
    public func updateMethodResponse(_ input: UpdateMethodResponseRequest) throws -> MethodResponse {
        return try client.send(operation: "UpdateMethodResponse", path: "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", httpMethod: "PATCH", input: input)
    }

    ///  Gets information about a Deployments collection.
    public func getDeployments(_ input: GetDeploymentsRequest) throws -> Deployments {
        return try client.send(operation: "GetDeployments", path: "/restapis/{restapi_id}/deployments", httpMethod: "GET", input: input)
    }

    ///  Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
    public func deleteGatewayResponse(_ input: DeleteGatewayResponseRequest) throws {
        _ = try client.send(operation: "DeleteGatewayResponse", path: "/restapis/{restapi_id}/gatewayresponses/{response_type}", httpMethod: "DELETE", input: input)
    }

    ///  Changes information about the current Account resource.
    public func updateAccount(_ input: UpdateAccountRequest) throws -> Account {
        return try client.send(operation: "UpdateAccount", path: "/account", httpMethod: "PATCH", input: input)
    }

    public func getSdkType(_ input: GetSdkTypeRequest) throws -> SdkType {
        return try client.send(operation: "GetSdkType", path: "/sdktypes/{sdktype_id}", httpMethod: "GET", input: input)
    }

    ///  Gets information about a Stage resource.
    public func getStage(_ input: GetStageRequest) throws -> Stage {
        return try client.send(operation: "GetStage", path: "/restapis/{restapi_id}/stages/{stage_name}", httpMethod: "GET", input: input)
    }

    ///  Deletes a Resource resource.
    public func deleteResource(_ input: DeleteResourceRequest) throws {
        _ = try client.send(operation: "DeleteResource", path: "/restapis/{restapi_id}/resources/{resource_id}", httpMethod: "DELETE", input: input)
    }

    ///  Changes information about a Stage resource.
    public func updateStage(_ input: UpdateStageRequest) throws -> Stage {
        return try client.send(operation: "UpdateStage", path: "/restapis/{restapi_id}/stages/{stage_name}", httpMethod: "PATCH", input: input)
    }

    ///  Gets the RequestValidators collection of a given RestApi.
    public func getRequestValidators(_ input: GetRequestValidatorsRequest) throws -> RequestValidators {
        return try client.send(operation: "GetRequestValidators", path: "/restapis/{restapi_id}/requestvalidators", httpMethod: "GET", input: input)
    }

    ///  Deletes the ClientCertificate resource.
    public func deleteClientCertificate(_ input: DeleteClientCertificateRequest) throws {
        _ = try client.send(operation: "DeleteClientCertificate", path: "/clientcertificates/{clientcertificate_id}", httpMethod: "DELETE", input: input)
    }

    ///  Removes a tag from a given resource.
    public func untagResource(_ input: UntagResourceRequest) throws {
        _ = try client.send(operation: "UntagResource", path: "/tags/{resource_arn}", httpMethod: "DELETE", input: input)
    }

    ///  Gets information about the current ClientCertificate resource.
    public func getClientCertificate(_ input: GetClientCertificateRequest) throws -> ClientCertificate {
        return try client.send(operation: "GetClientCertificate", path: "/clientcertificates/{clientcertificate_id}", httpMethod: "GET", input: input)
    }

    ///  Lists information about a resource.
    public func getResource(_ input: GetResourceRequest) throws -> Resource {
        return try client.send(operation: "GetResource", path: "/restapis/{restapi_id}/resources/{resource_id}", httpMethod: "GET", input: input)
    }

    ///  Updates a GatewayResponse of a specified response type on the given RestApi.
    public func updateGatewayResponse(_ input: UpdateGatewayResponseRequest) throws -> GatewayResponse {
        return try client.send(operation: "UpdateGatewayResponse", path: "/restapis/{restapi_id}/gatewayresponses/{response_type}", httpMethod: "PATCH", input: input)
    }

    ///  Lists information about a collection of Resource resources.
    public func getResources(_ input: GetResourcesRequest) throws -> Resources {
        return try client.send(operation: "GetResources", path: "/restapis/{restapi_id}/resources", httpMethod: "GET", input: input)
    }

    public func updateDocumentationVersion(_ input: UpdateDocumentationVersionRequest) throws -> DocumentationVersion {
        return try client.send(operation: "UpdateDocumentationVersion", path: "/restapis/{restapi_id}/documentation/versions/{doc_version}", httpMethod: "PATCH", input: input)
    }

    ///  Import API keys from an external source, such as a CSV-formatted file.
    public func importApiKeys(_ input: ImportApiKeysRequest) throws -> ApiKeyIds {
        return try client.send(operation: "ImportApiKeys", path: "/apikeys?mode=import", httpMethod: "POST", input: input)
    }

    ///  Deletes a RequestValidator of a given RestApi.
    public func deleteRequestValidator(_ input: DeleteRequestValidatorRequest) throws {
        _ = try client.send(operation: "DeleteRequestValidator", path: "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", httpMethod: "DELETE", input: input)
    }


}