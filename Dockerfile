FROM openjdk:17-jdk-alpine

COPY target/java-api-0.0.1-SNAPSHOT.jar java-api-1.0.0.jar

ENTRYPOINT [ "java", "-jar", "java-api-1.0.0.jar" ]