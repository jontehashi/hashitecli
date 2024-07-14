
resource "aws_instance" "jon_linux_box" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"

  tags = {
    Name = "Jon's linux"
  }
}

resource "aws_instance" "jon_windows_box" {
  ami           = "ami-07d9456e59793a7d5"
  instance_type = "t2.micro"

  tags = {
    Name = "Jon's windows"
  }
}