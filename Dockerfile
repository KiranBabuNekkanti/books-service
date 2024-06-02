# Docker Build Maven Stage
FROM maven:3-openjdk-17 AS build
# Copy folder in docker
WORKDIR /opt/app
COPY ./ /opt/app
RUN mvn clean install -DskipTests
# Run spring boot in Docker
FROM openjdk:17
COPY --from=build /opt/app/target/*.jar books-service.jar
ENTRYPOINT ["java","-jar","books-service.jar"]
EXPOSE 8000
