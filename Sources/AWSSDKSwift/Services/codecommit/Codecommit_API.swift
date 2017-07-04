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
AWS CodeCommit This is the AWS CodeCommit API Reference. This reference provides descriptions of the operations and data types for AWS CodeCommit API along with usage examples. You can use the AWS CodeCommit API to work with the following objects: Repositories, by calling the following:    BatchGetRepositories, which returns information about one or more repositories associated with your AWS account    CreateRepository, which creates an AWS CodeCommit repository    DeleteRepository, which deletes an AWS CodeCommit repository    GetRepository, which returns information about a specified repository    ListRepositories, which lists all AWS CodeCommit repositories associated with your AWS account    UpdateRepositoryDescription, which sets or updates the description of the repository    UpdateRepositoryName, which changes the name of the repository. If you change the name of a repository, no other users of that repository will be able to access it until you send them the new HTTPS or SSH URL to use.   Branches, by calling the following:    CreateBranch, which creates a new branch in a specified repository    GetBranch, which returns information about a specified branch    ListBranches, which lists all branches for a specified repository    UpdateDefaultBranch, which changes the default branch for a repository   Information about committed code in a repository, by calling the following:    GetBlob, which returns the base-64 encoded content of an individual Git blob object within a repository    GetCommit, which returns information about a commit, including commit messages and author and committer information    GetDifferences, which returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference)   Triggers, by calling the following:    GetRepositoryTriggers, which returns information about triggers configured for a repository    PutRepositoryTriggers, which replaces all triggers for a repository and can be used to create or delete triggers    TestRepositoryTriggers, which tests the functionality of a repository trigger by sending data to the trigger target   For information about how to use AWS CodeCommit, see the AWS CodeCommit User Guide.
*/
public struct Codecommit {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "CodeCommit_20150413",
            service: "codecommit",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-04-13",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CodecommitError.self]
        )
    }

    ///  Creates a new branch in a repository and points the branch to a commit.  Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation. 
    public func createBranch(_ input: CreateBranchInput) throws {
        _ = try client.send(operation: "CreateBranch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference). Results can be limited to a specified path.
    public func getDifferences(_ input: GetDifferencesInput) throws -> GetDifferencesOutput {
        return try client.send(operation: "GetDifferences", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new, empty repository.
    public func createRepository(_ input: CreateRepositoryInput) throws -> CreateRepositoryOutput {
        return try client.send(operation: "CreateRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets or changes the comment or description for a repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page. 
    public func updateRepositoryDescription(_ input: UpdateRepositoryDescriptionInput) throws {
        _ = try client.send(operation: "UpdateRepositoryDescription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more branches in a repository.
    public func listBranches(_ input: ListBranchesInput) throws -> ListBranchesOutput {
        return try client.send(operation: "ListBranches", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets or changes the default branch name for the specified repository.  If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change. 
    public func updateDefaultBranch(_ input: UpdateDefaultBranchInput) throws {
        _ = try client.send(operation: "UpdateDefaultBranch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more repositories.
    public func listRepositories(_ input: ListRepositoriesInput) throws -> ListRepositoriesOutput {
        return try client.send(operation: "ListRepositories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test will send data from the last commit. If no data is available, sample data will be generated.
    public func testRepositoryTriggers(_ input: TestRepositoryTriggersInput) throws -> TestRepositoryTriggersOutput {
        return try client.send(operation: "TestRepositoryTriggers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a repository. If a specified repository was already deleted, a null repository ID will be returned. Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository will fail. 
    public func deleteRepository(_ input: DeleteRepositoryInput) throws -> DeleteRepositoryOutput {
        return try client.send(operation: "DeleteRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about triggers configured for a repository.
    public func getRepositoryTriggers(_ input: GetRepositoryTriggersInput) throws -> GetRepositoryTriggersOutput {
        return try client.send(operation: "GetRepositoryTriggers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a commit, including commit message and committer information.
    public func getCommit(_ input: GetCommitInput) throws -> GetCommitOutput {
        return try client.send(operation: "GetCommit", path: "/", httpMethod: "POST", input: input)
    }

    ///  Replaces all triggers for a repository. This can be used to create or delete triggers.
    public func putRepositoryTriggers(_ input: PutRepositoryTriggersInput) throws -> PutRepositoryTriggersOutput {
        return try client.send(operation: "PutRepositoryTriggers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a repository branch, including its name and the last commit ID.
    public func getBranch(_ input: GetBranchInput) throws -> GetBranchOutput {
        return try client.send(operation: "GetBranch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Renames a repository. The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix ".git" is prohibited. For a full description of the limits on repository names, see Limits in the AWS CodeCommit User Guide.
    public func updateRepositoryName(_ input: UpdateRepositoryNameInput) throws {
        _ = try client.send(operation: "UpdateRepositoryName", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page. 
    public func getRepository(_ input: GetRepositoryInput) throws -> GetRepositoryOutput {
        return try client.send(operation: "GetRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the base-64 encoded content of an individual blob within a repository.
    public func getBlob(_ input: GetBlobInput) throws -> GetBlobOutput {
        return try client.send(operation: "GetBlob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about one or more repositories.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page. 
    public func batchGetRepositories(_ input: BatchGetRepositoriesInput) throws -> BatchGetRepositoriesOutput {
        return try client.send(operation: "BatchGetRepositories", path: "/", httpMethod: "POST", input: input)
    }


}