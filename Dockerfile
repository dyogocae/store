FROM openjdk:11 as build
RUN mkdir app
ARG JAR_FILE
ADD /target/${JAR_FILE} /app/store.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "store.jar"]