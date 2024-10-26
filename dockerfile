# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your local machine to the working directory in the container
COPY target/herokutest-0.0.1-SNAPSHOT.jar /app/myapp.jar

# Expose the application port (adjust if needed)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "myapp.jar"]

