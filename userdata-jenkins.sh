#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install epel -y
sudo yum install daemonize -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword



375bc5174a184b7fa3f478eec73f1995 (senha criada automaticamente para esta instancia no curso)