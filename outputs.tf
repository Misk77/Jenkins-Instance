output "jenkins_DNS_address" {
  value = aws_instance.jenkins-instance.public_dns
}

output "jenkins_IP_address" {
  value = aws_instance.jenkins-instance.public_ip
}
