provider "aws" {
  region     = "us-east-1"
}

variable "image_id" {
  type = string
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami           = var.image_id
}

output "instance_ip_addr" {
  value         = aws_instance.server.private_ip
  description   = "The private IP address of the instance."
}