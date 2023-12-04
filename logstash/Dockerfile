ARG ELK_VERSION

FROM alpine:3.18 AS build
RUN wget "https://jdbc.postgresql.org/download/postgresql-42.5.2.jar"

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:${ELK_VERSION}
COPY --from=build postgresql-42.5.2.jar /usr/share/logstash/logstash-core/lib/jars/
