### This is a stand alone Jenkins on aws
## Can be used on the Solace- test env ( Solace aws ami isn't available in stockholm)
## Or in any Jenkins pipeline


### NOTES
terraform version ">= 0.13"
required_providers version = ">=3.21"


DONT FOREGET THE aws key pem, if you want to ssh into the jenkins instance

# terraform.tfvars include this variable
region               = "YOUR_REGION_OF_CHOICE"

environment          = "ENV_NAME_OF_CHOICE"

vpc_cidr             = "vpc_cidr_OF_CHOICE"

public_subnet_1_cidr = "public_subnet_1_cidr_OF_CHOICE"

private_subnet_1_cidr = "public_subnet_1_cidr_OF_CHOICE"

instance_type = "instance_type_OF_CHOICE"

instance_ami  = "instance_ami_OF_CHOICE"

keyname       = "keyname_OF_CHOICE"


# Jenkins-Instance
connection to Jenkins UI:
[aws public ip]:8080
- For the Jenkins pw find it inside the aws instance: 
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
- Then setup the Jenkins as you desire.
