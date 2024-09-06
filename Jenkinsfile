pipeline {
  agent any
  stages {
    stage('deploy docker'){
      steps {
        sh 'sudo usermod -aG docker $USER'
        sh 'docker build -t myapp .'
        echo 'build done'
      }
    }
    stage('docker ps'){
      steps {
        sh 'docker ps'
      }
    }
  }
}
