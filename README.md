# Simple Java Docker Application 🐳

A lightweight project demonstrating how to containerize a basic Java application using Docker

## 📋 Prerequisites
Docker Desktop
VS Code
Github

## 🚀 Getting Started

**1. Clone this repository** 

```
git clone https://github.com/pushkar306/SimpleJavaApplication.git
```

```
cd SimpleJavaApplication
```

**2. Build the Docker Image**

- This command uses the Dockerfile to compile the Java code and package it into an image named java-app

```
docker build -t java-app:1.0 .
```

**3. Run the Container**

- Launch a container based on your new image:

```
docker run --name my-running-app java-app:1.0
```

## 📂 Project Structure

- src/Main.java: The Java source code
- Dockerfile: Instruction for Docker to build the Docker Image
- README.md: Project documentation

## 🛠️ Dockerfile Explained

> Base Image: Uses eclipse-temurin:17-jdk-alpine for a tiny footprint.

> Metadata : Gives the identity of author , one can edit for its own

> Working Directory: Sets up /app as the main folder inside the container.

> Copy : Copying the exact path of Main.java (Source code) from Host Machine to Container

> Compilation: Runs javac during the build phase so the container is ready to run immediately.

> Command: Executes the compiled Main class when the container starts.

## 🤓 Learnings
It was a great way to learn the initials of Docker
Creating an Image by myself not only made me learn the commands and structure very well but also the working of Docker
i.e. Dockerfile -> Docker Image -> Container