pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			 sh 'docker build -t app1 .'
			}
		}
		stage('Test') {
			steps {
				echo 'TEST'
			}
		}
		stage('Push Registry') {
			steps {
			echo 'DEPLOY'
			}
		}
	}
}