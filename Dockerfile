FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y python3-dev python3-pip
RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN usermod -aG docker jenkins
USER jenkins
