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
				sh 'docker run --rm --name app -id -p 80:80 app:test'
				sh 'nc -vz localhost 80'
				sh 'docker stop app'
			}
		}
		stage('Push registry') {
			steps {
				withDockerRegistry(credentialsId: 'dockerhub', url: 'https://hub.docker.com/repository/docker/antjos/app/general'){
				sh 'docker tag app:test antjos/app:stable'
				sh 'docker push antjos/app:stable'
				}
			}
		}
	}
}