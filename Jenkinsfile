pipeline {
  agent any
  stages {
    stage('Pull') {
      steps {
        sh 'docker pull registry2.swarm.devfactory.com/codenation/jenkins:latest'
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t registry2.swarm.devfactory.com/codenation/jenkins:latest .'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push registry2.swarm.devfactory.com/codenation/jenkins:latest'
      }
    }
  }
  environment {
    DOCKER_HOST = 'tcp://build.swarm.devfactory.com:2375'
  }
}