podTemplate(label: 'maven', containers: [
  containerTemplate(name: 'maven', image: 'registry2.swarm.devfactory.com/codenation/sandimetz-enforcer:v1.0.2', ttyEnabled: true, command: 'cat')
  ]) {

  node('maven') {
    stage('Build a Maven project') {
      echo "Something"
      container('maven') {
        def gitUrl = sh "git config --get remote.origin.url"
        println gitUrl
        sh 'cat /etc/issue'
      }
    }
  }
}
