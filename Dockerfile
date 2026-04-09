FROM alpine:latest
RUN apk add --no-cache openjdk17-jre
WORKDIR /app
COPY target/socket-app-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]