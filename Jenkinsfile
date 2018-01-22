
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
      container('sandi-metz-enforcer') {
        steps {
          sh 'echo $ABCD;'
          sh "git log -n 1 --pretty=format:'%h'"
          sh "git config --get remote.origin.url"
          // sh 'bash sandimetz.enforcer.sh;'
        }
      }
    }
  }
}
