provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "production-vpc" {
  cidr_block            = "${var.vpc_cidr}"
  enable_dns_hostnames  = true

  tags = {
    Name = "Production-VPC"
  }
}

resource "aws_instance" "jenkinstest" {
    instance_type = "t2.micro"
    ami = "ami-0dba2cb6798deb6d8"
    key_name = "amazingdevops"
    
    count = "${var.machines}"
    subnet_id = "${element(var.ec2_subnet_ids, count.index)}"
   
    tags = {
      Name = "somemachine-${count.index}",
      LOB = "oi",
      project = "mulesoft"
  }

    volume_tags = {
      "Name" = "HelloWorld-volume"
    }
  }
