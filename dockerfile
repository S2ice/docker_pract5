FROM ubuntu:latest

WORKDIR /pract_5

COPY /calc.jar /pract_5

RUN apt-get update && apt-get install -y \
x11-apps \
openjdk-11-jre \
xauth \
&& rm -rf /var/lib/apt/lists/*

ENV DISPLAY=:0

CMD [ "java", "-jar", "/pract_5/calc.jar"]

