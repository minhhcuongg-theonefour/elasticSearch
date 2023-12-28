ARG ELK_VERSION

# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

RUN grep vm.max_map_count /etc/sysctl.conf
RUN vm.max_map_count=262144


EXPOSE ${ELASTICSEARCH_PORT}