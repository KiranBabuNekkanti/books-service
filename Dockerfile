FROM openjdk:17
COPY target/books-service-0.0.1-SNAPSHOT.jar books-service.jar
ENTRYPOINT ["java","-jar","/books-service.jar"]
EXPOSE 8000
