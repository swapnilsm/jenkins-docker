
pipeline {
  agent {
    kubernetes {
      label 'slave-pod'
      containerTemplate {
        name 'sandi-metz-enforcer'
        image 'registry2.swarm.devfactory.com/codenation/sandimetz-enforcer:v1.0.1'
        ttyEnabled true 
        command 'cat'
      }
    }
  }
  stages {
    stage('Test') {
      steps {
        container('sandi-metz-enforcer') {
          sh "bash /sandimetz.enforcer.sh;"
        }
      }
    }
  }
}
