# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY target ./target

CMD ["java", "-jar", "/app/target/spring-petclinic-3.1.0-SNAPSHOT.jar"]
