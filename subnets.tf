resource "aws_subnet" "public" {
  vpc_id = aws_vpc.practice.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Pubnet"
    Group = "practice"
  }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.practice.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Privnet"
    Group = "practice"
  }
}
