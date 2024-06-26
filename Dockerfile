# Use a base image with Java runtime environment
FROM openjdk:17-jdk-slim

# Add a volume pointing to /tmp
VOLUME /tmp

# The application's JAR file
ARG JAR_FILE=target/praksa2022-0.0.1-SNAPSHOT.jar

# Add the application's JAR file to the container
COPY ${JAR_FILE} app.jar

# Expose the port the application will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java","-jar","/app.jar"]