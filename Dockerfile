FROM neo4j:4.4.5

COPY graph graph
COPY wrapper.sh wrapper.sh

RUN chmod +x ./wrapper.sh

ENTRYPOINT ["./wrapper.sh"]
