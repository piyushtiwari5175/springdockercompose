FROM openjdk:8-alpine
ADD target/*.jar app.jar

# Use Alpine's package manager 'apk' to install MySQL client
RUN apk add --no-cache mysql-client

ENTRYPOINT ["java", "-jar", "app.jar"]
