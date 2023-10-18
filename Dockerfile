# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

RUN mkdir /usr/src/spring-petclinic
COPY . /usr/src/spring-petclinic
WORKDIR /usr/src/spring-petclinic

RUN java -jar target/*.jar
EXPOSE 8080
