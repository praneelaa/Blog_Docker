# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy everything into the container
COPY . .

# Give Maven wrapper permission to execute
RUN chmod +x mvnw



# Run the jar file (update the JAR name if it's different)
CMD ["java", "-jar", "target/bookstore-0.0.1-SNAPSHOT.ja"]
