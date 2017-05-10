// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

/**
Amazon ElastiCache Amazon ElastiCache is a web service that makes it easier to set up, operate, and scale a distributed cache in the cloud. With ElastiCache, customers get all of the benefits of a high-performance, in-memory cache with less of the administrative burden involved in launching and managing a distributed cache. The service makes setup, scaling, and cluster failure handling much simpler than in a self-managed cache deployment. In addition, through integration with Amazon CloudWatch, customers get enhanced visibility into the key performance statistics associated with their cache and can receive alarms if a part of their cache runs hot.
*/
public struct Elasticache {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "elasticache",
            serviceProtocol: .query,
            apiVersion: "2015-02-02",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ElasticacheError.self]
        )
    }

    ///  Returns information about reserved cache nodes for this account, or about a specified reserved cache node.
    public func describeReservedCacheNodes(_ input: DescribeReservedCacheNodesMessage) throws -> ReservedCacheNodeMessage {
        return try client.send(operation: "DescribeReservedCacheNodes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a cache security group.  You cannot delete a cache security group if it is associated with any cache clusters. 
    public func deleteCacheSecurityGroup(_ input: DeleteCacheSecurityGroupMessage) throws {
        _ = try client.send(operation: "DeleteCacheSecurityGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new cache parameter group. A cache parameter group is a collection of parameters that you apply to all of the nodes in a cache cluster.
    public func createCacheParameterGroup(_ input: CreateCacheParameterGroupMessage) throws -> CreateCacheParameterGroupResult {
        return try client.send(operation: "CreateCacheParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a cache subnet group.  You cannot delete a cache subnet group if it is associated with any cache clusters. 
    public func deleteCacheSubnetGroup(_ input: DeleteCacheSubnetGroupMessage) throws {
        _ = try client.send(operation: "DeleteCacheSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified cache parameter group. You cannot delete a cache parameter group if it is associated with any cache clusters.
    public func deleteCacheParameterGroup(_ input: DeleteCacheParameterGroupMessage) throws {
        _ = try client.send(operation: "DeleteCacheParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously provisioned cache cluster. DeleteCacheCluster deletes all associated cache nodes, node endpoints and the cache cluster itself. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the cache cluster; you cannot cancel or revert this operation. This operation cannot be used to delete a cache cluster that is the last read replica of a replication group or node group (shard) that has Multi-AZ mode enabled or a cache cluster from a Redis (cluster mode enabled) replication group.  Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups. 
    public func deleteCacheCluster(_ input: DeleteCacheClusterMessage) throws -> DeleteCacheClusterResult {
        return try client.send(operation: "DeleteCacheCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the available cache engines and their versions.
    public func describeCacheEngineVersions(_ input: DescribeCacheEngineVersionsMessage) throws -> CacheEngineVersionMessage {
        return try client.send(operation: "DescribeCacheEngineVersions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all provisioned cache clusters if no cache cluster identifier is specified, or about a specific cache cluster if a cache cluster identifier is supplied. By default, abbreviated information about the cache clusters are returned. You can use the optional ShowDetails flag to retrieve detailed information about the cache nodes associated with the cache clusters. These details include the DNS address and port for the cache node endpoint. If the cluster is in the CREATING state, only cluster-level information is displayed until all of the nodes are successfully provisioned. If the cluster is in the DELETING state, only cluster-level information is displayed. If cache nodes are currently being added to the cache cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cache cluster state is available, the cluster is ready for use. If cache nodes are currently being removed from the cache cluster, no endpoint information for the removed nodes is displayed.
    public func describeCacheClusters(_ input: DescribeCacheClustersMessage) throws -> CacheClusterMessage {
        return try client.send(operation: "DescribeCacheClusters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the parameters of a cache parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire cache parameter group, specify the ResetAllParameters and CacheParameterGroupName parameters.
    public func resetCacheParameterGroup(_ input: ResetCacheParameterGroupMessage) throws -> CacheParameterGroupNameMessage {
        return try client.send(operation: "ResetCacheParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all cost allocation tags currently on the named resource. A cost allocation tag is a key-value pair where the key is case-sensitive and the value is optional. You can use cost allocation tags to categorize and track your AWS costs. You can have a maximum of 10 cost allocation tags on an ElastiCache resource. For more information, see Using Cost Allocation Tags in Amazon ElastiCache.
    public func listTagsForResource(_ input: ListTagsForResourceMessage) throws -> TagListMessage {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of cache subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group.
    public func describeCacheSubnetGroups(_ input: DescribeCacheSubnetGroupsMessage) throws -> CacheSubnetGroupMessage {
        return try client.send(operation: "DescribeCacheSubnetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a copy of an entire cache cluster or replication group at a specific moment in time.  This operation is valid for Redis only. 
    public func createSnapshot(_ input: CreateSnapshotMessage) throws -> CreateSnapshotResult {
        return try client.send(operation: "CreateSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing snapshot. When you receive a successful response from this operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or revert this operation.  This operation is valid for Redis only. 
    public func deleteSnapshot(_ input: DeleteSnapshotMessage) throws -> DeleteSnapshotResult {
        return try client.send(operation: "DeleteSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups are used as the authorization mechanism.  You cannot authorize ingress from an Amazon EC2 security group in one region to an ElastiCache cluster in another region. 
    public func authorizeCacheSecurityGroupIngress(_ input: AuthorizeCacheSecurityGroupIngressMessage) throws -> AuthorizeCacheSecurityGroupIngressResult {
        return try client.send(operation: "AuthorizeCacheSecurityGroupIngress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Reboots some, or all, of the cache nodes within a provisioned cache cluster. This operation applies any modified cache parameter groups to the cache cluster. The reboot operation takes place as soon as possible, and results in a momentary outage to the cache cluster. During the reboot, the cache cluster status is set to REBOOTING. The reboot causes the contents of the cache (for each cache node being rebooted) to be lost. When the reboot is complete, a cache cluster event is created.
    public func rebootCacheCluster(_ input: RebootCacheClusterMessage) throws -> RebootCacheClusterResult {
        return try client.send(operation: "RebootCacheCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows you to purchase a reserved cache node offering.
    public func purchaseReservedCacheNodesOffering(_ input: PurchaseReservedCacheNodesOfferingMessage) throws -> PurchaseReservedCacheNodesOfferingResult {
        return try client.send(operation: "PurchaseReservedCacheNodesOffering", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new cache subnet group. Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).
    public func createCacheSubnetGroup(_ input: CreateCacheSubnetGroupMessage) throws -> CreateCacheSubnetGroupResult {
        return try client.send(operation: "CreateCacheSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns events related to cache clusters, cache security groups, and cache parameter groups. You can obtain events specific to a particular cache cluster, cache security group, or cache parameter group by providing the name as a parameter. By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    public func describeEvents(_ input: DescribeEventsMessage) throws -> EventsMessage {
        return try client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a cache cluster. All nodes in the cache cluster run the same protocol-compliant cache engine software, either Memcached or Redis.  Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups. 
    public func createCacheCluster(_ input: CreateCacheClusterMessage) throws -> CreateCacheClusterResult {
        return try client.send(operation: "CreateCacheCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the settings for a replication group.  Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.   This operation is valid for Redis only. 
    public func modifyReplicationGroup(_ input: ModifyReplicationGroupMessage) throws -> ModifyReplicationGroupResult {
        return try client.send(operation: "ModifyReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the settings for a cache cluster. You can use this operation to change one or more cluster configuration parameters by specifying the parameters and the new values.
    public func modifyCacheCluster(_ input: ModifyCacheClusterMessage) throws -> ModifyCacheClusterResult {
        return try client.send(operation: "ModifyCacheCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new cache security group. Use a cache security group to control access to one or more cache clusters. Cache security groups are only used when you are creating a cache cluster outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cache cluster inside of a VPC, use a cache subnet group instead. For more information, see CreateCacheSubnetGroup.
    public func createCacheSecurityGroup(_ input: CreateCacheSecurityGroupMessage) throws -> CreateCacheSecurityGroupResult {
        return try client.send(operation: "CreateCacheSecurityGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.
    public func describeCacheParameterGroups(_ input: DescribeCacheParameterGroupsMessage) throws -> CacheParameterGroupsMessage {
        return try client.send(operation: "DescribeCacheParameterGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group.
    public func describeCacheSecurityGroups(_ input: DescribeCacheSecurityGroupsMessage) throws -> CacheSecurityGroupMessage {
        return try client.send(operation: "DescribeCacheSecurityGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the detailed parameter list for a particular cache parameter group.
    public func describeCacheParameters(_ input: DescribeCacheParametersMessage) throws -> CacheParameterGroupDetails {
        return try client.send(operation: "DescribeCacheParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the tags identified by the TagKeys list from the named resource.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage) throws -> TagListMessage {
        return try client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the default engine and system parameter information for the specified cache engine.
    public func describeEngineDefaultParameters(_ input: DescribeEngineDefaultParametersMessage) throws -> DescribeEngineDefaultParametersResult {
        return try client.send(operation: "DescribeEngineDefaultParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the parameters of a cache parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    public func modifyCacheParameterGroup(_ input: ModifyCacheParameterGroupMessage) throws -> CacheParameterGroupNameMessage {
        return try client.send(operation: "ModifyCacheParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists available reserved cache node offerings.
    public func describeReservedCacheNodesOfferings(_ input: DescribeReservedCacheNodesOfferingsMessage) throws -> ReservedCacheNodesOfferingMessage {
        return try client.send(operation: "DescribeReservedCacheNodesOfferings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group. A Redis (cluster mode disabled) replication group is a collection of cache clusters, where one of the cache clusters is a read/write primary and the others are read-only replicas. Writes to the primary are asynchronously propagated to the replicas. A Redis (cluster mode enabled) replication group is a collection of 1 to 15 node groups (shards). Each node group (shard) has one read/write primary node and up to 5 read-only replica nodes. Writes to the primary are asynchronously propagated to the replicas. Redis (cluster mode enabled) replication groups partition the data across node groups (shards). When a Redis (cluster mode disabled) replication group has been successfully created, you can add one or more read replicas to it, up to a total of 5 read replicas. You cannot alter a Redis (cluster mode enabled) replication group after it has been created.  This operation is valid for Redis only. 
    public func createReplicationGroup(_ input: CreateReplicationGroupMessage) throws -> CreateReplicationGroupResult {
        return try client.send(operation: "CreateReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing replication group. By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas. If the replication group has only one primary, you can optionally delete only the read replicas, while retaining the primary by setting RetainPrimaryCluster=true. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.  This operation is valid for Redis only. 
    public func deleteReplicationGroup(_ input: DeleteReplicationGroupMessage) throws -> DeleteReplicationGroupResult {
        return try client.send(operation: "DeleteReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about cache cluster or replication group snapshots. By default, DescribeSnapshots lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cache cluster.  This operation is valid for Redis only. 
    public func describeSnapshots(_ input: DescribeSnapshotsMessage) throws -> DescribeSnapshotsListMessage {
        return try client.send(operation: "DescribeSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Makes a copy of an existing snapshot.  This operation is valid for Redis only.   Users or groups that have permissions to use the CopySnapshot operation can create their own Amazon S3 buckets and copy snapshots to it. To control access to your snapshots, use an IAM policy to control who has the ability to use the CopySnapshot operation. For more information about using IAM to control the use of ElastiCache operations, see Exporting Snapshots and Authentication &amp; Access Control.  You could receive the following error messages.  Error Messages     Error Message: The S3 bucket %s is outside of the region.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The S3 bucket %s does not exist.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The S3 bucket %s is not owned by the authenticated user.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The authenticated user does not have sufficient permissions to perform the desired activity.  Solution: Contact your system administrator to get the needed permissions.    Error Message: The S3 bucket %s already contains an object with key %s.  Solution: Give the TargetSnapshotName a new and unique value. If exporting a snapshot, you could alternatively create a new Amazon S3 bucket and use this same value for TargetSnapshotName.    Error Message:  ElastiCache has not been granted READ permissions %s on the S3 Bucket.  Solution: Add List and Read permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.    Error Message:  ElastiCache has not been granted WRITE permissions %s on the S3 Bucket.  Solution: Add Upload/Delete permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.    Error Message:  ElastiCache has not been granted READ_ACP permissions %s on the S3 Bucket.  Solution: Add View Permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.  
    public func copySnapshot(_ input: CopySnapshotMessage) throws -> CopySnapshotResult {
        return try client.send(operation: "CopySnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Revokes ingress from a cache security group. Use this operation to disallow access from an Amazon EC2 security group that had been previously authorized.
    public func revokeCacheSecurityGroupIngress(_ input: RevokeCacheSecurityGroupIngressMessage) throws -> RevokeCacheSecurityGroupIngressResult {
        return try client.send(operation: "RevokeCacheSecurityGroupIngress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds up to 10 cost allocation tags to the named resource. A cost allocation tag is a key-value pair where the key and value are case-sensitive. You can use cost allocation tags to categorize and track your AWS costs.  When you apply tags to your ElastiCache resources, AWS generates a cost allocation report as a comma-separated value (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services. For more information, see Using Cost Allocation Tags in Amazon ElastiCache in the ElastiCache User Guide.
    public func addTagsToResource(_ input: AddTagsToResourceMessage) throws -> TagListMessage {
        return try client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to. When you use the ModifyCacheCluster or ModifyReplicationGroup operations to scale up your cluster or replication group, the value of the CacheNodeType parameter must be one of the node types returned by this operation.
    public func listAllowedNodeTypeModifications(_ input: ListAllowedNodeTypeModificationsMessage) throws -> AllowedNodeTypeModificationsMessage {
        return try client.send(operation: "ListAllowedNodeTypeModifications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies an existing cache subnet group.
    public func modifyCacheSubnetGroup(_ input: ModifyCacheSubnetGroupMessage) throws -> ModifyCacheSubnetGroupResult {
        return try client.send(operation: "ModifyCacheSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a particular replication group. If no identifier is specified, DescribeReplicationGroups returns information about all replication groups.  This operation is valid for Redis only. 
    public func describeReplicationGroups(_ input: DescribeReplicationGroupsMessage) throws -> ReplicationGroupMessage {
        return try client.send(operation: "DescribeReplicationGroups", path: "/", httpMethod: "POST", input: input)
    }


}