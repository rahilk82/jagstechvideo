pipeline {
  agent any
  stages {
    stage('Checkout_SCM') {
      parallel {
        stage('Checkout_SCM') {
          steps {
            script {
              git "https://github.com/jagasworld/jagstechvideo.git"
            }

          }
        }

        stage('Approval') {
          steps {
            input(message: 'You want to deploy it ?', ok: 'yes')
          }
        }

      }
    }

    stage('TF Plan') {
      steps {
        sh '\'pwd;cd /var/lib/jenkins/jobs/my_first_jenkinsfile_pipeline_job/ ; terraform init -input=false\''
      }
    }

  }
  environment {
    AWS_ACCESS_ID = 'AWS_ACCESS_IDN'
    AWS_SECRET_ID = 'AWS_SECRET_IDN'
  }
}