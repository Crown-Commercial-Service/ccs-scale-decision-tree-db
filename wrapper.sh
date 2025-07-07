#!/bin/bash
set -meo pipefail

function load_common_data() {
  echo "Loading: ${1}"
  cypher-shell -u ${DB_ADMIN_USERNAME} -p "${DB_ADMIN_PASSWORD}" -a bolt://localhost:7687 --debug -f ./graph/$1
}

function load_cnz_data() {
    echo "Loading CNZ data from file: ${1}"
    cypher-shell -u ${DB_ADMIN_USERNAME} -p "${DB_ADMIN_PASSWORD}" -a bolt://localhost:7687 --debug -f $1
}

export NEO4J_AUTH="${DB_ADMIN_USERNAME}/${DB_ADMIN_PASSWORD}"

# Start the primary process in the background
/startup/docker-entrypoint.sh neo4j &

# Wait for Neo4j to start
while true; do
    sleep 3
    if wget -q -S http://localhost:7474; then
        echo "Ready"
        break
    else
        echo "Not Ready"
        continue
    fi
done

# Load Guided Match decision trees
load_common_data "common.cypher"

cd ./graph/CNZ
for f in * ;
   do load_cnz_data "$f" 
done

echo "Data load complete"

# Create a service account (for use by Decision Tree service):
createUserCypher="CREATE USER ${DB_SERVICE_ACCOUNT_USERNAME} IF NOT EXISTS SET PASSWORD '${DB_SERVICE_ACCOUNT_PASSWORD}' SET PASSWORD CHANGE NOT REQUIRED;"
cypher-shell -u ${DB_ADMIN_USERNAME} -p ${DB_ADMIN_PASSWORD} -a bolt://localhost:7687 -d system --debug "${createUserCypher}"
fg %1