
resource "aws_instance" "Jon_linux_box" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"

  tags = {
    Name = "Jon's Ec2"
  }
}
