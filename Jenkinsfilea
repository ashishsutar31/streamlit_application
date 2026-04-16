pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ashishsutar31/streamlit_application.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ashishsutar/ashish-streamlit-app .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                sh '''
                    docker login -u ashishsutar -p 00000(password)
                    docker push ashishsutar/ashish-streamlit-app
                '''
            }
        }
        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f ashish-streamlit-container || true
                    docker run -d --name ashish-streamlit-container -p 8501:8501 ashishsutar/ashish-streamlit-app
                '''
            }
        }
    }
}

