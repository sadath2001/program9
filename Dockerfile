#FROM eclipse-temurin:17-jdk-alpine
#WORKDIR /opt
#EXPOSE 8080
#COPY ${JAR_FILE} app.jar
#CMD ["java","-jar","app.jar"]

FROM openjdk:17
WORKDIR /opt
ENV PORT 8080
EXPOSE 8080
COPY /target/*.jar app.jar
#CMD exec java -tar app.jar
CMD ["java","-jar","app.jar"]