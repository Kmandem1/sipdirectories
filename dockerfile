# Start from OpenJDK base image
FROM openjdk:17-jdk-slim

# Set environment variable for JAR file name
ENV APP_WAR=sip-tool-1.0.war

# Create a directory inside the container
WORKDIR /app

# Copy the jar file into the image
COPY target/${APP_WAR} app.war

# Expose port (change if your app uses another port)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-war", "app.war"]
