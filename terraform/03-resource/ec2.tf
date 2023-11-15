resource "aws_instance" "sample" {
  ami = "ami-052ed3344670027b3"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.sample.public_ip
}


// Resources have arguments as inputs

// ami & instance_type are arguments

// Resources have attributes as outputs

// aws_instance.sample.public_ip is a attribute

