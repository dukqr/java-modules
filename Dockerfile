FROM openjdk:11-jdk-slim

WORKDIR /app

COPY . .

RUN javac -d out --module-source-path simple-modules $(find simple-modules -name "*.java")


CMD [ "java" "--module-path", "out", "-m", simple-modules/main-app/com.reajdk.modules.main.MainApp]