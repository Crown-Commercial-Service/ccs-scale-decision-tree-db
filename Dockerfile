FROM neo4j:latest

COPY graph graph
COPY wrapper.sh wrapper.sh

ENTRYPOINT ["./wrapper.sh"]
