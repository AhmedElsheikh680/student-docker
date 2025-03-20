FROM openjdk:17-jre-slim
FROM maven:latest AS build
#COPY src /student/src
#COPY pom.xml /student
COPY . /student
#RUN mvn -f /student/pom.xml clean package
#RUN mvn -f /student/pom.xml clean install
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/student/target/studnet-docker.jar"]