pipeline {
    agent none 
    options { skipDefaultCheckout(false) } 
    stages { 
        stage('git pull') { 
            agent any 
            steps { 
                checkout scm 
            } 
        } 
        stage('Docker build') { 
            agent any 
            steps { 
                sh 'cd /var/lib/jenkins/workspace/testpipeline'
                sh 'who'
                sh 'docker build . -t testimage' 
            } 
        } 
        stage('Docker run') { 
            agent any 
            steps { 
                sh 'docker stop $(docker ps -a -q)'
                sh 'docker rm $(docker ps -a -q)'
                sh 'docker run -d -p 8088:80 testimage'
            } 
        } 
    } 
}
