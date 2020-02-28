FROM neo4j:latest

COPY guided_match.cypher guided_match.cypher
COPY wrapper.sh wrapper.sh

ENTRYPOINT ["./wrapper.sh"]
