# Most Popular Movies All Time Data Engineering + Data Analysis project

This project's goal is to work with data from The Movie Database. Extracted data is retrieved from their API, and a CSV file is generated to retrieve information on the 10000 Most Popular English Movies all the way to 2023.

## Contents

- **Title:** The name of the movie, identifying it uniquely in the dataset.
- **Overview:** A summary or synopsis of the movie, giving users an idea of its plot and theme.
- **Release Date:** The date when the movie was officially released.
- **Genre:** The categories or genres to which the movie can be classified.
- **Popularity:** This metric is calculated by TMDB developers.
- **Vote Average:** The average rating of the movie, ranging from 0 to 10.
- **Vote Count:** The total number of votes received.

## Data Management

Data is stored in Azure Cloud Storage. An ingestion pipeline is created on Azure Data Factory, which ingests the data from the CSV file present in this GitHub repository (AzureDataEng). After creating the pipeline, a cluster is established to perform data transformations within Azure Databricks. Using PySpark, several data types from the schema are transformed into floats, integers, and date types to enable analytics, furthermore, irrelevant data and incomplete markers for movies are filtered. Once the data is thoroughly cleaned, it is then loaded back into Azure data blob as our transformed data.

## Data Analysis

With the transformed data, SQL commands are employed to extract valuable insights, providing a view of which movies performed well, by how much, and why. Dashboards are created to visualize the data using Azure Synapse Analytics, eliminating the need for external tools such as Power BI or Tableau.

For more details, refer to the accompanying code and documentation.

