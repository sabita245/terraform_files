provider "aws" {
  region     = "us-west-2"
  access_key = "AKIARC5WYXMBJI3JHXZW"
  secret_key = "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"
}
resource "aws_security_group" "var_demo" {
  name = "demo-variables"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}

variables.tf
variable "vpn_ip" {
  default = "116.50.30.20/32"
}
