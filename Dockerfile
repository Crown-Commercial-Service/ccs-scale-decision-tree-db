FROM neo4j:4.4.12

COPY graph graph
COPY wrapper.sh wrapper.sh

RUN chmod +x ./wrapper.sh

ENTRYPOINT ["./wrapper.sh"]
