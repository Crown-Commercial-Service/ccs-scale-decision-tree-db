FROM neo4j:latest

COPY graph graph
COPY wrapper.sh wrapper.sh

RUN chmod +x ./wrapper.sh

ENTRYPOINT ["./wrapper.sh"]
