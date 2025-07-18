#!/bin/bash

sudo apt update -y

sudo apt install default-jre -y

java -version

sudo apt update -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update

sudo apt-get install jenkins -y

sudo service jenkins start

cat /var/lib/jenkins/secrets/initialAdminPassword

sudo service jenkins status




