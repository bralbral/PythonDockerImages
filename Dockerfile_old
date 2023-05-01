FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt ./

RUN apt-get update && \
    apt-get -y install git &&\
    apt-get -y install gcc && \
    apt-get -y install g++ &&  \
    apt-get -y install unixodbc-dev && \
    apt-get -y install curl && \
    apt-get -y install apt-transport-https && \
    apt-get -y install gnupg2 && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get -y install msodbcsql17 && \
    apt-get -y install nano mc net-tools htop iotop glances && \
    apt-get -y install python-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


RUN pip install --no-cache-dir -r requirements.txt

COPY . .