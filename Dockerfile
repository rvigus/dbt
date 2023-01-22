FROM ghcr.io/dbt-labs/dbt-snowflake:latest

WORKDIR /dbt

RUN mkdir -p /root/.dbt
COPY profiles.yml /root/.dbt/profiles.yml
COPY . /dbt

RUN ["dbt", "deps", "--project-dir", "./"]