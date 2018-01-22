
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
          sh 'echo $ABCD;'
          def shortCommit = sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%h'").trim()
          def gitUrl = sh(returnStdout: true, script: "git config --get remote.origin.url").trim()
          println shortCommit
          println gitUrl
          // sh 'bash sandimetz.enforcer.sh;'
        }
      }
    }
  }
}
