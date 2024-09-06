pipeline {
  agent any
  stages {
    stage('deploy docker'){
      sh 'docker build -t myapp .'
      echo 'build done'
    }
    stage('docker ps'){
      sh 'docker ps'
      echo ${sh 'docker ps'}
    }
  }
}
