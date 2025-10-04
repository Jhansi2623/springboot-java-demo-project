# Use JDK 17 base image
FROM openjdk:17-jdk-slim

# Copy jar file from target folder
COPY target/*.jar app.jar

# Expose port (change if your app uses a different one)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
