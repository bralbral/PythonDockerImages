import requests

packages = [
"apache-airflow-providers-postgres",
"apache-airflow-providers-celery",
"apache-airflow-providers-microsoft-mssql",
"apache-airflow-providers-common-sql",
"apache-airflow-providers-grpc",
"apache-airflow-providers-hashicorp",
"apache-airflow-providers-sqlite",
"apache-airflow-providers-smtp",
"apache-airflow-providers-samba",
"apache-airflow-providers-amazon",
"apache-airflow-providers-imap",
"apache-airflow-providers-http",
"apache-airflow-providers-redis",
"apache-airflow-providers-sftp",
"apache-airflow-providers-jdbc",
"apache-airflow-providers-mongo",
"apache-airflow-providers-odbc",
"apache-airflow-providers-elasticsearch",
"apache-airflow-providers-mysql",
"apache-airflow-providers-ssh",
"apache-airflow-providers-apache-spark",
"apache-airflow-providers-apache-kafka",
"apache-airflow-providers-ftp",
"apache-airflow-providers-docker",
"apache-airflow-providers-qdrant",
"apache-airflow-providers-ydb",
"apache-airflow-providers-common-io",
"amqp",
"structlog",
"aiochclient",
"aiofiles",
"aiohttp-cors",
"aioodbc",
"aiosqlite",
"alembic",
"asyncpg",
"confluent-kafka",
"elasticsearch",
"fastparquet",
"ldap3",
"clickhouse-driver",
"clickhouse-connect",
"orjson",
"minio",
"numpy",
"pandas",
"paramiko",
"rocketchat-API",
"uvloop",
"lxml",
"sentry-sdk",
"nltk",
"pydantic",
"python-dateutil",
"python-slugify",
"pytz",
"pytzdata",
"PyYAML",
"docker",
"requests",
"statsd",
"uv",
"pre-commit",
"black",
"autoflake",
"reorder-python-imports",
"pyupgrade",
]

def get_latest_version(pkg):
    url = f"https://pypi.org/pypi/{pkg}/json"
    r = requests.get(url)
    if r.status_code == 200:
        return r.json()["info"]["version"]
    return None

with open("requirements_latest.txt", "w") as f:
    for pkg in packages:
        version = get_latest_version(pkg)
        if version:
            f.write(f"{pkg}=={version}\n")
            print(f"{pkg}=={version}")
        else:
            print(f"Failed: {pkg}")
