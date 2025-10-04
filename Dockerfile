# Start from a lightweight Java runtime image
FROM openjdk:17-jdk-slim

# Metadata (optional)
LABEL maintainer="yourname@example.com"

# Create working directory
WORKDIR /app

# Copy the built JAR from the Jenkins workspace into the image
COPY target/demo-1.0-SNAPSHOT.jar app.jar

# Expose application port
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

