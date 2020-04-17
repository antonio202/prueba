pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
			 sh 'docker build -t app:test .'
			}
		}
		stage('Test') {
			steps {
				echo 'TEST'
			}
		}
		stage('Push registry') {
			steps {
				echo 'Deploy'
				}
			}
		}
	}
}
