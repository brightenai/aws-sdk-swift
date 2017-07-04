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
All public APIs for AWS Cost and Usage Report service
*/
public struct Cur {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSOrigamiServiceGatewayService",
            service: "cur",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-01-06",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CurError.self]
        )
    }

    ///  Describe a list of report definitions owned by the account
    public func describeReportDefinitions(_ input: DescribeReportDefinitionsRequest) throws -> DescribeReportDefinitionsResponse {
        return try client.send(operation: "DescribeReportDefinitions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create a new report definition
    public func putReportDefinition(_ input: PutReportDefinitionRequest) throws -> PutReportDefinitionResponse {
        return try client.send(operation: "PutReportDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Delete a specified report definition
    public func deleteReportDefinition(_ input: DeleteReportDefinitionRequest) throws -> DeleteReportDefinitionResponse {
        return try client.send(operation: "DeleteReportDefinition", path: "/", httpMethod: "POST", input: input)
    }


}