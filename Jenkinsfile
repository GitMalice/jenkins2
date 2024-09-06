pipeline {
  agent any
  stages {
    stage('deploy docker'){
      steps {
        sh 'docker build -t myapp .'
        echo 'build done'
      }
    }
    stage('docker ps'){
      steps {
        sh 'docker ps'
        echo ${sh 'docker ps'}
      }
    }
  }
}
