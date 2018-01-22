podTemplate(label: 'sandi', containers: [
  containerTemplate(name: 'sandi', image: 'registry2.swarm.devfactory.com/codenation/sandimetz-enforcer:v1.0.2', ttyEnabled: true, command: 'cat')
  ]) {

  node('sandi') {
    stage('Build a Maven project') {
      echo "Something"
      container('sandi') {
        def gitUrl = sh(returnStdout: true, script: "ls /").trim()
        println gitUrl
        sh 'cat /etc/issue'
      }
    }
  }
}
