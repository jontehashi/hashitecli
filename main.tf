resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "CLI_VPC"
  }
}

resource "aws_instance" "jon_linux_box" {
  ami           = "ami-04a81a99f5ec58529" #free tier linux ami
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allows_linux_traffic.id ]

  tags = {
    Name = "Jon's linux 23"
  }
}

resource "aws_instance" "jon_windows_box" {
  ami           = "ami-07d9456e59793a7d5" #free tier windows ami
  instance_type = "t2.micro"

  tags = {
    Name = "Jon's windows"
  }
}

resource "aws_security_group" "allows_linux_traffic" {
  name        = "allow_traffic"
  description = "Allow all inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_traffic"
  
  }
}

resource "aws_vpc_security_group_ingress_rule" "llow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allows_linux_traffic.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allows_linux_traffic.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}
