docker ps -q --filter ancestor="scale/decision-tree-db:latest" | xargs -r docker stop

docker build . -t scale/decision-tree-db:latest

docker run --rm -p 7687:7687 --env "DB_ADMIN_USERNAME=neo4j" --env "DB_ADMIN_PASSWORD=password" --env "DB_SERVICE_ACCOUNT_USERNAME=scale_dt" --env "DB_SERVICE_ACCOUNT_PASSWORD=password" scale/decision-tree-db:latest

