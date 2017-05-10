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
This is the AWS WAF API Reference for using AWS WAF with Amazon CloudFront. The AWS WAF actions and data types listed in the reference are available for protecting Amazon CloudFront distributions. You can use these actions and data types via the endpoint waf.amazonaws.com. This guide is for developers who need detailed information about the AWS WAF API actions, data types, and errors. For detailed information about AWS WAF features and an overview of how to use the AWS WAF API, see the AWS WAF Developer Guide.
*/
public struct Waf {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSWAF_20150824",
            service: "waf",
            serviceProtocol: .json,
            apiVersion: "2015-08-24",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [WafError.self]
        )
    }

    ///  Returns an array of SizeConstraintSetSummary objects.
    public func listSizeConstraintSets(_ input: ListSizeConstraintSetsRequest) throws -> ListSizeConstraintSetsResponse {
        return try client.send(operation: "ListSizeConstraintSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of RuleSummary objects.
    public func listRules(_ input: ListRulesRequest) throws -> ListRulesResponse {
        return try client.send(operation: "ListRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of WebACLSummary objects in the response.
    public func listWebACLs(_ input: ListWebACLsRequest) throws -> ListWebACLsResponse {
        return try client.send(operation: "ListWebACLs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of ByteMatchSetSummary objects.
    public func listByteMatchSets(_ input: ListByteMatchSetsRequest) throws -> ListByteMatchSetsResponse {
        return try client.send(operation: "ListByteMatchSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an IPSet, which you use to specify which web requests you want to allow or block based on the IP addresses that the requests originate from. For example, if you're receiving a lot of requests from one or more individual IP addresses or one or more ranges of IP addresses and you want to block the requests, you can create an IPSet that contains those IP addresses and then configure AWS WAF to block the requests.  To create and configure an IPSet, perform the following steps:   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a CreateIPSet request.   Submit a CreateIPSet request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateIPSet request.   Submit an UpdateIPSet request to specify the IP addresses that you want AWS WAF to watch for.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func createIPSet(_ input: CreateIPSetRequest) throws -> CreateIPSetResponse {
        return try client.send(operation: "CreateIPSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet. For each ByteMatchTuple object, you specify the following values:    Whether to insert or delete the object from the array. If you want to change a ByteMatchSetUpdate object, you delete the existing object and add a new one.   The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the User-Agent header.    The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to look for. For more information, including how you specify the values for the AWS WAF API and the AWS CLI or SDKs, see TargetString in the ByteMatchTuple data type.    Where to look, such as at the beginning or the end of a query string.   Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.   For example, you can add a ByteMatchSetUpdate object that matches web requests in which User-Agent headers contain the string BadBot. You can then configure AWS WAF to block those requests. To create and configure a ByteMatchSet, perform the following steps:   Create a ByteMatchSet. For more information, see CreateByteMatchSet.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateByteMatchSet request.   Submit an UpdateByteMatchSet request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func updateByteMatchSet(_ input: UpdateByteMatchSetRequest) throws -> UpdateByteMatchSetResponse {
        return try client.send(operation: "UpdateByteMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a SqlInjectionMatchSet, which you use to allow, block, or count requests that contain snippets of SQL code in a specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings. To create and configure a SqlInjectionMatchSet, perform the following steps:   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a CreateSqlInjectionMatchSet request.   Submit a CreateSqlInjectionMatchSet request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateSqlInjectionMatchSet request.   Submit an UpdateSqlInjectionMatchSet request to specify the parts of web requests in which you want to allow, block, or count malicious SQL code.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func createSqlInjectionMatchSet(_ input: CreateSqlInjectionMatchSetRequest) throws -> CreateSqlInjectionMatchSetResponse {
        return try client.send(operation: "CreateSqlInjectionMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a ByteMatchSet. You then use UpdateByteMatchSet to identify the part of a web request that you want AWS WAF to inspect, such as the values of the User-Agent header or the query string. For example, you can create a ByteMatchSet that matches any requests with User-Agent headers that contain the string BadBot. You can then configure AWS WAF to reject those requests. To create and configure a ByteMatchSet, perform the following steps:   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a CreateByteMatchSet request.   Submit a CreateByteMatchSet request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateByteMatchSet request.   Submit an UpdateByteMatchSet request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func createByteMatchSet(_ input: CreateByteMatchSetRequest) throws -> CreateByteMatchSetResponse {
        return try client.send(operation: "CreateByteMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inserts or deletes ActivatedRule objects in a WebACL. Each Rule identifies web requests that you want to allow, block, or count. When you update a WebACL, you specify the following values:   A default action for the WebACL, either ALLOW or BLOCK. AWS WAF performs the default action if a request doesn't match the criteria in any of the Rules in a WebACL.   The Rules that you want to add and/or delete. If you want to replace one Rule with another, you delete the existing Rule and add the new one.   For each Rule, whether you want AWS WAF to allow requests, block requests, or count requests that match the conditions in the Rule.   The order in which you want AWS WAF to evaluate the Rules in a WebACL. If you add more than one Rule to a WebACL, AWS WAF evaluates each request against the Rules in order based on the value of Priority. (The Rule that has the lowest value for Priority is evaluated first.) When a web request matches all of the predicates (such as ByteMatchSets and IPSets) in a Rule, AWS WAF immediately takes the corresponding action, allow or block, and doesn't evaluate the request against the remaining Rules in the WebACL, if any.    To create and configure a WebACL, perform the following steps:   Create and update the predicates that you want to include in Rules. For more information, see CreateByteMatchSet, UpdateByteMatchSet, CreateIPSet, UpdateIPSet, CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.   Create and update the Rules that you want to include in the WebACL. For more information, see CreateRule and UpdateRule.   Create a WebACL. See CreateWebACL.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateWebACL request.   Submit an UpdateWebACL request to specify the Rules that you want to include in the WebACL, to specify the default action, and to associate the WebACL with a CloudFront distribution.    For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func updateWebACL(_ input: UpdateWebACLRequest) throws -> UpdateWebACLResponse {
        return try client.send(operation: "UpdateWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the status of a ChangeToken that you got by calling GetChangeToken. ChangeTokenStatus is one of the following values:    PROVISIONED: You requested the change token by calling GetChangeToken, but you haven't used it yet in a call to create, update, or delete an AWS WAF object.    PENDING: AWS WAF is propagating the create, update, or delete request to all AWS WAF servers.    IN_SYNC: Propagation is complete.  
    public func getChangeTokenStatus(_ input: GetChangeTokenStatusRequest) throws -> GetChangeTokenStatusResponse {
        return try client.send(operation: "GetChangeTokenStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.  GetSampledRequests returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, GetSampledRequests returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.
    public func getSampledRequests(_ input: GetSampledRequestsRequest) throws -> GetSampledRequestsResponse {
        return try client.send(operation: "GetSampledRequests", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inserts or deletes IPSetDescriptor objects in an IPSet. For each IPSetDescriptor object, you specify the following values:    Whether to insert or delete the object from the array. If you want to change an IPSetDescriptor object, you delete the existing object and add a new one.   The IP address version, IPv4 or IPv6.    The IP address in CIDR notation, for example, 192.0.2.0/24 (for the range of IP addresses from 192.0.2.0 to 192.0.2.255) or 192.0.2.44/32 (for the individual IP address 192.0.2.44).    AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6. For more information about CIDR notation, see the Wikipedia entry Classless Inter-Domain Routing. IPv6 addresses can be represented using any of the following formats:   1111:0000:0000:0000:0000:0000:0000:0111/128   1111:0:0:0:0:0:0:0111/128   1111::0111/128   1111::111/128   You use an IPSet to specify which web requests you want to allow or block based on the IP addresses that the requests originated from. For example, if you're receiving a lot of requests from one or a small number of IP addresses and you want to block the requests, you can create an IPSet that specifies those IP addresses, and then configure AWS WAF to block the requests.  To create and configure an IPSet, perform the following steps:   Submit a CreateIPSet request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateIPSet request.   Submit an UpdateIPSet request to specify the IP addresses that you want AWS WAF to watch for.   When you update an IPSet, you specify the IP addresses that you want to add and/or the IP addresses that you want to delete. If you want to change an IP address, you delete the existing IP address and add the new one. For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func updateIPSet(_ input: UpdateIPSetRequest) throws -> UpdateIPSetResponse {
        return try client.send(operation: "UpdateIPSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inserts or deletes Predicate objects in a Rule. Each Predicate object identifies a predicate, such as a ByteMatchSet or an IPSet, that specifies the web requests that you want to allow, block, or count. If you add more than one predicate to a Rule, a request must match all of the specifications to be allowed, blocked, or counted. For example, suppose you add the following to a Rule:    A ByteMatchSet that matches the value BadBot in the User-Agent header   An IPSet that matches the IP address 192.0.2.44    You then add the Rule to a WebACL and specify that you want to block requests that satisfy the Rule. For a request to be blocked, the User-Agent header in the request must contain the value BadBot and the request must originate from the IP address 192.0.2.44. To create and configure a Rule, perform the following steps:   Create and update the predicates that you want to include in the Rule.   Create the Rule. See CreateRule.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateRule request.   Submit an UpdateRule request to add predicates to the Rule.   Create and update a WebACL that contains the Rule. See CreateWebACL.   If you want to replace one ByteMatchSet or IPSet with another, you delete the existing one and add the new one. For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func updateRule(_ input: UpdateRuleRequest) throws -> UpdateRuleResponse {
        return try client.send(operation: "UpdateRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Rule, which contains the IPSet objects, ByteMatchSet objects, and other predicates that identify the requests that you want to block. If you add more than one predicate to a Rule, a request must match all of the specifications to be allowed or blocked. For example, suppose you add the following to a Rule:   An IPSet that matches the IP address 192.0.2.44/32    A ByteMatchSet that matches BadBot in the User-Agent header   You then add the Rule to a WebACL and specify that you want to blocks requests that satisfy the Rule. For a request to be blocked, it must come from the IP address 192.0.2.44 and the User-Agent header in the request must contain the value BadBot. To create and configure a Rule, perform the following steps:   Create and update the predicates that you want to include in the Rule. For more information, see CreateByteMatchSet, CreateIPSet, and CreateSqlInjectionMatchSet.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a CreateRule request.   Submit a CreateRule request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateRule request.   Submit an UpdateRule request to specify the predicates that you want to include in the Rule.   Create and update a WebACL that contains the Rule. For more information, see CreateWebACL.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func createRule(_ input: CreateRuleRequest) throws -> CreateRuleResponse {
        return try client.send(operation: "CreateRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes a ByteMatchSet. You can't delete a ByteMatchSet if it's still used in any Rules or if it still includes any ByteMatchTuple objects (any filters). If you just want to remove a ByteMatchSet from a Rule, use UpdateRule. To permanently delete a ByteMatchSet, perform the following steps:   Update the ByteMatchSet to remove filters, if any. For more information, see UpdateByteMatchSet.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a DeleteByteMatchSet request.   Submit a DeleteByteMatchSet request.  
    public func deleteByteMatchSet(_ input: DeleteByteMatchSetRequest) throws -> DeleteByteMatchSetResponse {
        return try client.send(operation: "DeleteByteMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the IPSet that is specified by IPSetId.
    public func getIPSet(_ input: GetIPSetRequest) throws -> GetIPSetResponse {
        return try client.send(operation: "GetIPSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of XssMatchSet objects.
    public func listXssMatchSets(_ input: ListXssMatchSetsRequest) throws -> ListXssMatchSetsResponse {
        return try client.send(operation: "ListXssMatchSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes a SizeConstraintSet. You can't delete a SizeConstraintSet if it's still used in any Rules or if it still includes any SizeConstraint objects (any filters). If you just want to remove a SizeConstraintSet from a Rule, use UpdateRule. To permanently delete a SizeConstraintSet, perform the following steps:   Update the SizeConstraintSet to remove filters, if any. For more information, see UpdateSizeConstraintSet.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a DeleteSizeConstraintSet request.   Submit a DeleteSizeConstraintSet request.  
    public func deleteSizeConstraintSet(_ input: DeleteSizeConstraintSetRequest) throws -> DeleteSizeConstraintSetResponse {
        return try client.send(operation: "DeleteSizeConstraintSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of IPSetSummary objects in the response.
    public func listIPSets(_ input: ListIPSetsRequest) throws -> ListIPSetsResponse {
        return try client.send(operation: "ListIPSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the ByteMatchSet specified by ByteMatchSetId.
    public func getByteMatchSet(_ input: GetByteMatchSetRequest) throws -> GetByteMatchSetResponse {
        return try client.send(operation: "GetByteMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a SizeConstraintSet. You then use UpdateSizeConstraintSet to identify the part of a web request that you want AWS WAF to check for length, such as the length of the User-Agent header or the length of the query string. For example, you can create a SizeConstraintSet that matches any requests that have a query string that is longer than 100 bytes. You can then configure AWS WAF to reject those requests. To create and configure a SizeConstraintSet, perform the following steps:   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a CreateSizeConstraintSet request.   Submit a CreateSizeConstraintSet request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateSizeConstraintSet request.   Submit an UpdateSizeConstraintSet request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func createSizeConstraintSet(_ input: CreateSizeConstraintSetRequest) throws -> CreateSizeConstraintSetResponse {
        return try client.send(operation: "CreateSizeConstraintSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of SqlInjectionMatchSet objects.
    public func listSqlInjectionMatchSets(_ input: ListSqlInjectionMatchSetsRequest) throws -> ListSqlInjectionMatchSetsResponse {
        return try client.send(operation: "ListSqlInjectionMatchSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inserts or deletes SizeConstraint objects (filters) in a SizeConstraintSet. For each SizeConstraint object, you specify the following values:    Whether to insert or delete the object from the array. If you want to change a SizeConstraintSetUpdate object, you delete the existing object and add a new one.   The part of a web request that you want AWS WAF to evaluate, such as the length of a query string or the length of the User-Agent header.   Whether to perform any transformations on the request, such as converting it to lowercase, before checking its length. Note that transformations of the request body are not supported because the AWS resource forwards only the first 8192 bytes of your request to AWS WAF.   A ComparisonOperator used for evaluating the selected part of the request against the specified Size, such as equals, greater than, less than, and so on.   The length, in bytes, that you want AWS WAF to watch for in selected part of the request. The length is computed after applying the transformation.   For example, you can add a SizeConstraintSetUpdate object that matches web requests in which the length of the User-Agent header is greater than 100 bytes. You can then configure AWS WAF to block those requests. To create and configure a SizeConstraintSet, perform the following steps:   Create a SizeConstraintSet. For more information, see CreateSizeConstraintSet.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateSizeConstraintSet request.   Submit an UpdateSizeConstraintSet request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func updateSizeConstraintSet(_ input: UpdateSizeConstraintSetRequest) throws -> UpdateSizeConstraintSetResponse {
        return try client.send(operation: "UpdateSizeConstraintSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inserts or deletes XssMatchTuple objects (filters) in an XssMatchSet. For each XssMatchTuple object, you specify the following values:    Action: Whether to insert the object into or delete the object from the array. To change a XssMatchTuple, you delete the existing object and add a new one.    FieldToMatch: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header, the name of the header.    TextTransformation: Which text transformation, if any, to perform on the web request before inspecting the request for cross-site scripting attacks.   You use XssMatchSet objects to specify which CloudFront requests you want to allow, block, or count. For example, if you're receiving requests that contain cross-site scripting attacks in the request body and you want to block the requests, you can create an XssMatchSet with the applicable settings, and then configure AWS WAF to block the requests.  To create and configure an XssMatchSet, perform the following steps:   Submit a CreateXssMatchSet request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateIPSet request.   Submit an UpdateXssMatchSet request to specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func updateXssMatchSet(_ input: UpdateXssMatchSetRequest) throws -> UpdateXssMatchSetResponse {
        return try client.send(operation: "UpdateXssMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inserts or deletes SqlInjectionMatchTuple objects (filters) in a SqlInjectionMatchSet. For each SqlInjectionMatchTuple object, you specify the following values:    Action: Whether to insert the object into or delete the object from the array. To change a SqlInjectionMatchTuple, you delete the existing object and add a new one.    FieldToMatch: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header, the name of the header.    TextTransformation: Which text transformation, if any, to perform on the web request before inspecting the request for snippets of malicious SQL code.   You use SqlInjectionMatchSet objects to specify which CloudFront requests you want to allow, block, or count. For example, if you're receiving requests that contain snippets of SQL code in the query string and you want to block the requests, you can create a SqlInjectionMatchSet with the applicable settings, and then configure AWS WAF to block the requests.  To create and configure a SqlInjectionMatchSet, perform the following steps:   Submit a CreateSqlInjectionMatchSet request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateIPSet request.   Submit an UpdateSqlInjectionMatchSet request to specify the parts of web requests that you want AWS WAF to inspect for snippets of SQL code.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func updateSqlInjectionMatchSet(_ input: UpdateSqlInjectionMatchSetRequest) throws -> UpdateSqlInjectionMatchSetResponse {
        return try client.send(operation: "UpdateSqlInjectionMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a WebACL, which contains the Rules that identify the CloudFront web requests that you want to allow, block, or count. AWS WAF evaluates Rules in order based on the value of Priority for each Rule. You also specify a default action, either ALLOW or BLOCK. If a web request doesn't match any of the Rules in a WebACL, AWS WAF responds to the request with the default action.  To create and configure a WebACL, perform the following steps:   Create and update the ByteMatchSet objects and other predicates that you want to include in Rules. For more information, see CreateByteMatchSet, UpdateByteMatchSet, CreateIPSet, UpdateIPSet, CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.   Create and update the Rules that you want to include in the WebACL. For more information, see CreateRule and UpdateRule.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a CreateWebACL request.   Submit a CreateWebACL request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateWebACL request.   Submit an UpdateWebACL request to specify the Rules that you want to include in the WebACL, to specify the default action, and to associate the WebACL with a CloudFront distribution.   For more information about how to use the AWS WAF API, see the AWS WAF Developer Guide.
    public func createWebACL(_ input: CreateWebACLRequest) throws -> CreateWebACLResponse {
        return try client.send(operation: "CreateWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the XssMatchSet that is specified by XssMatchSetId.
    public func getXssMatchSet(_ input: GetXssMatchSetRequest) throws -> GetXssMatchSetResponse {
        return try client.send(operation: "GetXssMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the WebACL that is specified by WebACLId.
    public func getWebACL(_ input: GetWebACLRequest) throws -> GetWebACLResponse {
        return try client.send(operation: "GetWebACL", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes an XssMatchSet. You can't delete an XssMatchSet if it's still used in any Rules or if it still contains any XssMatchTuple objects. If you just want to remove an XssMatchSet from a Rule, use UpdateRule. To permanently delete an XssMatchSet from AWS WAF, perform the following steps:   Update the XssMatchSet to remove filters, if any. For more information, see UpdateXssMatchSet.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a DeleteXssMatchSet request.   Submit a DeleteXssMatchSet request.  
    public func deleteXssMatchSet(_ input: DeleteXssMatchSetRequest) throws -> DeleteXssMatchSetResponse {
        return try client.send(operation: "DeleteXssMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes an IPSet. You can't delete an IPSet if it's still used in any Rules or if it still includes any IP addresses. If you just want to remove an IPSet from a Rule, use UpdateRule. To permanently delete an IPSet from AWS WAF, perform the following steps:   Update the IPSet to remove IP address ranges, if any. For more information, see UpdateIPSet.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a DeleteIPSet request.   Submit a DeleteIPSet request.  
    public func deleteIPSet(_ input: DeleteIPSetRequest) throws -> DeleteIPSetResponse {
        return try client.send(operation: "DeleteIPSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request. Change tokens ensure that your application doesn't submit conflicting requests to AWS WAF. Each create, update, or delete request must use a unique change token. If your application submits a GetChangeToken request and then submits a second GetChangeToken request before submitting a create, update, or delete request, the second GetChangeToken request returns the same value as the first GetChangeToken request. When you use a change token in a create, update, or delete request, the status of the change token changes to PENDING, which indicates that AWS WAF is propagating the change to all AWS WAF servers. Use GetChangeTokenStatus to determine the status of your change token.
    public func getChangeToken(_ input: GetChangeTokenRequest) throws -> GetChangeTokenResponse {
        return try client.send(operation: "GetChangeToken", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes a Rule. You can't delete a Rule if it's still used in any WebACL objects or if it still includes any predicates, such as ByteMatchSet objects. If you just want to remove a Rule from a WebACL, use UpdateWebACL. To permanently delete a Rule from AWS WAF, perform the following steps:   Update the Rule to remove predicates, if any. For more information, see UpdateRule.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a DeleteRule request.   Submit a DeleteRule request.  
    public func deleteRule(_ input: DeleteRuleRequest) throws -> DeleteRuleResponse {
        return try client.send(operation: "DeleteRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the SizeConstraintSet specified by SizeConstraintSetId.
    public func getSizeConstraintSet(_ input: GetSizeConstraintSetRequest) throws -> GetSizeConstraintSetResponse {
        return try client.send(operation: "GetSizeConstraintSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the SqlInjectionMatchSet that is specified by SqlInjectionMatchSetId.
    public func getSqlInjectionMatchSet(_ input: GetSqlInjectionMatchSetRequest) throws -> GetSqlInjectionMatchSetResponse {
        return try client.send(operation: "GetSqlInjectionMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the Rule that is specified by the RuleId that you included in the GetRule request.
    public func getRule(_ input: GetRuleRequest) throws -> GetRuleResponse {
        return try client.send(operation: "GetRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an XssMatchSet, which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings. To create and configure an XssMatchSet, perform the following steps:   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a CreateXssMatchSet request.   Submit a CreateXssMatchSet request.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of an UpdateXssMatchSet request.   Submit an UpdateXssMatchSet request to specify the parts of web requests in which you want to allow, block, or count cross-site scripting attacks.   For more information about how to use the AWS WAF API to allow or block HTTP requests, see the AWS WAF Developer Guide.
    public func createXssMatchSet(_ input: CreateXssMatchSetRequest) throws -> CreateXssMatchSetResponse {
        return try client.send(operation: "CreateXssMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes a SqlInjectionMatchSet. You can't delete a SqlInjectionMatchSet if it's still used in any Rules or if it still contains any SqlInjectionMatchTuple objects. If you just want to remove a SqlInjectionMatchSet from a Rule, use UpdateRule. To permanently delete a SqlInjectionMatchSet from AWS WAF, perform the following steps:   Update the SqlInjectionMatchSet to remove filters, if any. For more information, see UpdateSqlInjectionMatchSet.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a DeleteSqlInjectionMatchSet request.   Submit a DeleteSqlInjectionMatchSet request.  
    public func deleteSqlInjectionMatchSet(_ input: DeleteSqlInjectionMatchSetRequest) throws -> DeleteSqlInjectionMatchSetResponse {
        return try client.send(operation: "DeleteSqlInjectionMatchSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes a WebACL. You can't delete a WebACL if it still contains any Rules. To delete a WebACL, perform the following steps:   Update the WebACL to remove Rules, if any. For more information, see UpdateWebACL.   Use GetChangeToken to get the change token that you provide in the ChangeToken parameter of a DeleteWebACL request.   Submit a DeleteWebACL request.  
    public func deleteWebACL(_ input: DeleteWebACLRequest) throws -> DeleteWebACLResponse {
        return try client.send(operation: "DeleteWebACL", path: "/", httpMethod: "POST", input: input)
    }


}