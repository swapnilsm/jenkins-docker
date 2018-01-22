
pipeline {
  agent {
    kubernetes {
      label 'slave-pod'
      containerTemplate {
        name 'sandi-metz-enforcer'
        image 'registry2.swarm.devfactory.com/codenation/sandimetz-enforcer:v1.0.2'
        ttyEnabled true 
        command 'cat'
      }
    }
  }
  stages {
    stage('Test') {
       steps {
        container('sandi-metz-enforcer') {
          sh 'echo $BRANCH_NAME'
          sh 'echo $GIT_URL'
          sh 'git rev-parse --abbrev-ref HEAD'
          sh 'export GIT_URL=$(git config --get remote.origin.url)'
          sh 'echo $GIT_URL;'
          // sh 'bash sandimetz.enforcer.sh;'
        }
      }
    }
  }
}
