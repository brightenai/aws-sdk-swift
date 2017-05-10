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
AWS CloudTrail This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail. CloudTrail is a web service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the AWS API call, the source IP address, the request parameters, and the response elements returned by the service.  As an alternative to the API, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWSCloudTrail. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the Tools for Amazon Web Services page.  See the AWS CloudTrail User Guide for information about the data that is included with each AWS API call listed in the log files.
*/
public struct Cloudtrail {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
            service: "cloudtrail",
            serviceProtocol: .json,
            apiVersion: "2013-11-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CloudtrailError.self]
        )
    }

    ///  Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.
    public func startLogging(_ input: StartLoggingRequest) throws -> StartLoggingResponse {
        return try client.send(operation: "StartLogging", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a trail. This operation must be called from the region in which the trail was created. DeleteTrail cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.
    public func deleteTrail(_ input: DeleteTrailRequest) throws -> DeleteTrailResponse {
        return try client.send(operation: "DeleteTrail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more tags to a trail, up to a limit of 50. Tags must be unique per trail. Overwrites an existing tag's value when a new value is specified for an existing tag key. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all regions only from the region in which the trail was created (that is, from its home region).
    public func addTags(_ input: AddTagsRequest) throws -> AddTagsResponse {
        return try client.send(operation: "AddTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:   The S3 objects that you are logging for data events.   If your event selector includes management events.   If your event selector includes read-only events, write-only events, or all.    For more information, see Logging Data and Management Events for Trails  in the AWS CloudTrail User Guide.
    public func getEventSelectors(_ input: GetEventSelectorsRequest) throws -> GetEventSelectorsResponse {
        return try client.send(operation: "GetEventSelectors", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves settings for the trail associated with the current region for your account.
    public func describeTrails(_ input: DescribeTrailsRequest) throws -> DescribeTrailsResponse {
        return try client.send(operation: "DescribeTrails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags for the trail in the current region.
    public func listTags(_ input: ListTagsRequest) throws -> ListTagsResponse {
        return try client.send(operation: "ListTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Looks up API activity events captured by CloudTrail that create, update, or delete resources in your account. Events for a region can be looked up for the times in which you had CloudTrail turned on in that region during the last seven days. Lookup supports the following attributes:   Event ID   Event name   Event source   Resource name   Resource type   User name   All attributes are optional. The default number of results returned is 10, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.  The rate of lookup requests is limited to one per second per account. If this limit is exceeded, a throttling error occurs.   Events that occurred during the selected time range will not be available for lookup if CloudTrail logging was not enabled when the events occurred. 
    public func lookupEvents(_ input: LookupEventsRequest) throws -> LookupEventsResponse {
        return try client.send(operation: "LookupEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.
    public func getTrailStatus(_ input: GetTrailStatusRequest) throws -> GetTrailStatusResponse {
        return try client.send(operation: "GetTrailStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from a trail.
    public func removeTags(_ input: RemoveTagsRequest) throws -> RemoveTagsResponse {
        return try client.send(operation: "RemoveTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an InvalidHomeRegionException will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.
    public func stopLogging(_ input: StopLoggingRequest) throws -> StopLoggingResponse {
        return try client.send(operation: "StopLogging", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.
    public func createTrail(_ input: CreateTrailRequest) throws -> CreateTrailResponse {
        return try client.send(operation: "CreateTrail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.  CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key. 
    public func listPublicKeys(_ input: ListPublicKeysRequest) throws -> ListPublicKeysResponse {
        return try client.send(operation: "ListPublicKeys", path: "/", httpMethod: "POST", input: input)
    }

    ///  Configures an event selector for your trail. Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.  Example   You create an event selector for a trail and specify that you want write-only events.   The EC2 GetConsoleOutput and RunInstances API operations occur in your account.   CloudTrail evaluates whether the events match your event selectors.   The RunInstances is a write-only event and it matches your event selector. The trail logs the event.   The GetConsoleOutput is a read-only event but it doesn't match your event selector. The trail doesn't log the event.    The PutEventSelectors operation must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException is thrown. You can configure up to five event selectors for each trail. For more information, see Logging Data and Management Events for Trails  in the AWS CloudTrail User Guide.
    public func putEventSelectors(_ input: PutEventSelectorsRequest) throws -> PutEventSelectorsResponse {
        return try client.send(operation: "PutEventSelectors", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. UpdateTrail must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException is thrown.
    public func updateTrail(_ input: UpdateTrailRequest) throws -> UpdateTrailResponse {
        return try client.send(operation: "UpdateTrail", path: "/", httpMethod: "POST", input: input)
    }


}