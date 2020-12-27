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

    stage('TF Plan') {
      steps {
        sh 'echo hostname'
      }
    }
  }
 }
}
