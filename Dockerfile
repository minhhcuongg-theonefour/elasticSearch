ARG 7.17.15

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:7.17.15
RUN curl -L -o /usr/share/logstash/logstash-core/lib/jars/postgresql-42.5.2.jar https://jdbc.postgresql.org/download/postgresql-42.5.2.jar
RUN rm -f /usr/share/logstash/pipeline/logstash.conf

COPY logstash/pipeline/ /usr/share/logstash/pipeline/
COPY logstash/config/ /usr/share/logstash/config/

EXPOSE 8080

CMD ["logstash", "--enable-local-plugin-development"]