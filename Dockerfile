FROM python:3.11-slim-bullseye

WORKDIR /app

COPY requirements.txt ./

RUN apt-get update && \
    apt-get -y install git gcc g++ unixodbc-dev curl apt-transport-https gnupg2 nano mc net-tools htop iotop && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get -y install msodbcsql17 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

COPY . .