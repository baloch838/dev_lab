pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
		git branch: 'main', url: 'https://github.com/baloch838/dev_lab'
                echo 'checkout..'
            }
        }
        stage('Build Dokcer Image') {
            steps {
		sh 'docker build -t python-app .'
                echo 'building docker image..'
		
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
            	sh kubectl apply -f deployment.yaml'
                echo 'Deploying kubernets ....'
            }
        }
    }
    post {
    	success {
    		echo 'pipeline succeeded'
    		}
    	failure {
    		echo 'pipline failed'
    		}
    		
}
}
