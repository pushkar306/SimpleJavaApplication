#Adding Multi-stage build to the Simple build-time compilation

#Stage 1 - Build

# A Base Image for preparing an Environment suitable to run the required application ... Here Java 
FROM eclipse-temurin:17-jdk-alpine AS Builder

#MetaData
LABEL maintainer="pathakpushkar306@gmail.com"
LABEL description="A Simple Java Application"
LABEL version="1.0"

#The Folder where required code and data is stored
WORKDIR /app

#Copying the Source Code from Host Machine to Container
COPY src/Main.java /app/Main.java

#Compiling the Java Code
RUN javac Main.java

#Stage 2 - Runtime

FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=Builder /app/Main.class .

#Run Java Application
CMD ["java","Main"]

#CMD is also a command like RUN but its used after the completion of IMAGE Building for executing a specific command in the CONTAINER .. 
#Difference between ENRTRYPOINT and CMD is CMD Can be overwritten while running the container explicitly