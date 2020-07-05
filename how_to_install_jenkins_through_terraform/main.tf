provider "aws" {
    region = var.region
}

  description = "Internet reaching access for EC2 Instances"
  vpc_id      = "vpc-f434748e"

  ingress {
    from_port   = 8080
    protocol    = "TCP"
    to_port     = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    protocol    = "TCP"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "jenkins" {
    instance_type = var.instance_type
    ami = var.ami_id
    key_name = "jagstechvideodemo"
    security_groups = ["${aws_security_group.ec2_public_security_group.name}"]
    user_data = <<-EOF
      #!/bin/bash
      sudo apt-get update
      sudo apt install -y openjdk-8-jre-headless
      wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
      sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
      sudo apt update
      sudo apt install -y jenkins 
      sudo systemctl start jenkins
      EOF
    tags = {
      Name = "HelloWorld",
      LOB = "${var.lob_dev}"
  }

    volume_tags = {
      "Name" = "HelloWorld-volume"
    }
}
