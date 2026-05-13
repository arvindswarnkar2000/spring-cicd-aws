# Use Amazon Corretto 17 (actively maintained, optimized for AWS)
FROM amazoncorretto:17-alpine
 
# Set working directory inside the container
WORKDIR /app
 
# Copy the compiled Spring Boot JAR into the container
COPY target/course-service.jar app.jar
 
# Expose the port the Spring Boot application runs on
EXPOSE 8080
 
# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]