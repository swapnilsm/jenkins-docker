podTemplate(label: 'sandi-metz-enforcer-pod', containers: [
  containerTemplate(
    name: 'sandi-metz-enforcer-container', 
    image: 'registry2.swarm.devfactory.com/codenation/sandimetz-enforcer:v1.0.2', 
    ttyEnabled: true, 
    command: 'cat')
  ]) {

  node('sandi-metz-enforcer-pod') {
    shortCommit = sh(returnStdout: true, script: "git config --get remote.origin.url").trim()
    println shortCommit
    stage('Test') {
      container('sandi-metz-enforcer-container') {
        echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
      }
    }
  }
}
/*pipeline {
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
        shortCommit = sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%h'").trim()
        println shortCommit
        steps {    
          container('sandi-metz-enforcer') {
            echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            // sh 'bash sandimetz.enforcer.sh;'
          }
        }
      }
    }
  }
}
*/
