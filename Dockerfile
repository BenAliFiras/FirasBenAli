FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} SkiStationProject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /SkiStationProject-0.0.1-SNAPSHOT.jar"]