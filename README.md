# Scale Decision Tree database

## Summary
This repository contains a Docker image built over the standard Neo4j community edition container that pre-populates the graph database with the following CCS Guided Match decision tree structures:

- Linen & Laundry (RM6154)
- Wider public sector legal services (RM3788)
- Facilities Management 2 (Facilities)
- Facilities Management 2 (Housing)
- Facilities Management 2 (Security)
- Tech Products (RM3733), TePAS (RM6068) & EduTech (RM6103)

The structure for each decision tree is defined in [Cypher Query Language](https://neo4j.com/docs/cypher-manual/current/) and each script is executed against the graph database engine to load the data as the container is started.

## Structure
The image is comprised of a standard Dockerfile which copies `wrapper.sh` and all resources from the `graph` subdirectory into the container.  The `wrapper.sh` script (the entry point for the container) starts Neo4j via the standard `docker-entrypoint.sh` and waits until the service is stable before using the `cypher-shell` command line utility to connect and populate the graph using the Cypher scripts from the graph subdirectory.  The script also sets the Neo4j admin account credentials and creates a service account based on the following environment variables:

- `DB_ADMIN_USERNAME` (default 'neo4j')
- `DB_ADMIN_PASSWORD`
- `DB_SERVICE_ACCOUNT_USERNAME`
- `DB_SERVICE_ACCOUNT_PASSWORD`

## Build and Run
The Docker image can be built and tagged in a local development environment using:

    docker build . -t scale/decision-tree-db:latest

To then start a container and expose the graph over the Neo4j Bolt protocol on port 7687, use:      

    docker run --rm -p 7687:7687 --env "DB_ADMIN_USERNAME=neo4j" --env "DB_ADMIN_PASSWORD=password" --env "DB_SERVICE_ACCOUNT_USERNAME=scale_dt" --env "DB_SERVICE_ACCOUNT_PASSWORD=password" scale/decision-tree-db:latest

Note we add the `--rm` flag to ensure the container is removed when stopped, and pass in values for environment variables that the `wrapper.sh` startup script expects.

## Connect
The Neo4j browser can be used to connect to, query and visualise the graph: https://neo4j.com/developer/neo4j-browser/

With the container running on the local machine, connect via `bolt://localhost:7687` using either the admin or service account credentials provided in the `docker run` command.

## Example queries

### Return all nodes in a single tree
```
MATCH (j:Journey {uuid: 'b87a0636-654e-11ea-bc55-0242ac130003'})-[fq:FIRST_QUESTION]->(fqi:QuestionInstance)
OPTIONAL MATCH p1 = (fqi)-[*]->(ag:AnswerGroup)-[:HAS_OUTCOME]->(:Agreement)-[:HAS_LOT]->(:Lot)
return j, fq, fqi, p1
```
