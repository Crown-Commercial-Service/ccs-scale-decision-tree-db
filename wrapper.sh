#!/bin/bash
set -meo pipefail

function load_gm_data() {
  echo "Loading Guided Match decision tree data from file: ${1}"
  cypher-shell -u ${DB_ADMIN_USERNAME} -p "${DB_ADMIN_PASSWORD}" -a bolt://localhost:7687 --debug -f ./graph/$1
}

export NEO4J_AUTH="${DB_ADMIN_USERNAME}/${DB_ADMIN_PASSWORD}"

# Start the primary process in the background
/docker-entrypoint.sh neo4j &

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
load_gm_data "common.cypher"
# load_gm_data "RM6089_FM_Marketplace_Phase2.cypher"
load_gm_data "RM6154_Linen_and_Laundry.cypher"
load_gm_data "RM3788_Legal_Services.cypher"
load_gm_data "RM3733_RM6068_RM6103_TP2_TePAS_EduTech.cypher"
load_gm_data "MCF2_Consultancy.cypher"

echo "Data load complete"

# Create a read-only service account:
createUserCypher="CREATE USER ${DB_READ_ONLY_USERNAME} IF NOT EXISTS SET PASSWORD '${DB_READ_ONLY_PASSWORD}' SET PASSWORD CHANGE NOT REQUIRED;"
grantReaderRoleCypher="GRANT ROLE reader TO ${DB_READ_ONLY_USERNAME};"
cypher-shell -u ${DB_ADMIN_USERNAME} -p ${DB_ADMIN_PASSWORD} -a bolt://localhost:7687 -d system --debug "${createUserCypher}"
#cypher-shell -u ${DB_ADMIN_USERNAME} -p ${DB_ADMIN_PASSWORD} -a bolt://localhost:7687 -d system --debug "${grantReaderRoleCypher}"
fg %1
