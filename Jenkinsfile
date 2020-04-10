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
				sh 'docker run -d app'
				sh 'nc -vz localhost 80'
				sh 'docker stop app'
			}
		}
		stage('Push registry') {
			steps {
			sh 'docker tag app:test antjos/app:stable'
			sh 'docker push antjos/app:stable'
			}
		}
	}
}