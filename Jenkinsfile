pipeline {
  agent any
  stages {
    stage('Dummy') {
      steps {
        echo 'Step done...'
      }
    }
  }
  environment {
    DOCKER_HOST = 'tcp://build.swarm.devfactory.com:2375'
  }
}