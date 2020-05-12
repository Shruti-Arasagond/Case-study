FROM openjdk:8-jdk-alpine

VOLUME /tmp

EXPOSE 8888

ARG JAR_FILE=/target/*.jar

RUN echo "I am creating a docker image for my spring boot application"

MAINTAINER "shrutiarasagond@gmail.com"

