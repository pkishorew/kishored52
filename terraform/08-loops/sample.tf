resource "aws_instance" "sample" {
  count = 2
  ami = "ami-052ed3344670027b3"
  instance_type = "t2.micro"
}

// Using function you can get a particular value
output "SERVER1_IP" {
  value = element(aws_instance.sample.*.public_ip, 0)
}

output "SERVER2_IP" {
  value = aws_instance.sample.*.public_ip[1]
}
