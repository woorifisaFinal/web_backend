FROM openjdk:17-jdk

ARG JAR_FILE=*.jar
COPY ${JAR_VILE} app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
#LABEL authors="soo"

#ENTRYPOINT ["top", "-b"]