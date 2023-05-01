FROM ubuntu:latest

# Install git
RUN apt-get update && apt-get install -y git

# Install Putty
RUN apt-get update && apt-get install -y putty

# Install required packages for installing Visual Studio Code
RUN apt-get update && \
    apt-get install -y software-properties-common apt-transport-https wget gnupg && \
    rm -rf /var/lib/apt/lists/*

# Install Visual Studio Code
RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && \
    apt-get update && \
    apt-get install -y code && \
    rm -rf /var/lib/apt/lists/*

# Install Apache2 server
RUN apt-get update && apt-get install -y apache2

# Install Java and SonarQube
RUN apt-get update && \
    apt-get install -y curl unzip openjdk-11-jre-headless && \
    rm -rf /var/lib/apt/lists/*

# Download and extract SonarQube
WORKDIR /opt
RUN curl -o sonarqube.zip -LJO https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.4.2.36762.zip && \
    unzip sonarqube.zip && \
    mv sonarqube-8.4.2.36762 sonarqube && \
    rm sonarqube.zip

# Set the environment variables
ENV SONARQUBE_HOME=/opt/sonarqube

# Expose ports
EXPOSE 80 9000
