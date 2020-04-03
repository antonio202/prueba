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
				sh '/bin/nc -vz localhost 8080'
			}
		}
		stage('Push Registry') {
			steps {
				echo 'DEPLOY'
			}
		}
	}
}