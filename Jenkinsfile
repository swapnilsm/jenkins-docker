
pipeline {
  agent {
    kubernetes {
      label 'mypod'
      containerTemplate {
        name 'ubuntu'
        image 'ubuntu'
        ttyEnabled true
        command 'cat'
      }
    }
  }
  stages {
    stage('Show version') {
      steps {
        container('ubuntu') {
          sh 'cat /etc/issue'
        }
      }
    }
  }
}
