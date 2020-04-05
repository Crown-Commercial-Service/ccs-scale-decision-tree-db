#!/bin/bash
set -m

function load_gm_data() {
  echo "Loading Guided Match decision tree data from file: ${1}"
  until cypher-shell -u neo4j -p sbx_graph -a bolt://localhost:7687 --debug -f ./graph/$1
  do
    echo "Waiting for load of ${1} to complete..."
    sleep 5
  done
}

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
load_gm_data "RM6089_FM_Marketplace_Phase2.cypher"
load_gm_data "RM6154_Linen_and_Laundry.cypher"
#load_gm_data "RM3788_Legal_Services.cypher"
#load_gm_data "RM3733_RM6068_RM6103_TP2_TePAS_EduTech.cypher"
#load_gm_data "MCF2_Consultancy.cypher"

echo "Data load complete"

fg %1
