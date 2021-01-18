pipeline {  
    agent any

    environment {
    registry = "nautilustech/test"
    registryCredential = 'DockerhubCred'
    }  
  
    stages {
        stage('Cloning Git') {
          steps {
            git 'https://github.com/Nautilus-Technologies/test.git/'
            // credentialsId 'JenkinsSSH'
          }
        }

        stage('Building image') {
            when {expression { env.GIT_BRANCH == "origin/master" }}     
            steps {
                git branch: 'master',
                credentialsId: 'GithubCred',
                url: 'https://github.com/Nautilus-Technologies/test.git/'
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }

        stage('Unit Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        
        stage('Remove Unused docker image') {
            steps{
              sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}