  resource "aws_subnet" "private" {
    vpc_id     = aws_vpc.main.id
    cidr_block = "10.0.32.0/20"
    availability_zone = "us-east-1a"
    tags = {
      Name = "private"
    }
  }

