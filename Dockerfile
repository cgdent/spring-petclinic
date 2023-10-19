# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# COPY .mvn/ .mvn
# COPY mvnw pom.xml ./
# RUN ./mvnw dependency:resolve

COPY target ./target
# CMD ["bash"]
CMD ["java", "-jar", "/app/target/spring-petclinic-3.1.0-SNAPSHOT.jar"]
