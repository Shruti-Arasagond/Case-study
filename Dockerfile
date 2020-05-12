FROM openjdk:8-jdk-alpine

VOLUME /tmp

EXPOSE 8888

ARG JAR_FILE=/target/casestudy-pipeline-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} casestudy.jar

RUN echo "I am creating a docker image for my spring boot application"

MAINTAINER "shrutiarasagond@gmail.com"

ENTRYPOINT ["java", "-jar", "casestudy.jar"]

