# This Project Involves Docker Volume and Jenkins

- Created Docker Volume 
cmd docker volume create jenkins-data

- Creating Docker Container
cmd docker run -it --name JenkinsL -p 8080:8080 -v jenkins-data:/var/jenkins_home jenkins/jenkins
