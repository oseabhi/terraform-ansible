provider "aws" {
    region = "us-east-2"
      
    }
  
resource "aws_instance" "ec2-server" {
    ami = "ami-0f924dc71d44d23e2"
    instance_type = "t2.micro"
    key_name = "Ansible"

    tags = {
      "Name" = "Linux"
      "Environment" = "dev"
    }
}
    resource "aws_instance" "ec2-server1" {
    ami = "ami-097a2df4ac947655f"
    instance_type = "t2.micro"
    key_name = "Ansible"
    
    tags = {
      "Name" = "Ubuntu"
      "Environment" = "qa"
    }
    }