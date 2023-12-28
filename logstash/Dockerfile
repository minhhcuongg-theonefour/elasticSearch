ARG ELK_VERSION

# FROM alpine:3.18 AS build
# RUN wget "https://jdbc.postgresql.org/download/postgresql-42.5.2.jar"

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:${ELK_VERSION}
RUN curl -L -o /usr/share/logstash/logstash-core/lib/jars/postgresql-42.5.2.jar https://jdbc.postgresql.org/download/postgresql-42.5.2.jar

EXPOSE 5000

CMD ["logstash", "--enable-local-plugin-development"]