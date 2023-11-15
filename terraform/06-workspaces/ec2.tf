resource "aws_instance" "sample" {
  ami = "ami-052ed3344670027b3"
  instance_type = var.instance_type
  tags = {
    Name = var.env
  }
}

variable "instance_type" {}
variable "env" {}
