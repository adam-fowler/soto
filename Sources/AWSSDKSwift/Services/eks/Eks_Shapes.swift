// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Eks {

    public struct DeleteClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of the cluster to delete.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct VpcConfigResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "securityGroupIds", required: false, type: .list), 
            AWSShapeMember(label: "subnetIds", required: false, type: .list), 
            AWSShapeMember(label: "vpcId", required: false, type: .string)
        ]
        /// The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your worker nodes and the Kubernetes control plane.
        public let securityGroupIds: [String]?
        /// The subnets associated with your cluster.
        public let subnetIds: [String]?
        /// The VPC associated with your cluster.
        public let vpcId: String?

        public init(securityGroupIds: [String]? = nil, subnetIds: [String]? = nil, vpcId: String? = nil) {
            self.securityGroupIds = securityGroupIds
            self.subnetIds = subnetIds
            self.vpcId = vpcId
        }

        private enum CodingKeys: String, CodingKey {
            case securityGroupIds = "securityGroupIds"
            case subnetIds = "subnetIds"
            case vpcId = "vpcId"
        }
    }

    public struct Cluster: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourcesVpcConfig", required: false, type: .structure), 
            AWSShapeMember(label: "status", required: false, type: .enum), 
            AWSShapeMember(label: "roleArn", required: false, type: .string), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "endpoint", required: false, type: .string), 
            AWSShapeMember(label: "createdAt", required: false, type: .timestamp), 
            AWSShapeMember(label: "certificateAuthority", required: false, type: .structure), 
            AWSShapeMember(label: "version", required: false, type: .string), 
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "arn", required: false, type: .string)
        ]
        /// The VPC subnets and security groups used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide.
        public let resourcesVpcConfig: VpcConfigResponse?
        /// The current status of the cluster.
        public let status: ClusterStatus?
        /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
        public let roleArn: String?
        /// The name of the cluster.
        public let name: String?
        /// The endpoint for your Kubernetes API server.
        public let endpoint: String?
        /// The Unix epoch time stamp in seconds for when the cluster was created.
        public let createdAt: TimeStamp?
        /// The certificate-authority-data for your cluster.
        public let certificateAuthority: Certificate?
        /// The Kubernetes server version for the cluster.
        public let version: String?
        /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request.
        public let clientRequestToken: String?
        /// The Amazon Resource Name (ARN) of the cluster.
        public let arn: String?

        public init(resourcesVpcConfig: VpcConfigResponse? = nil, status: ClusterStatus? = nil, roleArn: String? = nil, name: String? = nil, endpoint: String? = nil, createdAt: TimeStamp? = nil, certificateAuthority: Certificate? = nil, version: String? = nil, clientRequestToken: String? = nil, arn: String? = nil) {
            self.resourcesVpcConfig = resourcesVpcConfig
            self.status = status
            self.roleArn = roleArn
            self.name = name
            self.endpoint = endpoint
            self.createdAt = createdAt
            self.certificateAuthority = certificateAuthority
            self.version = version
            self.clientRequestToken = clientRequestToken
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case resourcesVpcConfig = "resourcesVpcConfig"
            case status = "status"
            case roleArn = "roleArn"
            case name = "name"
            case endpoint = "endpoint"
            case createdAt = "createdAt"
            case certificateAuthority = "certificateAuthority"
            case version = "version"
            case clientRequestToken = "clientRequestToken"
            case arn = "arn"
        }
    }

    public struct DeleteClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string)
        ]
        /// The name of the cluster to delete.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
        }
    }

    public struct Certificate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "data", required: false, type: .string)
        ]
        /// The base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.
        public let data: String?

        public init(data: String? = nil) {
            self.data = data
        }

        private enum CodingKeys: String, CodingKey {
            case data = "data"
        }
    }

    public enum ClusterStatus: String, CustomStringConvertible, Codable {
        case creating = "CREATING"
        case active = "ACTIVE"
        case deleting = "DELETING"
        case failed = "FAILED"
        public var description: String { return self.rawValue }
    }

    public struct VpcConfigRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "securityGroupIds", required: false, type: .list), 
            AWSShapeMember(label: "subnetIds", required: true, type: .list)
        ]
        /// Specify one or more security groups for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
        public let securityGroupIds: [String]?
        /// Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
        public let subnetIds: [String]

        public init(securityGroupIds: [String]? = nil, subnetIds: [String]) {
            self.securityGroupIds = securityGroupIds
            self.subnetIds = subnetIds
        }

        private enum CodingKeys: String, CodingKey {
            case securityGroupIds = "securityGroupIds"
            case subnetIds = "subnetIds"
        }
    }

    public struct DescribeClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of your specified cluster.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct CreateClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of your new cluster.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct ListClustersResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clusters", required: false, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]
        /// A list of all of the clusters for your account in the specified region.
        public let clusters: [String]?
        /// The nextToken value to include in a future ListClusters request. When the results of a ListClusters request exceed maxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?

        public init(clusters: [String]? = nil, nextToken: String? = nil) {
            self.clusters = clusters
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusters = "clusters"
            case nextToken = "nextToken"
        }
    }

    public struct CreateClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourcesVpcConfig", required: true, type: .structure), 
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "roleArn", required: true, type: .string), 
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "version", required: false, type: .string)
        ]
        /// The VPC subnets and security groups used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide.
        public let resourcesVpcConfig: VpcConfigRequest
        /// The unique name to give to your cluster.
        public let name: String
        /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for Amazon EKS to make calls to other AWS API operations on your behalf. For more information, see Amazon EKS Service IAM Role in the  Amazon EKS User Guide  
        public let roleArn: String
        /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request.
        public let clientRequestToken: String?
        /// The desired Kubernetes version for your cluster. If you do not specify a value here, the latest version available in Amazon EKS is used.
        public let version: String?

        public init(resourcesVpcConfig: VpcConfigRequest, name: String, roleArn: String, clientRequestToken: String? = nil, version: String? = nil) {
            self.resourcesVpcConfig = resourcesVpcConfig
            self.name = name
            self.roleArn = roleArn
            self.clientRequestToken = clientRequestToken
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case resourcesVpcConfig = "resourcesVpcConfig"
            case name = "name"
            case roleArn = "roleArn"
            case clientRequestToken = "clientRequestToken"
            case version = "version"
        }
    }

    public struct DescribeClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string)
        ]
        /// The name of the cluster to describe.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
        }
    }

    public struct ListClustersRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        /// The maximum number of cluster results returned by ListClusters in paginated output. When this parameter is used, ListClusters only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListClusters request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListClusters returns up to 100 results and a nextToken value if applicable.
        public let maxResults: Int32?
        /// The nextToken value returned from a previous paginated ListClusters request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value.  This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. 
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

}