
pipeline {
  agent {
    kubernetes {
      label 'sandi-metz-enforcer'
      containerTemplate {
        name 'sandi-metz-enforcer'
        image 'ubuntu:latest'
        ttyEnabled true 
        command 'cat'
      }
    }
  }
  stages {
    stage('Test') {
      steps {
        container('sandi-metz-enforcer') {
          sh ''
        }
      }
    }
  }
}
