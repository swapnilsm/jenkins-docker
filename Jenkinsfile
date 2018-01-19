
pipeline {
  agent {
    kubernetes {
      label 'sandi-metz-enforcer'
      containerTemplate {
        name 'sandi-metz-enforcer'
        image 'registry2.swarm.devfactory.com/codenation/sandimetz-enforcer:v1.0.0'
      }
    }
  }
  stages {
    stage('') {
      steps {
        container('sandi-metz-enforcer') {
          sh '/bin/bash -c ./sandimetz.enforcer.sh'
        }
      }
    }
  }
}
