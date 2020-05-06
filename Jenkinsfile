pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			 sh 'docker build -t app .'
			}
		}
		stage('Test') {
			steps {
				echo 'TEST'
				echo 'PRUEBA1'
			}
		}
		stage('Push registry') {
			steps {
				echo 'Deploy'
			}
		}
	}
}
