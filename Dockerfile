# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

RUN mkdir /app/spring-petclinic
COPY . /app/spring-petclinic
WORKDIR /app/spring-petclinic

RUN java -jar target/*.jar
EXPOSE 8080
