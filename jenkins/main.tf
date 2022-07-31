provider "aws" {
  access_key = "*******************"
  secret_key = "*******************"
  region     = "us-east-2"
}

variable "name" {
  type        = string
  default     = "jenkins"
  description = "Name the instance on deploy"
}

resource "aws_instance" "devops_01_jenkins" {
  ami           = "ami-02f3416038bdb17fb"
  instance_type = "t2.micro"
  key_name      = "devops_01"

  tags = {
    Name = "${var.name}"
  }
}

