# Use a base image with Java installed
FROM eclipse-temurin:17
EXPOSE 8080
# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host machine to the container's working directory
COPY target/docker.jar /app/docker-ayush.jar

# Command to run your Java application
CMD ["java", "-jar", "docker-ayush.jar"]


