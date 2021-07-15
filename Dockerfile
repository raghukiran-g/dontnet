FROM openjdk:14-slim
WORKDIR /app
COPY *jar-with-dependencies.jar \
  /app/app.jar
EXPOSE 6379
ENTRYPOINT ["java","-jar","app.jar"]
