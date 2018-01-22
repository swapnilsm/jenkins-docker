podTemplate(label: 'maven-golang', containers: [
  containerTemplate(name: 'maven', image: 'maven:3.3.9-jdk-8-alpine', ttyEnabled: true, command: 'cat'),
  containerTemplate(name: 'golang', image: 'golang:1.8.0', ttyEnabled: true, command: 'cat')
  ]) {

  node('maven-golang') {
    stage('Build a Maven project') {
      git 'https://github.com/jenkinsci/kubernetes-plugin.git'
      container('maven') {
        sh 'mvn -B clean package'
      }
    }

    stage('Build a Golang project') {
      git url: 'https://github.com/terraform-providers/terraform-provider-aws.git'
      container('golang') {
        sh """
        mkdir -p /go/src/github.com/terraform-providers
        ln -s `pwd` /go/src/github.com/terraform-providers/terraform-provider-aws
        cd /go/src/github.com/terraform-providers/terraform-provider-aws && make build
        """
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
