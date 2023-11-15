resource "aws_instance" "sample" {
  ami = "ami-052ed3344670027b3"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sgid]
}

variable "sgid" {}
