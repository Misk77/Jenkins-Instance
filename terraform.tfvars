region               = "eu-north-1"
environment          = "Jenkins"
vpc_cidr             = "10.0.0.0/16"
public_subnet_1_cidr = "10.0.1.0/24"

private_subnet_1_cidr = "10.0.10.0/24"

instance_type = "t3.micro"
instance_ami  = "ami-02511cb3673b49e04"
keyname       = "tf-jenkins-aws"