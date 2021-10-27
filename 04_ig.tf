resource "aws_internet_gateway" "yljo_ig" {
  vpc_id = aws_vpc.yljo_vpc.id

  tags = {
    Name = "yljo-ig"
  }
}