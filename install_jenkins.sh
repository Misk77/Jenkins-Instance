#!/bin/bash
echo ""
echo "=== INSTALLATION USERDATA STARTS! ==="
echo ""

echo "=== UPDATE Linux-2 ==="
sudo yum update -y
echo ""
echo "=== INSTALL JAVA ==="
sudo yum remove java -y
sudo yum install java-1.8.0-openjdk -y
echo ""
echo "=== INSTALL JENKINS ==="
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y
sudo service jenkins start
echo ""
echo "=== INSTALLATION USERDATA COMPLETED! ==="