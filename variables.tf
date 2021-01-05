variable "region" {
  default     = "us-east-1"
  description = "AWS Region"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "VPC CIDR Block"
}

variable "machines" {
    default = 1 
  }

variable "ec2_subnet_ids" { default = [ "subnet-fbdf66da", "subnet-84de61db" ] }
