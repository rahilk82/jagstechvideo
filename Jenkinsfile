pipeline {
  agent any
  stages {
    stage('Checkout_SCM') {
      steps {
        script {
          git "https://github.com/jagasworld/jagstechvideo.git"
        }

      }
    }

    stage('Approval') {
      parallel {
        stage('Approval') {
          when {
            not {
              equals expected: true, actual: params.autoApprove
            }

          }
          steps {
            script {
              input message: "Do you want to apply the plan?",
              parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
            }

          }
        }

        stage('csac') {
          steps {
            input('deploy?')
          }
        }

      }
    }

  }
}
