pipeline {
    agent { label "dev" }


    stages {
        stage('Code') {
            steps {
                 
                git branch: 'main', credentialsId: 'github_passwd', url: 'https://github.com/abhishek021997/portfolio.git'
                 
            }
        }

        stage('Deploy') {
            steps {
                 sh "sh copy_data.sh"
               
                 
            }
          }


    }
}
