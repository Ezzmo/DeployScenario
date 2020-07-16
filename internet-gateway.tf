resource "aws_internet_gateway" "practiceIG" {
    vpc_id = aws_vpc.practice.id
    
    tags = {
    Group =  "practice"
  }
}

