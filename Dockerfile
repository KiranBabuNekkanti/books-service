FROM openjdk:17
WORKDIR /app
COPY target/books-service-0.0.1-SNAPSHOT.jar books-service.jar
ENTRYPOINT ["java","-jar","/books-service.jar"]
EXPOSE 8000
