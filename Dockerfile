FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw mvnw
COPY pom.xml pom.xml
COPY src/ src/

RUN chmod +x mvnw

RUN ./mvnw dependency:resolve

RUN ./mvnw package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/student-api-0.0.1-SNAPSHOT.jar"]