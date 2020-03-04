FROM openjdk:8
COPY build/libs/spring-cloud-kubernetes-config-example-0.0.1-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java -Djava.security.egd=file:/dev/./urandom -jar /app.jar
