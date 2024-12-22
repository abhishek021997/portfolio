pipeline {
    agent { label "dev" }


    stages {
          stage('Code') {
              steps {
                  echo 'Git file clone'
                  sh "pwd > /tmp/testout"
                  git branch: 'main', credentialsId: 'github_passwd', url: 'https://github.com/abhishek021997/portfolio.git'
                 
              }
          }

    }
}
