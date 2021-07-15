FROM openjdk:14-slim
ARG JAR_FILE=target/*.jar
WORKDIR /app
COPY ${JAR_FILE} app.jar
EXPOSE 6379
ENTRYPOINT ["java","-jar","app.jar"]
