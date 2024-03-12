FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/MongoDbOAuth.jar MongoDbOAuth.jar
ENTRYPOINT ["java","-jar","/MongoDbOAuth.jar"]