podTemplate(label: 'maven', containers: [
  containerTemplate(name: 'maven', image: 'maven:3.3.9-jdk-8-alpine', ttyEnabled: true, command: 'cat')
  ]) {

  node('maven') {
    stage('Build a Maven project') {
      def gitUrl = sh "git config --get remote.origin.url"
      println gitUrl
      echo "Something"
      container('maven') {
          sh 'cat /etc/issue'
      }
    }
  }
}
