# Stage 1: Build Stage (Using Maven image)
FROM maven:latest AS build
# Set the working directory in the container
WORKDIR /student
# Copy your entire project into the container
COPY . .
# Run Maven commands to build the project
RUN mvn clean install
# Stage 2: Runtime Stage (Using JRE image)
FROM openjdk:17-jdk-slim
# Set working directory in the container
WORKDIR /student
# Copy the JAR file from the build stage
COPY --from=build /student/target/studnet-docker.jar /student/target/studnet-docker.jar
# Expose the port the app will run on
EXPOSE 8080
# Command to run the application
ENTRYPOINT ["java", "-jar", "/student/target/studnet-docker.jar"]


