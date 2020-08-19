FROM openjdk:11

ARG WIREMOCK_VERSION="2.27.1"

ENV WIREMOCK_PORT=9999
ENV WIREMOCK_ROOT_DIR=/data
ENV WIREMOCK_VERBOSE=true
ENV WIREMOCK_ENABLE_STUB_CORS=false

RUN wget https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/$WIREMOCK_VERSION/wiremock-jre8-standalone-$WIREMOCK_VERSION.jar \
    -O /app.jar

COPY .docker/ /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["java", "-jar", "/app.jar"]
