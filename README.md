# **Reddit Data Pipeline**

## *Overview*

The Reddit Data Pipeline is a comprehensive solution for Extract, Transform, and Load (ETL) processes to ingest Reddit data into a Redshift data warehouse. The pipeline is designed to efficiently handle the extraction of data from Reddit, perform necessary transformations, and load the curated data into Amazon Redshift for analytics.

## Features
* Apache Airflow Integration: Utilizes Apache Airflow for orchestrating and scheduling ETL workflows.
* Celery Integration: Leverages Celery for distributing and parallelizing tasks, enhancing scalability.
* PostgreSQL Database: Stores intermediate data in a PostgreSQL database to facilitate transformations.
* Amazon S3 Storage: Acts as a staging area for raw Reddit data before processing.
* AWS Glue: Utilizes AWS Glue for serverless ETL jobs and schema evolution.
* Amazon Athena: Allows querying data stored in Amazon S3 using standard SQL queries.
* Amazon Redshift: The ultimate destination for curated and transformed data, ready for analysis.
* Docker: Containerized for easy deployment and reproducibility.

## Prerequisites
Ensure you have the following prerequisites installed and configured:
* `Docker`
* `Docker Compose`
* `Python`
* `AWS Account with configured credentials`
* `AWS Glue`
* `Amazon Redshift`

## **Project Structure**
```
project-root/
│
├── config/
│   ├── config.conf
|
├── dags/
│   ├── reddit_dag.py
│
├── etls/
│   ├── aws_etl.py
|   ├── reddit_etl.py
│
├── logs/
├── pipelines/
│   ├── aws_pipeline.py
│   ├── reddit_pipeline.py
|
├── utils/
│   ├── constants.py
│
└── docekr-compose
└── DockerFile
└── requirements.txt
└── README.md

``````

## Configuration
* Configure Airflow connections for PostgreSQL, AWS Glue, and Amazon Redshift.

* Update configuration files in the config/ directory.

## Installation
Clone the repository:

```bash
Copy code
git clone https://github.com/ElsharkawyZz/Reddit-DataEngineering-Project.git

cd Reddit-DataEngineering-Project
```
Then 
``` bash
# Create venv 
python -m venv venv # fro windows

python3 -m venv venv # fro linux

# Moving to the venv

venv/Scripts/activate # windows
source venv/bin/activate #linux

# install requitements
pip install -r requitements.txt

or 

install apache-ariflow
pip freeze > requitements.txt

# Create data dir

mkdir data

cd data
mkdir output


``` 

``` bash
# run docker compose to init airflow
docker-compose up -d --build
```

## Usage
Access the Airflow UI:
```
http://localhost:8080
```
Trigger the ETL workflow using the Airflow UI or CLI.

## Workflow
* Raw Reddit data is periodically fetched and stored in Amazon S3.

*  AWS Glue ETL jobs are triggered to transform the raw data.

* Transformed data is loaded into Amazon Redshift.

* Curated data in Amazon Redshift is available for analysis.

## Project Snapshot
*Load data to S3*
![](<screens/Screenshot 2024-02-14 173042.png>)
*create Ceawlers for data*
![Alt text](<screens/Screenshot 2024-02-14 173319.png>)
*Use Athena*
![Alt text](<screens/Screenshot 2024-02-14 174203.png>)
*Use Amazon Redshift for analytics*
![Alt text](<screens/Screenshot 2024-02-14 174433.png>)
