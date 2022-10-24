FROM neo4j:4.4.12

COPY graph graph
COPY wrapper.sh wrapper.sh

ENTRYPOINT ["./wrapper.sh"]
