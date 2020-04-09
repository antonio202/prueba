pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			 sh 'docker build -t app_prueba1 .'
			}
		}
		stage('Test') {
			steps {
				echo 'TEST'
			}
		}
		stage('Deploy') {
			steps {
			echo 'DEPLOY'
			}
		}
	}
}