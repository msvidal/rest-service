FROM adoptopenjdk/openjdk11:jre-11.0.4_11-alpine AS release
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]