#!/bin/bash
set -m

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

# Load some data
until cypher-shell -u neo4j -p sbx_graph -a bolt://localhost:7687 --debug -f ./guided_match.cypher
do
  echo "Loading Guided Match decision tree data.."
  sleep 5
done
echo "Data load complete"

fg %1
