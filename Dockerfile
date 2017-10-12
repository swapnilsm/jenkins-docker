FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y python3-dev python3-pip
USER jenkins
