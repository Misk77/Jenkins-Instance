#!/bin/bash
export PATH=/usr/local/bin:$PATH;

echo ""
echo "=== INSTALLATION USERDATA_JENKINS STARTS! ==="
echo ""

echo "=== UPDATE Linux-2 ==="
sudo yum update -y
echo ""
echo "=== INSTALL JAVA ==="
sudo yum remove java -y
sudo yum install java-1.8.0-openjdk -y
echo ""
echo "=== INSTALL JENKINS STARTS ==="
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y
sudo service jenkins start
echo ""
echo "=== INSTALL USERDATA_JENKINS COMPLETED ==="

# THIS WE DONT USE, we are using a independent aws instance instead!!
#echo "=== INSTALLATION USERDATA_JENKINS COMPLETED! ==="
#echo "================================================"
#echo "================================================"
#echo "=== INSTALLATION USERDATA_Solace START! ==="
#sudo yum -y update
#sudo yum install -y docker
#sudo service docker start
#sudo usermod -a -G docker ec2-user
#sudo chkconfig docker on
#sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
#chown root:docker /usr/local/bin/docker-compose
#chown ec2-user:ec2-user /home/ec2-user/docker-compose-solace.yml
#/usr/local/bin/docker-compose -f /home/ec2-user/docker-compose-solace.yml build
#/usr/local/bin/docker-compose -f /home/ec2-user/docker-compose-solace.yml up -d




