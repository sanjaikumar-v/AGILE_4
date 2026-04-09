FROM openjdk:17-oracle
WORKDIR /app
COPY target/socket-app-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]