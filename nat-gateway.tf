resource "aws_nat_gateway" "nattyG" {
  allocation_id = aws_eip.eip.id
  subnet_id = aws_subnet.public.id

  tags = {
      Name = "Nat gateway"
      Group = "practice"
  }
}
