# localhost must be included in the name
docker network disconnect "kind" "local-registry"
docker network connect "bridge" "local-registry"

docker build --no-cache -t localhost:5000/dbt-snowflake .
docker push localhost:5000/dbt-snowflake:latest

docker network disconnect "bridge" "local-registry"
docker network connect "kind" "local-registry"