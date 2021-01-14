FROM openjdk:11-jdk-buster

COPY . /usr/app

WORKDIR /usr/app

# RUN javac /usr/app/src/Main.java

CMD ["java", "Main"]