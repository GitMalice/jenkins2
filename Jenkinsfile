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
        sh 'docker compose down'
        sh 'docker compose up -d'
      }
    }
    stage('docker ps'){
      steps {
        sh 'docker ps'
      }
    }
  }
}
