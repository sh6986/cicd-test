FROM openjdk:11-jdk-slim

RUN apt-get update && apt-get install -y wget unzip
RUN wget https://github.com/JetBrains/kotlin/releases/download/v1.5.0/kotlin-compiler-1.5.0.zip
RUN unzip kotlin-compiler-1.5.0.zip -d /opt
ENV PATH=$PATH:/opt/kotlinc/bin

WORKDIR /app

COPY HelloWorld.kt .

RUN kotlinc HelloWorld.kt -include-runtime -d HelloWorld.jar

CMD ["java", "-jar", "HelloWorld.jar"]
