# Scale Decision Tree database

## Summary
This repository contains a Docker image built over the standard Neo4j community edition container that pre-populates the graph database with the following CCS Guided Match decision tree structures:

- Linen & Laundry (RM6154)
- Wider public sector legal services (RM3788)
- Facilities Management 2 (Facilities)
- Facilities Management 2 (Housing)
- Facilities Management 2 (Security)
- Tech Products (RM3733), TePAS (RM6068) & EduTech (RM6103)

The structure for each decision tree is defined in [Cypher Query Language](https://neo4j.com/docs/cypher-manual/current/) and each script is executed against the graph database engine to load the data as the container is started

## Structure
TODO: Explain what happens during container provisioning..

## Build and Run
The image can be built and tagged in a local development environment using:

    docker build . -t scale/decision-tree-db:latest

To then start a container and expose the graph over the Neo4j Bolt protocol on port 7687, use:      

    docker run --rm -p 7687:7687 --env "DB_ADMIN_USERNAME=neo4j" --env "DB_ADMIN_PASSWORD=password" --env "DB_SERVICE_ACCOUNT_USERNAME=scale_dt" --env "DB_SERVICE_ACCOUNT_PASSWORD=password" scale/decision-tree-db:latest

Note we add the `--rm` flag to ensure the container is removed when stopped, and pass in values for environment variables that the `wrapper.sh` startup script expects.

## Connect
TODO: Neo4j Browser to local / remote host..

## Example queries

### Return all nodes in a single tree
```
MATCH (j:Journey {uuid: 'b87a0636-654e-11ea-bc55-0242ac130003'})-[fq:FIRST_QUESTION]->(fqi:QuestionInstance)
OPTIONAL MATCH p1 = (fqi)-[*]->(ag:AnswerGroup)-[:HAS_OUTCOME]->(:Agreement)-[:HAS_LOT]->(:Lot)
return j, fq, fqi, p1
```
