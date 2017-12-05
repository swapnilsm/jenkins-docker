pipeline {
  agent any
  stages {
    stage('Print Pulling :D ') {
      steps {
        echo 'Pulling old image'
      }
    }
    stage('Pull & Build') {
      steps {
        sh '''docker pull registry2.swarm.devfactory.com/codenation/jenkins:latest
docker build -t registry2.swarm.devfactory.com/codenation/jenkins:latest .'''
      }
    }
    stage('Push') {
      steps {
        sh 'docker push registry2.swarm.devfactory.com/codenation/jenkins:latest'
      }
    }
    stage('Cleanup') {
      steps {
        sh 'docker rmi registry2.swarm.devfactory.com/codenation/jenkins:latest'
      }
    }
  }
  environment {
    DOCKER_HOST = 'tcp://build.swarm.devfactory.com:2375'
  }
}