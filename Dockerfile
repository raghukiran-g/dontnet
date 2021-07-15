FROM openjdk:14-slim
ARG JAR_ARTIFACT=src
RUN echo "Hey there! Welcome to $JAR_ARTIFACT" > greeting.txt
CMD cat greeting.txt
WORKDIR /app
COPY $JAR_ARTIFACT/*.jar app.jar
EXPOSE 6379
ENTRYPOINT ["java","-jar","app.jar"]
