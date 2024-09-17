# EXERCISE 1.11: SPRING

FROM amazoncorretto:8-alpine3.20-full

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN ./mvnw package 

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
