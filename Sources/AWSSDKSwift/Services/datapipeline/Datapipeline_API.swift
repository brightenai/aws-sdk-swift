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
AWS Data Pipeline configures and manages a data-driven workflow called a pipeline. AWS Data Pipeline handles the details of scheduling and ensuring that data dependencies are met so that your application can focus on processing the data. AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for common data management scenarios, such as performing database queries and running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can use AWS Data Pipeline Task Runner as your task runner, or you can write your own task runner to provide custom data management. AWS Data Pipeline implements two main sets of functionality. Use the first set to create a pipeline and define data sources, schedules, dependencies, and the transforms to be performed on the data. Use the second set in your task runner application to receive the next task ready for processing. The logic for performing the task, such as querying the data, running data analysis, or converting the data from one format to another, is contained within the task runner. The task runner performs the task assigned to it by the web service, reporting progress to the web service as it does so. When the task is done, the task runner reports the final success or failure of the task to the web service.
*/
public struct Datapipeline {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "DataPipeline",
            service: "datapipeline",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2012-10-29",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [DatapipelineError.self]
        )
    }

    ///  Task runners call EvaluateExpression to evaluate a string in the context of the specified object. For example, a task runner can evaluate SQL queries stored in Amazon S3.
    public func evaluateExpression(_ input: EvaluateExpressionInput) throws -> EvaluateExpressionOutput {
        return try client.send(operation: "EvaluateExpression", path: "/", httpMethod: "POST", input: input)
    }

    ///  Task runners call PollForTask to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform by setting a value for the workerGroup parameter. The task returned can come from any of the pipelines that match the workerGroup value passed in by the task runner and that was launched using the IAM user credentials specified by the task runner. If tasks are ready in the work queue, PollForTask returns a response immediately. If no tasks are available in the queue, PollForTask uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task runner should not call PollForTask again on the same workerGroup until it receives a response, and this can take up to 90 seconds. 
    public func pollForTask(_ input: PollForTaskInput) throws -> PollForTaskOutput {
        return try client.send(operation: "PollForTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new, empty pipeline. Use PutPipelineDefinition to populate the pipeline.
    public func createPipeline(_ input: CreatePipelineInput) throws -> CreatePipelineOutput {
        return try client.send(operation: "CreatePipeline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a pipeline, its pipeline definition, and its run history. AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners. Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. To temporarily pause a pipeline instead of deleting it, call SetStatus with the status set to PAUSE on individual components. Components that are paused by SetStatus can be resumed.
    public func deletePipeline(_ input: DeletePipelineInput) throws {
        _ = try client.send(operation: "DeletePipeline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or modifies tags for the specified pipeline.
    public func addTags(_ input: AddTagsInput) throws -> AddTagsOutput {
        return try client.send(operation: "AddTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Task runners call ReportTaskRunnerHeartbeat every 15 minutes to indicate that they are operational. If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use this call to detect when the task runner application has failed and restart a new instance.
    public func reportTaskRunnerHeartbeat(_ input: ReportTaskRunnerHeartbeatInput) throws -> ReportTaskRunnerHeartbeatOutput {
        return try client.send(operation: "ReportTaskRunnerHeartbeat", path: "/", httpMethod: "POST", input: input)
    }

    ///  Task runners call SetTaskStatus to notify AWS Data Pipeline that a task is completed and provide information about the final status. A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call SetTaskStatus for tasks that are canceled by the web service during a call to ReportTaskProgress.
    public func setTaskStatus(_ input: SetTaskStatusInput) throws -> SetTaskStatusOutput {
        return try client.send(operation: "SetTaskStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.
    public func describeObjects(_ input: DescribeObjectsInput) throws -> DescribeObjectsOutput {
        return try client.send(operation: "DescribeObjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes existing tags from the specified pipeline.
    public func removeTags(_ input: RemoveTagsInput) throws -> RemoveTagsOutput {
        return try client.send(operation: "RemoveTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the definition of the specified pipeline. You can call GetPipelineDefinition to retrieve the pipeline definition that you provided using PutPipelineDefinition.
    public func getPipelineDefinition(_ input: GetPipelineDefinitionInput) throws -> GetPipelineDefinitionOutput {
        return try client.send(operation: "GetPipelineDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). You cannot perform this operation on FINISHED pipelines and attempting to do so returns InvalidRequestException.
    public func setStatus(_ input: SetStatusInput) throws {
        _ = try client.send(operation: "SetStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deactivates the specified running pipeline. The pipeline is set to the DEACTIVATING state until the deactivation process completes. To resume a deactivated pipeline, use ActivatePipeline. By default, the pipeline resumes from the last completed execution. Optionally, you can specify the date and time to resume the pipeline.
    public func deactivatePipeline(_ input: DeactivatePipelineInput) throws -> DeactivatePipelineOutput {
        return try client.send(operation: "DeactivatePipeline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds tasks, schedules, and preconditions to the specified pipeline. You can use PutPipelineDefinition to populate a new pipeline.  PutPipelineDefinition also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one of the following three validation errors exists in the pipeline.   An object is missing a name or identifier field. A string or reference field is empty. The number of objects in the pipeline exceeds the maximum allowed objects. The pipeline is in a FINISHED state.   Pipeline object definitions are passed to the PutPipelineDefinition action and returned by the GetPipelineDefinition action. 
    public func putPipelineDefinition(_ input: PutPipelineDefinitionInput) throws -> PutPipelineDefinitionOutput {
        return try client.send(operation: "PutPipelineDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the pipeline identifiers for all active pipelines that you have permission to access.
    public func listPipelines(_ input: ListPipelinesInput) throws -> ListPipelinesOutput {
        return try client.send(operation: "ListPipelines", path: "/", httpMethod: "POST", input: input)
    }

    ///  Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, activation fails. If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, call DeactivatePipeline. To activate a finished pipeline, modify the end date for the pipeline and then activate it.
    public func activatePipeline(_ input: ActivatePipelineInput) throws -> ActivatePipelineOutput {
        return try client.send(operation: "ActivatePipeline", path: "/", httpMethod: "POST", input: input)
    }

    ///  Queries the specified pipeline for the names of objects that match the specified set of conditions.
    public func queryObjects(_ input: QueryObjectsInput) throws -> QueryObjectsOutput {
        return try client.send(operation: "QueryObjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Task runners call ReportTaskProgress when assigned a task to acknowledge that it has the task. If the web service does not receive this acknowledgement within 2 minutes, it assigns the task in a subsequent PollForTask call. After this initial acknowledgement, the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time from 15 minutes by specifying a reportProgressTimeout field in your pipeline. If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task and reassigns the task in a subsequent response to PollForTask. Task runners should call ReportTaskProgress every 60 seconds.
    public func reportTaskProgress(_ input: ReportTaskProgressInput) throws -> ReportTaskProgressOutput {
        return try client.send(operation: "ReportTaskProgress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Validates the specified pipeline definition to ensure that it is well formed and can be run without error.
    public func validatePipelineDefinition(_ input: ValidatePipelineDefinitionInput) throws -> ValidatePipelineDefinitionOutput {
        return try client.send(operation: "ValidatePipelineDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier, its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines for which you have read permissions. To retrieve the full pipeline definition instead of metadata about the pipeline, call GetPipelineDefinition.
    public func describePipelines(_ input: DescribePipelinesInput) throws -> DescribePipelinesOutput {
        return try client.send(operation: "DescribePipelines", path: "/", httpMethod: "POST", input: input)
    }


}