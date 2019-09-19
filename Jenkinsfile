#!groovy

timeout(45) {
    k8sPod(
            memoryRequest: '2000Mi',
            memoryLimit: '4000Mi'
    ) {
        timestamps {
            try {
                stage('Checkout') {
                    checkout scm
                    shortCommit = sh(returnStdout: true, script: "git rev-parse --short=12 HEAD").trim()
                    currentBuild.displayName += " [" + shortCommit + "]"
                }

                container('build') {
                    stage('Build') {
                        echo "Build"
                    }
                }

                currentBuild.result = 'SUCCESS'
            } catch (e) {
                currentBuild.result = 'FAILURE'
                echo "Jenkinsfile caught error: ${e}"
            }
            
            slackNotify(
                    channel: 'stoussaint',
                    buildStatus: currentBuild.result,
                    title: 'bleh',
                    message: 'bleh'
            )
        }
    }
}
