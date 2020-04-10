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
				sh 'docker run -d --name app app:test'
				sh 'nc -vz localhost 80'
				sh 'docker stop app'
			}
		}
		stage('Push registry') {
			steps {
			withCredentials([usernamePassword(credentialsId: 'antjos', passwordVariable: 'password', usernameVariable: 'user')])
			sh 'docker tag app:test antjos/app:stable'
			sh 'docker push antjos/app:stable'
			}
		}
	}
}