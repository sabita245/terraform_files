main.tf

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIARC5WYXMBJI3JHXZW"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = var.instancetype
}

variables.tf

variable "instancetype" {
  default = "t2.micro"
}

terraform.tfvars

instancetype = "t2.small"

custom.tfvars
instancetype="t2.nano"
