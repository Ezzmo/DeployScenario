resource "aws_security_group" "Front" {
  name = "front-security-group"
  description = "Frontend Security Group"
  vpc_id = "${aws_vpc.practice.id}"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Group =  "practice"
  }
}

resource "aws_security_group" "DB" {
  name = "DB-SG"
  description = "Database security group"
  vpc_id = aws_vpc.practice.id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["10.0.0.0/24"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Group =  "practice"
  }
}
