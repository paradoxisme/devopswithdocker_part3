FROM openjdk:8u292-jdk
RUN git clone https://github.com/docker-hy/material-applications.git /app/
WORKDIR /app/spring-example-project
RUN ./mvnw package
ENTRYPOINT ["java","-jar"]
CMD ["./target/docker-example-1.1.3.jar"]
