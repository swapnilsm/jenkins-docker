pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'docker build -t registry2.swarm.devfactory.com/codenation/jenkins:latest'
      }
    }
  }
  environment {
    DOCKER_HOST = 'tcp://build.swarm.devfactory.com:2375'
  }
}