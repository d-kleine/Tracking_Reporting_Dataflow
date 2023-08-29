# Tracking & Reporting README

This README provides an overview of the tasks related to building a data flow for tracking and reporting using historical weather data. The objective is to demonstrate the technical ability to set up the data flow using various tools and technologies.

## Task Description

**Task 1: Setting Up BigQuery Database and Table**

Before exporting historical weather data from the weather API, you need to set up the required BigQuery database and table to store the data.

Steps:
1. *Create a BigQuery Project*:
* If you don't already have one, create a project in Google Cloud Console and enable the BigQuery API.
2. *Create a Dataset*:
* Inside your project, create a new dataset to organize your weather data.
3. *Design the Table Schema*:
* Define the schema of the table that will hold the historical weather data. This schema should match the structure of the data you'll retrieve from the weather API. For example:
```
city (STRING)
date (DATE)
temperature (FLOAT)
precipitation (FLOAT)
... (other relevant fields)
```
4. Create the Table:
* Using the defined schema, create a new table within your dataset to store the historical weather data.

**Task 2: Export of Historical Weather Data**

With the BigQuery database and table set up, you can now proceed to export historical weather data from the weather API and store it in BigQuery using a Google Cloud Function.

Steps:
1. *Set up a Google Cloud Function*:
* Create a new Google Cloud Function project.
* Configure the necessary permissions and authentication for accessing the weather API.
2. *Fetch and Transform Data*:
* Write a function to fetch historical weather data for the specified cities from the weather API.
* Transform and format the data to match the schema of the BigQuery table you've created.
3. *Insert Data into BigQuery*:
* Utilize the BigQuery API to insert the transformed weather data into the appropriate table within your dataset.

**Task 3: Create Reporting-View with dbt**

In this task, you will use *dbt* (data build tool) to create a reporting view containing aggregated data.

Steps:
1. *Set Up dbt Cloud IDE*:
* Access dbt Cloud IDE and create a new project.
3. *Define Models and Transformations*:
* Create dbt models to aggregate and calculate the required metrics using the data in your BigQuery table.
4. *Execute dbt Run*:
* Run the dbt transformation process to build the reporting view.

**Task 4: Create Dashboard in Google Looker Studio**

In this task, you will create a dashboard using Google Looker Studio to visualize the weather data metrics over time.
Steps:

1. *Set Up Looker Studio*:
* Access Google Looker Studio and create a new dashboard project.
3. *Create Visualizations*:
* Design visualizations to display the metrics calculated by dbt over time.
4. *Configure Data Sources*:
* Connect Looker Studio to Google BigQuery and ensure access to the dbt-created reporting view.
5. Build Dashboard:
* Assemble the visualizations into a coherent dashboard layout and configure any necessary filters and date ranges for interactive exploration.
