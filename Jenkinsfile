pipeline {
  agent any 
  tools { nodejs "nodejs" }
  stages {
    stage ('install') {
      steps {
        sh 'npm install'
        sh 'npm install -g @angular/cli@9.1.0  '
      }
    }
    stage ('build') {
      steps {
        sh 'npm run ng build --prod'
      }
    }
  }
}
