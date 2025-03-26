# Use official Java image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy JAR file
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]