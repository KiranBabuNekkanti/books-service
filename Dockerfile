FROM openjdk:11
WORKDIR /app
COPY nvsis-0.0.1-SNAPSHOT.jar nvsis.jar
ENTRYPOINT ["java","-jar","/nvsis.jar"]
EXPOSE 8000
