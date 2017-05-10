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
AWS Certificate Manager Welcome to the AWS Certificate Manager (ACM) API documentation. You can use ACM to manage SSL/TLS certificates for your AWS-based websites and applications. For general information about using ACM, see the  AWS Certificate Manager User Guide .
*/
public struct Acm {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "CertificateManager",
            service: "acm",
            serviceProtocol: .json,
            apiVersion: "2015-12-08",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [AcmError.self]
        )
    }

    ///  Remove one or more tags from an ACM Certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. To add tags to a certificate, use the AddTagsToCertificate action. To view all of the tags that have been applied to a specific ACM Certificate, use the ListTagsForCertificate action.
    public func removeTagsFromCertificate(_ input: RemoveTagsFromCertificateRequest) throws {
        _ = try client.send(operation: "RemoveTagsFromCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an ACM Certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list of ACM Certificates that can be displayed by calling the ListCertificates action or be retrieved by calling the GetCertificate action. The certificate will not be available for use by other AWS services.  You cannot delete an ACM Certificate that is being used by another AWS service. To delete a certificate that is in use, the certificate association must first be removed. 
    public func deleteCertificate(_ input: DeleteCertificateRequest) throws {
        _ = try client.send(operation: "DeleteCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags that have been applied to the ACM Certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM Certificate, use the AddTagsToCertificate action. To delete a tag, use the RemoveTagsFromCertificate action.
    public func listTagsForCertificate(_ input: ListTagsForCertificateRequest) throws -> ListTagsForCertificateResponse {
        return try client.send(operation: "ListTagsForCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves an ACM Certificate and certificate chain for the certificate specified by an ARN. The chain is an ordered list of certificates that contains the root certificate, intermediate certificates of subordinate CAs, and the ACM Certificate. The certificate and certificate chain are base64 encoded. If you want to decode the certificate chain to see the individual certificate fields, you can use OpenSSL.  Currently, ACM Certificates can be used only with Elastic Load Balancing and Amazon CloudFront. 
    public func getCertificate(_ input: GetCertificateRequest) throws -> GetCertificateResponse {
        return try client.send(operation: "GetCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Imports an SSL/TLS certificate into AWS Certificate Manager (ACM) to use with ACM's integrated AWS services.  ACM does not provide managed renewal for certificates that you import.  For more information about importing certificates into ACM, including the differences between certificates that you import and those that ACM provides, see Importing Certificates in the AWS Certificate Manager User Guide. To import a certificate, you must provide the certificate and the matching private key. When the certificate is not self-signed, you must also provide a certificate chain. You can omit the certificate chain when importing a self-signed certificate. The certificate, private key, and certificate chain must be PEM-encoded. For more information about converting these items to PEM format, see Importing Certificates Troubleshooting in the AWS Certificate Manager User Guide. To import a new certificate, omit the CertificateArn field. Include this field only when you want to replace a previously imported certificate. This operation returns the Amazon Resource Name (ARN) of the imported certificate.
    public func importCertificate(_ input: ImportCertificateRequest) throws -> ImportCertificateResponse {
        return try client.send(operation: "ImportCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of ACM Certificates and the domain name for each. You can optionally filter the list to return only the certificates that match the specified status.
    public func listCertificates(_ input: ListCertificatesRequest) throws -> ListCertificatesResponse {
        return try client.send(operation: "ListCertificates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests an ACM Certificate for use with other AWS services. To request an ACM Certificate, you must specify the fully qualified domain name (FQDN) for your site. You can also specify additional FQDNs if users can reach your site by using other names. For each domain name you specify, email is sent to the domain owner to request approval to issue the certificate. After receiving approval from the domain owner, the ACM Certificate is issued. For more information, see the AWS Certificate Manager User Guide.
    public func requestCertificate(_ input: RequestCertificateRequest) throws -> RequestCertificateResponse {
        return try client.send(operation: "RequestCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more tags to an ACM Certificate. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM Certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see Tagging ACM Certificates. To remove one or more tags, use the RemoveTagsFromCertificate action. To view all of the tags that have been applied to the certificate, use the ListTagsForCertificate action.
    public func addTagsToCertificate(_ input: AddTagsToCertificateRequest) throws {
        _ = try client.send(operation: "AddTagsToCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM Certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking I Approve. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM Certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate.
    public func resendValidationEmail(_ input: ResendValidationEmailRequest) throws {
        _ = try client.send(operation: "ResendValidationEmail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns detailed metadata about the specified ACM Certificate.
    public func describeCertificate(_ input: DescribeCertificateRequest) throws -> DescribeCertificateResponse {
        return try client.send(operation: "DescribeCertificate", path: "/", httpMethod: "POST", input: input)
    }


}