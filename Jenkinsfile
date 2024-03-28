pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t gcr.io/bexup-devopslabs/simple-flask-python-api .'
                sh 'docker push gcr.io/bexup-devopslabs/simple-flask-python-api'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    def image = 'gcr.io/bexup-devopslabs/simple-flask-python-api'
                    sh "gcloud run deploy simple-flask-python-api --image $image --platform managed --region global --quiet"
                }
            }
        }
    }
}
