variable "aws_region" {
  description = "Region for the VPC"
  default     = "us-east-1"
  #default = "us-east-2"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default     = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default     = "10.10.1.0/24"
}

variable "ami" {
  description = "Amazon Linux AMI"
  #us-east-1
  default = "ami-0323c3dd2da7fb37d"

  #us-east-2
  #default = "ami-0f7919c33c90f5b58"

}

variable "key" {
  default = "content-cyber-range-aws-key"
}

variable "indexer" {
  #default = "t2.micro"
  default = "i3.4xlarge"
}

variable "search_head" {
  #default = "t2.micro"
  default = "m4.4xlarge"
}

variable "cluster_master" {
  #default = "t2.micro"
  default = "m4.large"
}
