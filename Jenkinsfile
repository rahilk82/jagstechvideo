pipeline {
  agent any
  stages {
    stage('Checkout_SCM') {
      steps {
        git(url: 'https://github.com/jagasworld/jagstechvideo.git', branch: 'master')
      }
    }

  }
  environment {
    AWS_ACCESS_ID = 'AWS_ACCESS_IDN'
    AWS_SECRET_ID = 'AWS_SECRET_IDN'
  }
}