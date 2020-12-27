pipeline {
  agent any
  stages {
        stage('Checkout_SCM') {
            steps {
                 script
                        {
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
        sh 'echo hostname'
      }
    }
  }
 }
