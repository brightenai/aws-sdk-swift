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
import AWSSDKSwiftCore

/**
Amazon Simple Email Service  This is the API Reference for Amazon Simple Email Service (Amazon SES). This documentation is intended to be used in conjunction with the Amazon SES Developer Guide.    For a list of Amazon SES endpoints to use in service requests, see Regions and Amazon SES in the Amazon SES Developer Guide.  
*/
public struct Email {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "email",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2010-12-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [EmailError.self]
        )
    }

    ///  Generates and sends a bounce message to the sender of an email you received through Amazon SES. You can only use this API on an email up to 24 hours after you receive it.  You cannot use this API to send generic bounces for mail that was not received by Amazon SES.  For information about receiving email through Amazon SES, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func sendBounce(_ input: SendBounceRequest) throws -> SendBounceResponse {
        return try client.send(operation: "SendBounce", path: "/", httpMethod: "POST", input: input)
    }

    ///  Reorders the receipt rules within a receipt rule set.  All of the rules in the rule set must be represented in this request. That is, this API will return an error if the reorder request doesn't explicitly position all of the rules.  For information about managing receipt rule sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func reorderReceiptRuleSet(_ input: ReorderReceiptRuleSetRequest) throws -> ReorderReceiptRuleSetResponse {
        return try client.send(operation: "ReorderReceiptRuleSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain). This API returns only a list. If you want the actual policy content, you can use GetIdentityPolicies.  This API is for the identity owner only. If you have not verified the identity, this API will return an error.  Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func listIdentityPolicies(_ input: ListIdentityPoliciesRequest) throws -> ListIdentityPoliciesResponse {
        return try client.send(operation: "ListIdentityPolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the details of the specified receipt rule. For information about setting up receipt rules, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func describeReceiptRule(_ input: DescribeReceiptRuleRequest) throws -> DescribeReceiptRuleResponse {
        return try client.send(operation: "DescribeReceiptRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the user's current sending limits. This action is throttled at one request per second.
    public func getSendQuota() throws -> GetSendQuotaResponse {
        return try client.send(operation: "GetSendQuota", path: "/", httpMethod: "POST")
    }

    ///  Given a list of identities (email addresses and/or domains), returns the verification status and (for domain identities) the verification token for each identity. This action is throttled at one request per second and can only get verification attributes for up to 100 identities at a time.
    public func getIdentityVerificationAttributes(_ input: GetIdentityVerificationAttributesRequest) throws -> GetIdentityVerificationAttributesResponse {
        return try client.send(operation: "GetIdentityVerificationAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list containing all of the identities (email addresses and domains) for your AWS account, regardless of verification status. This action is throttled at one request per second.
    public func listIdentities(_ input: ListIdentitiesRequest) throws -> ListIdentitiesResponse {
        return try client.send(operation: "ListIdentities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the metadata and receipt rules for the receipt rule set that is currently active. For information about setting up receipt rule sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func describeActiveReceiptRuleSet(_ input: DescribeActiveReceiptRuleSetRequest) throws -> DescribeActiveReceiptRuleSetResponse {
        return try client.send(operation: "DescribeActiveReceiptRuleSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified email address from the list of verified addresses.  The DeleteVerifiedEmailAddress action is deprecated as of the May 15, 2012 release of Domain Verification. The DeleteIdentity action is now preferred.  This action is throttled at one request per second.
    public func deleteVerifiedEmailAddress(_ input: DeleteVerifiedEmailAddressRequest) throws {
        _ = try client.send(operation: "DeleteVerifiedEmailAddress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the requested sending authorization policies for the given identity (an email address or a domain). The policies are returned as a map of policy names to policy contents. You can retrieve a maximum of 20 policies at a time.  This API is for the identity owner only. If you have not verified the identity, this API will return an error.  Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func getIdentityPolicies(_ input: GetIdentityPoliciesRequest) throws -> GetIdentityPoliciesResponse {
        return try client.send(operation: "GetIdentityPolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Given an identity (an email address or a domain), sets whether Amazon SES includes the original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified type. This action is throttled at one request per second. For more information about using notifications with Amazon SES, see the Amazon SES Developer Guide.
    public func setIdentityHeadersInNotificationsEnabled(_ input: SetIdentityHeadersInNotificationsEnabledRequest) throws -> SetIdentityHeadersInNotificationsEnabledResponse {
        return try client.send(operation: "SetIdentityHeadersInNotificationsEnabled", path: "/", httpMethod: "POST", input: input)
    }

    ///  Verifies an email address. This action causes a confirmation email message to be sent to the specified address.  The VerifyEmailAddress action is deprecated as of the May 15, 2012 release of Domain Verification. The VerifyEmailIdentity action is now preferred.  This action is throttled at one request per second.
    public func verifyEmailAddress(_ input: VerifyEmailAddressRequest) throws {
        _ = try client.send(operation: "VerifyEmailAddress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a set of DKIM tokens for a domain. DKIM tokens are character strings that represent your domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain. This action is throttled at one request per second. To enable or disable Easy DKIM signing for a domain, use the SetIdentityDkimEnabled action. For more information about creating DNS records using DKIM tokens, go to the Amazon SES Developer Guide.
    public func verifyDomainDkim(_ input: VerifyDomainDkimRequest) throws -> VerifyDomainDkimResponse {
        return try client.send(operation: "VerifyDomainDkim", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the current status of Easy DKIM signing for an entity. For domain name identities, this action also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES has successfully verified that these tokens have been published. This action takes a list of identities as input and returns the following information for each:   Whether Easy DKIM signing is enabled or disabled.   A set of DKIM tokens that represent the identity. If the identity is an email address, the tokens represent the domain of that address.   Whether Amazon SES has successfully verified the DKIM tokens published in the domain's DNS. This information is only returned for domain name identities, not for email addresses.   This action is throttled at one request per second and can only get DKIM attributes for up to 100 identities at a time. For more information about creating DNS records using DKIM tokens, go to the Amazon SES Developer Guide.
    public func getIdentityDkimAttributes(_ input: GetIdentityDkimAttributesRequest) throws -> GetIdentityDkimAttributesResponse {
        return try client.send(operation: "GetIdentityDkimAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified receipt rule. For information about managing receipt rules, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func deleteReceiptRule(_ input: DeleteReceiptRuleRequest) throws -> DeleteReceiptRuleResponse {
        return try client.send(operation: "DeleteReceiptRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the specified receipt rule set as the active receipt rule set.  To disable your email-receiving through Amazon SES completely, you can call this API with RuleSetName set to null.  For information about managing receipt rule sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func setActiveReceiptRuleSet(_ input: SetActiveReceiptRuleSetRequest) throws -> SetActiveReceiptRuleSetResponse {
        return try client.send(operation: "SetActiveReceiptRuleSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified identity (an email address or a domain) from the list of verified identities. This action is throttled at one request per second.
    public func deleteIdentity(_ input: DeleteIdentityRequest) throws -> DeleteIdentityResponse {
        return try client.send(operation: "DeleteIdentity", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sends an email message, with header and content specified by the client. The SendRawEmail action is useful for sending multipart MIME emails. The raw text of the message must comply with Internet email standards; otherwise, the message cannot be sent.  There are several important points to know about SendRawEmail:   You can only send email from verified email addresses and domains; otherwise, you will get an "Email address not verified" error. If your account is still in the Amazon SES sandbox, you must also verify every recipient email address except for the recipients provided by the Amazon SES mailbox simulator. For more information, go to the Amazon SES Developer Guide.   The total size of the message cannot exceed 10 MB. This includes any attachments that are part of the message.   Amazon SES has a limit on the total number of recipients per message. The combined number of To:, CC: and BCC: email addresses cannot exceed 50. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call Amazon SES repeatedly to send the message to each group.   The To:, CC:, and BCC: headers in the raw message can contain a group list. Note that each recipient in a group list counts towards the 50-recipient limit.   Amazon SES overrides any Message-ID and Date headers you provide.   For every message that you send, the total number of recipients (To:, CC: and BCC:) is counted against your sending quota - the maximum number of emails you can send in a 24-hour period. For information about your sending quota, go to the Amazon SES Developer Guide.   If you are using sending authorization to send on behalf of another user, SendRawEmail enables you to specify the cross-account identity for the email's "Source," "From," and "Return-Path" parameters in one of two ways: you can pass optional parameters SourceArn, FromArn, and/or ReturnPathArn to the API, or you can include the following X-headers in the header of your raw email:    X-SES-SOURCE-ARN     X-SES-FROM-ARN     X-SES-RETURN-PATH-ARN     Do not include these X-headers in the DKIM signature, because they are removed by Amazon SES before sending the email.  For the most common sending authorization use case, we recommend that you specify the SourceIdentityArn and do not specify either the FromIdentityArn or ReturnPathIdentityArn. (The same note applies to the corresponding X-headers.) If you only specify the SourceIdentityArn, Amazon SES will simply set the "From" address and the "Return Path" address to the identity specified in SourceIdentityArn. For more information about sending authorization, see the Amazon SES Developer Guide.  
    public func sendRawEmail(_ input: SendRawEmailRequest) throws -> SendRawEmailResponse {
        return try client.send(operation: "SendRawEmail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a receipt rule. For information about setting up receipt rules, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func createReceiptRule(_ input: CreateReceiptRuleRequest) throws -> CreateReceiptRuleResponse {
        return try client.send(operation: "CreateReceiptRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified IP address filter. For information about managing IP address filters, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func deleteReceiptFilter(_ input: DeleteReceiptFilterRequest) throws -> DeleteReceiptFilterResponse {
        return try client.send(operation: "DeleteReceiptFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list containing all of the email addresses that have been verified.  The ListVerifiedEmailAddresses action is deprecated as of the May 15, 2012 release of Domain Verification. The ListIdentities action is now preferred.  This action is throttled at one request per second.
    public func listVerifiedEmailAddresses() throws -> ListVerifiedEmailAddressesResponse {
        return try client.send(operation: "ListVerifiedEmailAddresses", path: "/", httpMethod: "POST")
    }

    ///  Returns the user's sending statistics. The result is a list of data points, representing the last two weeks of sending activity. Each data point in the list contains statistics for a 15-minute interval. This action is throttled at one request per second.
    public func getSendStatistics() throws -> GetSendStatisticsResponse {
        return try client.send(operation: "GetSendStatistics", path: "/", httpMethod: "POST")
    }

    ///  Composes an email message based on input data, and then immediately queues the message for sending. There are several important points to know about SendEmail:   You can only send email from verified email addresses and domains; otherwise, you will get an "Email address not verified" error. If your account is still in the Amazon SES sandbox, you must also verify every recipient email address except for the recipients provided by the Amazon SES mailbox simulator. For more information, go to the Amazon SES Developer Guide.   The total size of the message cannot exceed 10 MB. This includes any attachments that are part of the message.   Amazon SES has a limit on the total number of recipients per message. The combined number of To:, CC: and BCC: email addresses cannot exceed 50. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call Amazon SES repeatedly to send the message to each group.   For every message that you send, the total number of recipients (To:, CC: and BCC:) is counted against your sending quota - the maximum number of emails you can send in a 24-hour period. For information about your sending quota, go to the Amazon SES Developer Guide.  
    public func sendEmail(_ input: SendEmailRequest) throws -> SendEmailResponse {
        return try client.send(operation: "SendEmail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Verifies a domain. This action is throttled at one request per second.
    public func verifyDomainIdentity(_ input: VerifyDomainIdentityRequest) throws -> VerifyDomainIdentityResponse {
        return try client.send(operation: "VerifyDomainIdentity", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables or disables Easy DKIM signing of email sent from an identity:   If Easy DKIM signing is enabled for a domain name identity (e.g., example.com), then Amazon SES will DKIM-sign all email sent by addresses under that domain name (e.g., user@example.com).   If Easy DKIM signing is enabled for an email address, then Amazon SES will DKIM-sign all email sent by that email address.   For email addresses (e.g., user@example.com), you can only enable Easy DKIM signing if the corresponding domain (e.g., example.com) has been set up for Easy DKIM using the AWS Console or the VerifyDomainDkim action. This action is throttled at one request per second. For more information about Easy DKIM signing, go to the Amazon SES Developer Guide.
    public func setIdentityDkimEnabled(_ input: SetIdentityDkimEnabledRequest) throws -> SetIdentityDkimEnabledResponse {
        return try client.send(operation: "SetIdentityDkimEnabled", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new IP address filter. For information about setting up IP address filters, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func createReceiptFilter(_ input: CreateReceiptFilterRequest) throws -> CreateReceiptFilterResponse {
        return try client.send(operation: "CreateReceiptFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain).  To send emails using the specified MAIL FROM domain, you must add an MX record to your MAIL FROM domain's DNS settings. If you want your emails to pass Sender Policy Framework (SPF) checks, you must also add or update an SPF record. For more information, see the Amazon SES Developer Guide.  This action is throttled at one request per second.
    public func setIdentityMailFromDomain(_ input: SetIdentityMailFromDomainRequest) throws -> SetIdentityMailFromDomainResponse {
        return try client.send(operation: "SetIdentityMailFromDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest) throws -> DeleteConfigurationSetResponse {
        return try client.send(operation: "DeleteConfigurationSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Given an identity (an email address or a domain), sets the Amazon Simple Notification Service (Amazon SNS) topic to which Amazon SES will publish bounce, complaint, and/or delivery notifications for emails sent with that identity as the Source.  Unless feedback forwarding is enabled, you must specify Amazon SNS topics for bounce and complaint notifications. For more information, see SetIdentityFeedbackForwardingEnabled.  This action is throttled at one request per second. For more information about feedback notification, see the Amazon SES Developer Guide.
    public func setIdentityNotificationTopic(_ input: SetIdentityNotificationTopicRequest) throws -> SetIdentityNotificationTopicResponse {
        return try client.send(operation: "SetIdentityNotificationTopic", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or updates a sending authorization policy for the specified identity (an email address or a domain).  This API is for the identity owner only. If you have not verified the identity, this API will return an error.  Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func putIdentityPolicy(_ input: PutIdentityPolicyRequest) throws -> PutIdentityPolicyResponse {
        return try client.send(operation: "PutIdentityPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a receipt rule set by cloning an existing one. All receipt rules and configurations are copied to the new receipt rule set and are completely independent of the source rule set. For information about setting up rule sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func cloneReceiptRuleSet(_ input: CloneReceiptRuleSetRequest) throws -> CloneReceiptRuleSetResponse {
        return try client.send(operation: "CloneReceiptRuleSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes. This action is throttled at one request per second and can only get notification attributes for up to 100 identities at a time. For more information about using notifications with Amazon SES, see the Amazon SES Developer Guide.
    public func getIdentityNotificationAttributes(_ input: GetIdentityNotificationAttributesRequest) throws -> GetIdentityNotificationAttributesResponse {
        return try client.send(operation: "GetIdentityNotificationAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest) throws -> CreateConfigurationSetResponse {
        return try client.send(operation: "CreateConfigurationSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Given an identity (an email address or a domain), enables or disables whether Amazon SES forwards bounce and complaint notifications as email. Feedback forwarding can only be disabled when Amazon Simple Notification Service (Amazon SNS) topics are specified for both bounces and complaints.  Feedback forwarding does not apply to delivery notifications. Delivery notifications are only available through Amazon SNS.  This action is throttled at one request per second. For more information about using notifications with Amazon SES, see the Amazon SES Developer Guide.
    public func setIdentityFeedbackForwardingEnabled(_ input: SetIdentityFeedbackForwardingEnabledRequest) throws -> SetIdentityFeedbackForwardingEnabledResponse {
        return try client.send(operation: "SetIdentityFeedbackForwardingEnabled", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified receipt rule set and all of the receipt rules it contains.  The currently active rule set cannot be deleted.  For information about managing receipt rule sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func deleteReceiptRuleSet(_ input: DeleteReceiptRuleSetRequest) throws -> DeleteReceiptRuleSetResponse {
        return try client.send(operation: "DeleteReceiptRuleSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the receipt rule sets that exist under your AWS account. If there are additional receipt rule sets to be retrieved, you will receive a NextToken that you can provide to the next call to ListReceiptRuleSets to retrieve the additional entries. For information about managing receipt rule sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func listReceiptRuleSets(_ input: ListReceiptRuleSetsRequest) throws -> ListReceiptRuleSetsResponse {
        return try client.send(operation: "ListReceiptRuleSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the position of the specified receipt rule in the receipt rule set. For information about managing receipt rules, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func setReceiptRulePosition(_ input: SetReceiptRulePositionRequest) throws -> SetReceiptRulePositionResponse {
        return try client.send(operation: "SetReceiptRulePosition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a receipt rule. For information about managing receipt rules, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func updateReceiptRule(_ input: UpdateReceiptRuleRequest) throws -> UpdateReceiptRuleResponse {
        return try client.send(operation: "UpdateReceiptRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the IP address filters associated with your AWS account. For information about managing IP address filters, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func listReceiptFilters(_ input: ListReceiptFiltersRequest) throws -> ListReceiptFiltersResponse {
        return try client.send(operation: "ListReceiptFilters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Verifies an email address. This action causes a confirmation email message to be sent to the specified address. This action is throttled at one request per second.
    public func verifyEmailIdentity(_ input: VerifyEmailIdentityRequest) throws -> VerifyEmailIdentityResponse {
        return try client.send(operation: "VerifyEmailIdentity", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the Amazon SES Developer Guide. This action is throttled at one request per second and can return up to 50 configuration sets at a time.
    public func listConfigurationSets(_ input: ListConfigurationSetsRequest) throws -> ListConfigurationSetsResponse {
        return try client.send(operation: "ListConfigurationSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the details of the specified configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func describeConfigurationSet(_ input: DescribeConfigurationSetRequest) throws -> DescribeConfigurationSetResponse {
        return try client.send(operation: "DescribeConfigurationSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the details of the specified receipt rule set. For information about managing receipt rule sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func describeReceiptRuleSet(_ input: DescribeReceiptRuleSetRequest) throws -> DescribeReceiptRuleSetResponse {
        return try client.send(operation: "DescribeReceiptRuleSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an empty receipt rule set. For information about setting up receipt rule sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func createReceiptRuleSet(_ input: CreateReceiptRuleSetRequest) throws -> CreateReceiptRuleSetResponse {
        return try client.send(operation: "CreateReceiptRuleSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the custom MAIL FROM attributes for a list of identities (email addresses and/or domains). This action is throttled at one request per second and can only get custom MAIL FROM attributes for up to 100 identities at a time.
    public func getIdentityMailFromDomainAttributes(_ input: GetIdentityMailFromDomainAttributesRequest) throws -> GetIdentityMailFromDomainAttributesResponse {
        return try client.send(operation: "GetIdentityMailFromDomainAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified sending authorization policy for the given identity (an email address or a domain). This API returns successfully even if a policy with the specified name does not exist.  This API is for the identity owner only. If you have not verified the identity, this API will return an error.  Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func deleteIdentityPolicy(_ input: DeleteIdentityPolicyRequest) throws -> DeleteIdentityPolicyResponse {
        return try client.send(operation: "DeleteIdentityPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func deleteConfigurationSetEventDestination(_ input: DeleteConfigurationSetEventDestinationRequest) throws -> DeleteConfigurationSetEventDestinationResponse {
        return try client.send(operation: "DeleteConfigurationSetEventDestination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the event destination of a configuration set.  When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.  Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch or Amazon Kinesis Firehose. For information about using configuration sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func updateConfigurationSetEventDestination(_ input: UpdateConfigurationSetEventDestinationRequest) throws -> UpdateConfigurationSetEventDestinationResponse {
        return try client.send(operation: "UpdateConfigurationSetEventDestination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a configuration set event destination.  When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.  An event destination is the AWS service to which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the Amazon SES Developer Guide. This action is throttled at one request per second.
    public func createConfigurationSetEventDestination(_ input: CreateConfigurationSetEventDestinationRequest) throws -> CreateConfigurationSetEventDestinationResponse {
        return try client.send(operation: "CreateConfigurationSetEventDestination", path: "/", httpMethod: "POST", input: input)
    }


}