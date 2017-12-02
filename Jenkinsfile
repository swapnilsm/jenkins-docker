pipeline {
  agent none
  stages {
    stage('Test') {
      steps {
        sh 'python --version'
      }
    }
  }
  environment {
    DOCKER_HOST = 'tcp://build.swarm.devfactory.com:2375'
  }
}