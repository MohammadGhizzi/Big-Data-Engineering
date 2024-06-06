# Big Data Engineering Project on Azure

This project aims to gather data from Stack Overflow posts, analyze them, identify the top 5 topics, and categorize these topics into various categories. The data pipeline involves ingestion from multiple data sources, transformation, machine learning model processing, and data visualization using Azure Synapse.

## Table of Contents
- [Project Objective](#project-objective)
- [Project Infrastructure](#project-infrastructure)
- [Data Sources](#data-sources)
- [Data Lake Requirements](#data-lake-requirements)
- [Machine Learning Process Requirements](#machine-learning-process-requirements)
- [Chart Requirements](#chart-requirements)
- [Setup Instructions](#setup-instructions)
- [Running the Project](#running-the-project)
- [File Descriptions](#file-descriptions)
- [Results](#results)
- [Contributing](#contributing)

## Project Objective
The objective of this project is to:
1. Ingest data from Stack Overflow.
2. Analyze the data to identify the top 5 topics.
3. Categorize these topics into various categories.
4. Visualize the distribution of posts across different topic categories using Azure Synapse.

## Project Infrastructure
The project infrastructure includes:
- **Azure Data Lake**: For storing ingested data and results.
- **Azure Data Factory (ADF)**: For creating and managing data pipelines.
- **Azure Synapse**: For data analysis and visualization.
- **Databricks**: For data processing and machine learning model training.

## Data Sources
1. **RDS Postgres Database**:
   - Tables: `Users`, `PostTypes`
   - Update Frequency: Weekly (following SCD type 1)
2. **Azure Storage Blob**:
   - Daily parquet files of `Posts` data

## Data Lake Requirements
1. Create an Azure Data Lake with hierarchical namespace.
2. Set up Azure Data Factory for data ingestion and processing.
3. Ingest `Users` and `PostTypes` tables from RDS Postgres database into the Data Lake (weekly).
4. Ingest daily `Posts` data files from Azure Blob Storage into the Data Lake.

## Machine Learning Process Requirements
1. Create a Databricks notebook for data processing.
2. Train a machine learning model to classify the topics of posts based on their text.
3. Output the machine learning results to the Data Lake.
4. Aggregate and order the topics by their frequency.

## Chart Requirements
1. Create a chart on Azure Synapse based on the machine learning results.
2. Display the top 5 topics of the day.
3. Categorize all the topics into various categories.

## Setup Instructions
1. **Set Up Azure Services**:
   - Create an Azure Data Lake.
   - Set up Azure Data Factory and configure the data pipelines.
      ![PipelinePostDaily](https://github.com/Sultan-Mm/Big-Data-Engineering/assets/109808952/1ba1f951-684b-48c7-b2c3-7be8d86f7531)
      ![Pipeline_Week](https://github.com/Sultan-Mm/Big-Data-Engineering/assets/109808952/cdc04170-2ecc-40c5-ad88-1105c5348b59)

   - Create a Databricks workspace and upload the notebooks.
   - Set up Azure Synapse for data analysis and visualization.


## Running the Project
1. **Mount Storage Container**:
   - Run the `Mount Storage container.ipynb` notebook to mount the Azure Blob Storage.
2. **Data Ingestion and Processing**:
   - Use Azure Data Factory to run the data ingestion pipelines.
3. **Machine Learning Model**:
   - Run the `Model Deployment.ipynb` notebook to process data and train the machine learning model.
4. **Data Visualization**:
   - Run the SQL scripts in Synapse to generate the reports.

## File Descriptions
- **Mount Storage container.ipynb**: Notebook to mount Azure Blob Storage.
- **Model Deployment.ipynb**: Notebook for data processing, model training, and saving results.
- **Training Model.ipynb**: Notebook for training the machine learning model.
- **Synapse code and visualization/**:
  - `top_5_topics_in_the_StackOverFlow.sql`: SQL script to select the top 5 topics.
  - `Categorization.sql`: SQL script to categorize topics and calculate totals.

## Results
The results of this project include:
1. **Top 5 Topics**: A list of the top 5 topics from Stack Overflow posts.
![top 5 topics in the StackOverFlow (1)](https://github.com/Sultan-Mm/Big-Data-Engineering/assets/109808952/296bdbd5-6dde-4b1c-8cda-adafd300901f)

2. **Categorized Topics**: Topics categorized into various groups.
![Categorization (1)](https://github.com/Sultan-Mm/Big-Data-Engineering/assets/109808952/fde9cbcb-8c13-4a41-9d1a-f02588590173)



