pipeline {
  agent any
  stages {
    stage('deploy docker'){
      steps {
        sh 'docker build -t myapp .'
        echo 'build done'
      }
    }
    stage('docker run'){
      steps {
        sh 'docker run -d --name myapp_container myapp'
      }
    }
    stage('docker ps'){
      steps {
        sh 'docker ps'
      }
    }
  }
}
