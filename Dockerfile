FROM openjdk:19-jdk-alpine3.16

WORKDIR /server
RUN apk update && apk install curl
RUN wget https://download.getbukkit.org/craftbukkit/craftbukkit-1.20.4.jar
RUN echo "eula=true" >> eula.txt

ENTRYPOINT [ "java","-jar", "/server/craftbukkit-1.20.4.jar" ]
