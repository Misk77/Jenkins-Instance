### This is a stand alone Jenkins on aws
## Can be used on the Solace- test env ( Solace aws ami isn't available in stockholm)
## Or in any Jenkins pipeline


### NOTES
terraform version ">= 0.13"
required_providers version = ">=3.21"


DONT FOREGET THE aws key pem, if you want to ssh into the jenkins instance

# terraform.tfvars include this variable
region
environment
vpc_cidr
public_subnet_1_cidr
private_subnet_1_cidr
instance_type
instance_ami
keyname


# Jenkins-Instance
