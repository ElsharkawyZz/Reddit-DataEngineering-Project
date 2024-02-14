# FROM apache/airflow:2.8.1-python3.10

# COPY requirements.txt /opt/airflow/

# USER root
# RUN apt-get update && apt-get install -y gcc python3-dev && apt-get install -y psql

# USER airflow

# RUN pip install --no-cache-dir -r /opt/airflow/requirements.txt


FROM apache/airflow:2.8.1-python3.10

COPY requirements.txt /opt/airflow/

USER root

RUN apt-get update && \
    apt-get install -y gcc python3-dev postgresql && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER airflow

RUN pip install --no-cache-dir -r /opt/airflow/requirements.txt



