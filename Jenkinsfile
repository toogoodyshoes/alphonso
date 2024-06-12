pipeline {
    agent any
    stages {
        // stage('Cleanup Workspace') {
        //     steps {
        //         cleanWs()
        //     }
        // }

    stage('Checkout from SCM') {
            steps {
                git branch: 'develop', credentialsId: 'toogoodyshoes', url: 'https://github.com/toogoodyshoes/alphonso'
            }
        }

        stage('Setup Flutter Workspace') {
            steps {
                sh "curl -o ~/flutter_linux_3.22.2-stable.tar.xz -L https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.2-stable.tar.xz"
                sh "rm -rf ~/flutter_sdk && mkdir ~/flutter_sdk && tar -xf ~/flutter_linux_3.22.2-stable.tar.xz -C ~/flutter_sdk"
                sh "export PATH='~/flutter_sdk/flutter/bin:$PATH'"
                sh "source ~/.bash_profile"
            }
        }

        stage('Perform Tests') {
            steps {
                sh "flutter test"
            }
        }
    }
}