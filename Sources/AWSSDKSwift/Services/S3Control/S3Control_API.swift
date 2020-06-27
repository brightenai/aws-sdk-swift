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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS S3Control service.

 AWS S3 Control provides access to Amazon S3 control plane operations. 
*/
public struct S3Control {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the S3Control client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProviderFactory? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "s3-control",
            signingName: "s3",
            serviceProtocol: .restxml,
            apiVersion: "2018-08-20",
            endpoint: endpoint,
            serviceEndpoints: ["ap-northeast-1": "s3-control.ap-northeast-1.amazonaws.com", "ap-northeast-2": "s3-control.ap-northeast-2.amazonaws.com", "ap-south-1": "s3-control.ap-south-1.amazonaws.com", "ap-southeast-1": "s3-control.ap-southeast-1.amazonaws.com", "ap-southeast-2": "s3-control.ap-southeast-2.amazonaws.com", "ca-central-1": "s3-control.ca-central-1.amazonaws.com", "cn-north-1": "s3-control.cn-north-1.amazonaws.com.cn", "cn-northwest-1": "s3-control.cn-northwest-1.amazonaws.com.cn", "eu-central-1": "s3-control.eu-central-1.amazonaws.com", "eu-north-1": "s3-control.eu-north-1.amazonaws.com", "eu-west-1": "s3-control.eu-west-1.amazonaws.com", "eu-west-2": "s3-control.eu-west-2.amazonaws.com", "eu-west-3": "s3-control.eu-west-3.amazonaws.com", "sa-east-1": "s3-control.sa-east-1.amazonaws.com", "us-east-1": "s3-control.us-east-1.amazonaws.com", "us-east-2": "s3-control.us-east-2.amazonaws.com", "us-gov-east-1": "s3-control.us-gov-east-1.amazonaws.com", "us-gov-west-1": "s3-control.us-gov-west-1.amazonaws.com", "us-west-1": "s3-control.us-west-1.amazonaws.com", "us-west-2": "s3-control.us-west-2.amazonaws.com"],
            possibleErrorTypes: [S3ControlErrorType.self],
            middlewares: [S3ControlMiddleware()]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Creates an access point and associates it with the specified bucket.
    @discardableResult public func createAccessPoint(_ input: CreateAccessPointRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "CreateAccessPoint", path: "/v20180820/accesspoint/{name}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  You can use Amazon S3 Batch Operations to perform large-scale Batch Operations on Amazon S3 objects. Amazon S3 Batch Operations can execute a single operation or action on lists of Amazon S3 objects that you specify. For more information, see Amazon S3 Batch Operations in the Amazon Simple Storage Service Developer Guide. Related actions include:    DescribeJob     ListJobs     UpdateJobPriority     UpdateJobStatus   
    public func createJob(_ input: CreateJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateJobResult> {
        return client.send(operation: "CreateJob", path: "/v20180820/jobs", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified access point.
    @discardableResult public func deleteAccessPoint(_ input: DeleteAccessPointRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAccessPoint", path: "/v20180820/accesspoint/{name}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the access point policy for the specified access point.
    @discardableResult public func deleteAccessPointPolicy(_ input: DeleteAccessPointPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAccessPointPolicy", path: "/v20180820/accesspoint/{name}/policy", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Removes the entire tag set from the specified Amazon S3 Batch Operations job. To use this operation, you must have permission to perform the s3:DeleteJobTagging action. For more information, see Using Job Tags in the Amazon Simple Storage Service Developer Guide.  Related actions include:    CreateJob     GetJobTagging     PutJobTagging   
    public func deleteJobTagging(_ input: DeleteJobTaggingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteJobTaggingResult> {
        return client.send(operation: "DeleteJobTagging", path: "/v20180820/jobs/{id}/tagging", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Removes the PublicAccessBlock configuration for an Amazon Web Services account.
    @discardableResult public func deletePublicAccessBlock(_ input: DeletePublicAccessBlockRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeletePublicAccessBlock", path: "/v20180820/configuration/publicAccessBlock", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Retrieves the configuration parameters and status for a Batch Operations job. For more information, see Amazon S3 Batch Operations in the Amazon Simple Storage Service Developer Guide.  Related actions include:    CreateJob     ListJobs     UpdateJobPriority     UpdateJobStatus   
    public func describeJob(_ input: DescribeJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobResult> {
        return client.send(operation: "DescribeJob", path: "/v20180820/jobs/{id}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns configuration information about the specified access point.
    public func getAccessPoint(_ input: GetAccessPointRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAccessPointResult> {
        return client.send(operation: "GetAccessPoint", path: "/v20180820/accesspoint/{name}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the access point policy associated with the specified access point.
    public func getAccessPointPolicy(_ input: GetAccessPointPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAccessPointPolicyResult> {
        return client.send(operation: "GetAccessPointPolicy", path: "/v20180820/accesspoint/{name}/policy", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Indicates whether the specified access point currently has a policy that allows public access. For more information about public access through access points, see Managing Data Access with Amazon S3 Access Points in the Amazon Simple Storage Service Developer Guide.
    public func getAccessPointPolicyStatus(_ input: GetAccessPointPolicyStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAccessPointPolicyStatusResult> {
        return client.send(operation: "GetAccessPointPolicyStatus", path: "/v20180820/accesspoint/{name}/policyStatus", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the tags on an Amazon S3 Batch Operations job. To use this operation, you must have permission to perform the s3:GetJobTagging action. For more information, see Using Job Tags in the Amazon Simple Storage Service Developer Guide.  Related actions include:    CreateJob     PutJobTagging     DeleteJobTagging   
    public func getJobTagging(_ input: GetJobTaggingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetJobTaggingResult> {
        return client.send(operation: "GetJobTagging", path: "/v20180820/jobs/{id}/tagging", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves the PublicAccessBlock configuration for an Amazon Web Services account.
    public func getPublicAccessBlock(_ input: GetPublicAccessBlockRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPublicAccessBlockOutput> {
        return client.send(operation: "GetPublicAccessBlock", path: "/v20180820/configuration/publicAccessBlock", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of the access points currently associated with the specified bucket. You can retrieve up to 1000 access points per call. If the specified bucket has more than 1,000 access points (or the number specified in maxResults, whichever is less), the response will include a continuation token that you can use to list the additional access points.
    public func listAccessPoints(_ input: ListAccessPointsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccessPointsResult> {
        return client.send(operation: "ListAccessPoints", path: "/v20180820/accesspoint", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists current Amazon S3 Batch Operations jobs and jobs that have ended within the last 30 days for the AWS account making the request. For more information, see Amazon S3 Batch Operations in the Amazon Simple Storage Service Developer Guide. Related actions include:     CreateJob     DescribeJob     UpdateJobPriority     UpdateJobStatus   
    public func listJobs(_ input: ListJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResult> {
        return client.send(operation: "ListJobs", path: "/v20180820/jobs", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Associates an access policy with the specified access point. Each access point can have only one policy, so a request made to this API replaces any existing policy associated with the specified access point.
    @discardableResult public func putAccessPointPolicy(_ input: PutAccessPointPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutAccessPointPolicy", path: "/v20180820/accesspoint/{name}/policy", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Set the supplied tag-set on an Amazon S3 Batch Operations job. A tag is a key-value pair. You can associate Amazon S3 Batch Operations tags with any job by sending a PUT request against the tagging subresource that is associated with the job. To modify the existing tag set, you can either replace the existing tag set entirely, or make changes within the existing tag set by retrieving the existing tag set using GetJobTagging, modify that tag set, and use this API action to replace the tag set with the one you have modified.. For more information, see Using Job Tags in the Amazon Simple Storage Service Developer Guide.      If you send this request with an empty tag set, Amazon S3 deletes the existing tag set on the Batch Operations job. If you use this method, you will be charged for a Tier 1 Request (PUT). For more information, see Amazon S3 pricing.   For deleting existing tags for your batch operations job, DeleteJobTagging request is preferred because it achieves the same result without incurring charges.   A few things to consider about using tags:   Amazon S3 limits the maximum number of tags to 50 tags per job.   You can associate up to 50 tags with a job as long as they have unique tag keys.   A tag key can be up to 128 Unicode characters in length, and tag values can be up to 256 Unicode characters in length.   The key and values are case sensitive.   For tagging-related restrictions related to characters and encodings, see User-Defined Tag Restrictions.       To use this operation, you must have permission to perform the s3:PutJobTagging action. Related actions include:    CreateJob     GetJobTagging     DeleteJobTagging   
    public func putJobTagging(_ input: PutJobTaggingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutJobTaggingResult> {
        return client.send(operation: "PutJobTagging", path: "/v20180820/jobs/{id}/tagging", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates or modifies the PublicAccessBlock configuration for an Amazon Web Services account.
    @discardableResult public func putPublicAccessBlock(_ input: PutPublicAccessBlockRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutPublicAccessBlock", path: "/v20180820/configuration/publicAccessBlock", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates an existing Amazon S3 Batch Operations job's priority. For more information, see Amazon S3 Batch Operations in the Amazon Simple Storage Service Developer Guide.  Related actions include:    CreateJob     ListJobs     DescribeJob     UpdateJobStatus   
    public func updateJobPriority(_ input: UpdateJobPriorityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateJobPriorityResult> {
        return client.send(operation: "UpdateJobPriority", path: "/v20180820/jobs/{id}/priority", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the status for the specified job. Use this operation to confirm that you want to run a job or to cancel an existing job. For more information, see Amazon S3 Batch Operations in the Amazon Simple Storage Service Developer Guide.  Related actions include:    CreateJob     ListJobs     DescribeJob     UpdateJobStatus   
    public func updateJobStatus(_ input: UpdateJobStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateJobStatusResult> {
        return client.send(operation: "UpdateJobStatus", path: "/v20180820/jobs/{id}/status", httpMethod: "POST", input: input, on: eventLoop)
    }
}
