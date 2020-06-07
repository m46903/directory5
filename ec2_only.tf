#added another line 
#added this line as a test commet
provider "aws" { region = "us-east-2" }

resource "aws_instance" "ec2_only" {

  ami           = "ami-01e36b7901e884a10" #Centos us-east-2
  instance_type = "t2.micro"
  key_name      = "ohio-content-cyber-range-aws-key"

  tags = { Name = "ec2_with_default_vpc" }
}

