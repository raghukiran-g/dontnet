FROM openjdk:14-slim
WORKDIR /app
COPY staging/*.jar app.jar
EXPOSE 6379
ENTRYPOINT ["java","-jar","app.jar"]
