FROM openjdk:14-slim
ARG SOURCE=target
RUN echo "Hey there! Welcome to $SOURCE" > greeting.txt
CMD cat greeting.txt
WORKDIR /app
COPY staging/*.jar app.jar
EXPOSE 6379
ENTRYPOINT ["java","-jar","app.jar"]
