pipeline {
  agent any
  stages {
    stage('deploy docker'){
      steps {
        sh 'docker build -t myapp .'
        echo 'build done'
      }
    }
    stage('docker compose'){
      steps {
        sh 'docker compose -d up'
      }
    }
    stage('docker ps'){
      steps {
        sh 'docker ps'
      }
    }
  }
}
