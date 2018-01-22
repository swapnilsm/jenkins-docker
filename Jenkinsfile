podTemplate(label: 'sandi-pod', containers: [
  containerTemplate(name: 'sandi-container', image: 'registry2.swarm.devfactory.com/codenation/sandimetz-enforcer:v1.0.2', ttyEnabled: true, command: 'cat')
  ]) {

  node('sandi-pod') {
    stage('Checks') {
      echo "Something"
      container('sandi-container') {
        checkout scm
        def gitUrl = sh(returnStdout: true, script: "git config --get remote.origin.url").trim()
        println gitUrl
        sh 'cat /etc/issue'
      }
    }
  }
}
