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
				echo 'PRUEBA'
			}
		}
		stage('Push registry') {
			steps {
				echo 'Deploy'
			}
		}
	}
}
