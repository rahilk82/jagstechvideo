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
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

          steps {
               script {
                    echo hostname
               }
           }
       }
  }
}
