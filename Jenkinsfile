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
                sh "curl -o ~/Downloads/flutter_linux_3.22.2-stable.tar.xz -L https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.2-stable.tar.xz"
                sh "tar -xf ~/Downloads/flutter_linux_3.22.2-stable.tar.xz -C /usr/bin/"
                sh "echo 'export PATH=\"/usr/bin/flutter/bin:$PATH\"' >> ~/.bash_profile"
            }
        }

        stage('Perform Tests') {
            steps {
                sh "flutter test"
            }
        }
    }
}