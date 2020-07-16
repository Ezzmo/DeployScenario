resource "aws_route_table" "public" {
  vpc_id = aws_vpc.practice.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.practiceIG.id
  }

  tags = {
    Group =  "practice"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.practice.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nattyG.id
  }

  tags = {
    Group =  "practice"
  }
}

