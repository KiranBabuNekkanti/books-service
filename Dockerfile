# Docker Build Maven Stage
FROM maven:3-jdk-8-alpine AS build
RUN mvn clean install -DskipTests
# Docker Build and Push Image Stage
FROM openjdk:17
COPY target/books-service-0.0.1-SNAPSHOT.jar books-service.jar
ENTRYPOINT ["java","-jar","/books-service.jar"]
EXPOSE 8000
