resource "aws_vpc" "practice" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Group = "practice"
  }
}
