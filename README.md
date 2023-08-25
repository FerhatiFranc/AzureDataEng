# AzureDataEng
This project's goal is to work with data from The Movie Database. 
Extracted data is retrieved from their API and a csv file is generated to retrieve information on 
1000 Most Popular English Movies all the way to 2023.

Contents include: 

Title: The name of the movie, identifying it uniquely in the dataset.
Overview: A summary or synopsis of the movie, giving users an idea of its plot and theme.
Release_Date: The date when the movie was officially released.
Genre: The categories or genres to which the movie can be classified.
Popularity: This metric is calculated by TMDB developers
Vote_Average: The average rating of the movie, ranging from 0 to 10
Vote_Count: The total number of votes received.

Data is stored in azure cloud storage. An ingestion pipeline is created on 
Azure Data Factory that ingests the data from the csv file that is present in this
Github repository (AzureDataEng). Once the pipeline is created, a cluster is created to 
make transformations of the data within Azure Databricks. With PySpark several datatypes from
the schema were transformed to integers and date types so that we can do analytics on the data. 
Now that the data has been transformed, we load the data back into the azure cloud storage that is
referred to as our transformed data. Now it is ready for analysis. 

