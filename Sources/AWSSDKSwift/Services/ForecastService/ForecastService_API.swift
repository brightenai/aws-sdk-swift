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
Client object for interacting with AWS ForecastService service.

Provides APIs for creating and managing Amazon Forecast resources.
*/
public struct ForecastService {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the ForecastService client
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
            amzTarget: "AmazonForecast",
            service: "forecast",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-06-26",
            endpoint: endpoint,
            possibleErrorTypes: [ForecastServiceErrorType.self]
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

    ///  Creates an Amazon Forecast dataset. The information about the dataset that you provide helps Forecast understand how to consume the data for model training. This includes the following:     DataFrequency  - How frequently your historical time-series data is collected.     Domain  and  DatasetType  - Each dataset has an associated dataset domain and a type within the domain. Amazon Forecast provides a list of predefined domains and types within each domain. For each unique dataset domain and type within the domain, Amazon Forecast requires your data to include a minimum set of predefined fields.     Schema  - A schema specifies the fields in the dataset, including the field name and data type.   After creating a dataset, you import your training data into it and add the dataset to a dataset group. You use the dataset group to create a predictor. For more information, see howitworks-datasets-groups. To get a list of all your datasets, use the ListDatasets operation. For example Forecast datasets, see the Amazon Forecast Sample GitHub repository.  The Status of a dataset must be ACTIVE before you can import training data. Use the DescribeDataset operation to get the status. 
    public func createDataset(_ input: CreateDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetResponse> {
        return client.send(operation: "CreateDataset", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a dataset group, which holds a collection of related datasets. You can add datasets to the dataset group when you create the dataset group, or later by using the UpdateDatasetGroup operation. After creating a dataset group and adding datasets, you use the dataset group when you create a predictor. For more information, see howitworks-datasets-groups. To get a list of all your datasets groups, use the ListDatasetGroups operation.  The Status of a dataset group must be ACTIVE before you can create use the dataset group to create a predictor. To get the status, use the DescribeDatasetGroup operation. 
    public func createDatasetGroup(_ input: CreateDatasetGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetGroupResponse> {
        return client.send(operation: "CreateDatasetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Imports your training data to an Amazon Forecast dataset. You provide the location of your training data in an Amazon Simple Storage Service (Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset that you want to import the data to. You must specify a DataSource object that includes an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the data. For more information, see aws-forecast-iam-roles. The training data must be in CSV format. The delimiter must be a comma (,). You can specify the path to a specific CSV file, the S3 bucket, or to a folder in the S3 bucket. For the latter two cases, Amazon Forecast imports all files up to the limit of 10,000 files. To get a list of all your dataset import jobs, filtered by specified criteria, use the ListDatasetImportJobs operation.
    public func createDatasetImportJob(_ input: CreateDatasetImportJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetImportJobResponse> {
        return client.send(operation: "CreateDatasetImportJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a forecast for each item in the TARGET_TIME_SERIES dataset that was used to train the predictor. This is known as inference. To retrieve the forecast for a single item at low latency, use the operation. To export the complete forecast into your Amazon Simple Storage Service (Amazon S3) bucket, use the CreateForecastExportJob operation. The range of the forecast is determined by the ForecastHorizon value, which you specify in the CreatePredictor request, multiplied by the DataFrequency value, which you specify in the CreateDataset request. When you query a forecast, you can request a specific date range within the forecast. To get a list of all your forecasts, use the ListForecasts operation.  The forecasts generated by Amazon Forecast are in the same time zone as the dataset that was used to create the predictor.  For more information, see howitworks-forecast.  The Status of the forecast must be ACTIVE before you can query or export the forecast. Use the DescribeForecast operation to get the status. 
    public func createForecast(_ input: CreateForecastRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateForecastResponse> {
        return client.send(operation: "CreateForecast", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Exports a forecast created by the CreateForecast operation to your Amazon Simple Storage Service (Amazon S3) bucket. The forecast file name will match the following conventions: &lt;ForecastExportJobName&gt;_&lt;ExportTimestamp&gt;_&lt;PageNumber&gt; where the &lt;ExportTimestamp&gt; component is in Java SimpleDateFormat (yyyy-MM-ddTHH-mm-ssZ). You must specify a DataDestination object that includes an AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access the Amazon S3 bucket. For more information, see aws-forecast-iam-roles. For more information, see howitworks-forecast. To get a list of all your forecast export jobs, use the ListForecastExportJobs operation.  The Status of the forecast export job must be ACTIVE before you can access the forecast in your Amazon S3 bucket. To get the status, use the DescribeForecastExportJob operation. 
    public func createForecastExportJob(_ input: CreateForecastExportJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateForecastExportJobResponse> {
        return client.send(operation: "CreateForecastExportJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an Amazon Forecast predictor. In the request, you provide a dataset group and either specify an algorithm or let Amazon Forecast choose the algorithm for you using AutoML. If you specify an algorithm, you also can override algorithm-specific hyperparameters. Amazon Forecast uses the chosen algorithm to train a model using the latest version of the datasets in the specified dataset group. The result is called a predictor. You then generate a forecast using the CreateForecast operation. After training a model, the CreatePredictor operation also evaluates it. To see the evaluation metrics, use the GetAccuracyMetrics operation. Always review the evaluation metrics before deciding to use the predictor to generate a forecast. Optionally, you can specify a featurization configuration to fill and aggregate the data fields in the TARGET_TIME_SERIES dataset to improve model training. For more information, see FeaturizationConfig. For RELATED_TIME_SERIES datasets, CreatePredictor verifies that the DataFrequency specified when the dataset was created matches the ForecastFrequency. TARGET_TIME_SERIES datasets don't have this restriction. Amazon Forecast also verifies the delimiter and timestamp format. For more information, see howitworks-datasets-groups.  AutoML  If you want Amazon Forecast to evaluate each algorithm and choose the one that minimizes the objective function, set PerformAutoML to true. The objective function is defined as the mean of the weighted p10, p50, and p90 quantile losses. For more information, see EvaluationResult. When AutoML is enabled, the following properties are disallowed:    AlgorithmArn     HPOConfig     PerformHPO     TrainingParameters    To get a list of all of your predictors, use the ListPredictors operation.  Before you can use the predictor to create a forecast, the Status of the predictor must be ACTIVE, signifying that training has completed. To get the status, use the DescribePredictor operation. 
    public func createPredictor(_ input: CreatePredictorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePredictorResponse> {
        return client.send(operation: "CreatePredictor", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an Amazon Forecast dataset that was created using the CreateDataset operation. You can only delete datasets that have a status of ACTIVE or CREATE_FAILED. To get the status use the DescribeDataset operation.
    @discardableResult public func deleteDataset(_ input: DeleteDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDataset", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a dataset group created using the CreateDatasetGroup operation. You can only delete dataset groups that have a status of ACTIVE, CREATE_FAILED, or UPDATE_FAILED. To get the status, use the DescribeDatasetGroup operation. This operation deletes only the dataset group, not the datasets in the group.
    @discardableResult public func deleteDatasetGroup(_ input: DeleteDatasetGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDatasetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a dataset import job created using the CreateDatasetImportJob operation. You can delete only dataset import jobs that have a status of ACTIVE or CREATE_FAILED. To get the status, use the DescribeDatasetImportJob operation.
    @discardableResult public func deleteDatasetImportJob(_ input: DeleteDatasetImportJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDatasetImportJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a forecast created using the CreateForecast operation. You can delete only forecasts that have a status of ACTIVE or CREATE_FAILED. To get the status, use the DescribeForecast operation. You can't delete a forecast while it is being exported. After a forecast is deleted, you can no longer query the forecast.
    @discardableResult public func deleteForecast(_ input: DeleteForecastRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteForecast", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a forecast export job created using the CreateForecastExportJob operation. You can delete only export jobs that have a status of ACTIVE or CREATE_FAILED. To get the status, use the DescribeForecastExportJob operation.
    @discardableResult public func deleteForecastExportJob(_ input: DeleteForecastExportJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteForecastExportJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a predictor created using the CreatePredictor operation. You can delete only predictor that have a status of ACTIVE or CREATE_FAILED. To get the status, use the DescribePredictor operation.
    @discardableResult public func deletePredictor(_ input: DeletePredictorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeletePredictor", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes an Amazon Forecast dataset created using the CreateDataset operation. In addition to listing the parameters specified in the CreateDataset request, this operation includes the following dataset properties:    CreationTime     LastModificationTime     Status   
    public func describeDataset(_ input: DescribeDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetResponse> {
        return client.send(operation: "DescribeDataset", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a dataset group created using the CreateDatasetGroup operation. In addition to listing the parameters provided in the CreateDatasetGroup request, this operation includes the following properties:    DatasetArns - The datasets belonging to the group.    CreationTime     LastModificationTime     Status   
    public func describeDatasetGroup(_ input: DescribeDatasetGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetGroupResponse> {
        return client.send(operation: "DescribeDatasetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a dataset import job created using the CreateDatasetImportJob operation. In addition to listing the parameters provided in the CreateDatasetImportJob request, this operation includes the following properties:    CreationTime     LastModificationTime     DataSize     FieldStatistics     Status     Message - If an error occurred, information about the error.  
    public func describeDatasetImportJob(_ input: DescribeDatasetImportJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetImportJobResponse> {
        return client.send(operation: "DescribeDatasetImportJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a forecast created using the CreateForecast operation. In addition to listing the properties provided in the CreateForecast request, this operation lists the following properties:    DatasetGroupArn - The dataset group that provided the training data.    CreationTime     LastModificationTime     Status     Message - If an error occurred, information about the error.  
    public func describeForecast(_ input: DescribeForecastRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeForecastResponse> {
        return client.send(operation: "DescribeForecast", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a forecast export job created using the CreateForecastExportJob operation. In addition to listing the properties provided by the user in the CreateForecastExportJob request, this operation lists the following properties:    CreationTime     LastModificationTime     Status     Message - If an error occurred, information about the error.  
    public func describeForecastExportJob(_ input: DescribeForecastExportJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeForecastExportJobResponse> {
        return client.send(operation: "DescribeForecastExportJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a predictor created using the CreatePredictor operation. In addition to listing the properties provided in the CreatePredictor request, this operation lists the following properties:    DatasetImportJobArns - The dataset import jobs used to import training data.    AutoMLAlgorithmArns - If AutoML is performed, the algorithms that were evaluated.    CreationTime     LastModificationTime     Status     Message - If an error occurred, information about the error.  
    public func describePredictor(_ input: DescribePredictorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePredictorResponse> {
        return client.send(operation: "DescribePredictor", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provides metrics on the accuracy of the models that were trained by the CreatePredictor operation. Use metrics to see how well the model performed and to decide whether to use the predictor to generate a forecast. For more information, see metrics. This operation generates metrics for each backtest window that was evaluated. The number of backtest windows (NumberOfBacktestWindows) is specified using the EvaluationParameters object, which is optionally included in the CreatePredictor request. If NumberOfBacktestWindows isn't specified, the number defaults to one. The parameters of the filling method determine which items contribute to the metrics. If you want all items to contribute, specify zero. If you want only those items that have complete data in the range being evaluated to contribute, specify nan. For more information, see FeaturizationMethod.  Before you can get accuracy metrics, the Status of the predictor must be ACTIVE, signifying that training has completed. To get the status, use the DescribePredictor operation. 
    public func getAccuracyMetrics(_ input: GetAccuracyMetricsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAccuracyMetricsResponse> {
        return client.send(operation: "GetAccuracyMetrics", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of dataset groups created using the CreateDatasetGroup operation. For each dataset group, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the dataset group ARN with the DescribeDatasetGroup operation.
    public func listDatasetGroups(_ input: ListDatasetGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetGroupsResponse> {
        return client.send(operation: "ListDatasetGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of dataset import jobs created using the CreateDatasetImportJob operation. For each import job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the DescribeDatasetImportJob operation. You can filter the list by providing an array of Filter objects.
    public func listDatasetImportJobs(_ input: ListDatasetImportJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetImportJobsResponse> {
        return client.send(operation: "ListDatasetImportJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of datasets created using the CreateDataset operation. For each dataset, a summary of its properties, including its Amazon Resource Name (ARN), is returned. To retrieve the complete set of properties, use the ARN with the DescribeDataset operation.
    public func listDatasets(_ input: ListDatasetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetsResponse> {
        return client.send(operation: "ListDatasets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of forecast export jobs created using the CreateForecastExportJob operation. For each forecast export job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, use the ARN with the DescribeForecastExportJob operation. You can filter the list using an array of Filter objects.
    public func listForecastExportJobs(_ input: ListForecastExportJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListForecastExportJobsResponse> {
        return client.send(operation: "ListForecastExportJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of forecasts created using the CreateForecast operation. For each forecast, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, specify the ARN with the DescribeForecast operation. You can filter the list using an array of Filter objects.
    public func listForecasts(_ input: ListForecastsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListForecastsResponse> {
        return client.send(operation: "ListForecasts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of predictors created using the CreatePredictor operation. For each predictor, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the DescribePredictor operation. You can filter the list using an array of Filter objects.
    public func listPredictors(_ input: ListPredictorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPredictorsResponse> {
        return client.send(operation: "ListPredictors", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Replaces the datasets in a dataset group with the specified datasets.  The Status of the dataset group must be ACTIVE before you can use the dataset group to create a predictor. Use the DescribeDatasetGroup operation to get the status. 
    public func updateDatasetGroup(_ input: UpdateDatasetGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDatasetGroupResponse> {
        return client.send(operation: "UpdateDatasetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
