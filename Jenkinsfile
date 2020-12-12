pipeline {
  agent any
  stages {
    stage('Checkout_SCM') {
      steps {
        git(url: 'https://github.com/jagasworld/jagstechvideo.git', branch: 'master')
      }
    }

    stage('TF Plan') {
      steps {
        sh '\'pwd;cd /var/lib/jenkins/workspace/Sandbox/PL_Sandbox_Pipeline_JOB ; terraform init -input=false\''
      }
    }

  }
  environment {
    AWS_ACCESS_ID = 'AWS_ACCESS_IDN'
    AWS_SECRET_ID = 'AWS_SECRET_IDN'
  }
}