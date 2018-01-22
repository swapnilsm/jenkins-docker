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
    node('slave-pod') {
      stage('Test') {
        steps {
          shortCommit = sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%h'").trim()
          println shortCommit
          container('sandi-metz-enforcer') {
            echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            // sh 'bash sandimetz.enforcer.sh;'
          }
        }
      }
    }
  }
}
