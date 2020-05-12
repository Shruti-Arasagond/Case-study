FROM openjdk:8-jdk-alpine

VOLUME /tmp

EXPOSE 8888

ARG JAR_FILE=/target/*.jar

COPY ${JAR_FILE} casestudy-pipeline-0.0.1-SNAPSHOT.jar

RUN echo "I am creating a docker image for my spring boot application"

MAINTAINER "shrutiarasagond@gmail.com"

ENTRYPOINT ["java", "-jar", "casestudy-pipeline-0.0.1-SNAPSHOT.jar"]

