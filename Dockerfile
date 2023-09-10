FROM gradle:8.1.1-jdk17 as build

WORKDIR /app

COPY build.gradle.kts settings.gradle.kts ./

RUN gradle build --no-daemon > /dev/null 2>&1 || true

COPY src ./src

RUN gradle bootJar --no-daemon

FROM openjdk:17-jdk-slim as package

WORKDIR /app

COPY --from=build /app/build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
