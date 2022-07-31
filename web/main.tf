provider "aws" {
  access_key = "*******************"
  secret_key = "*******************"
    region = "us-east-2"
}

variable "name" {
  type        = string
  default     = "web"
  description = "Name the instance on deploy"
}

resource "aws_instance" "devops_01_web" {
    ami = "ami-0960ab670c8bb45f3"
    instance_type = "t2.micro"
    key_name = "devops_01"

    tags = {
        Name = "${var.name}"
    }
}

