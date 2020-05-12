FROM openjdk:8-jdk-alpine

VOLUME /tmp

EXPOSE 8888

ARG JAR_FILE=/target/*.jar

COPY ${JAR_FILE} casestudy.jar

RUN echo "I am creating a docker image fo my spring boot application"

MAINTAINER "shrutiarasagond@gmail.com"

ENTRYPOINT ["java", "-jar", "casestudy.jar"]

