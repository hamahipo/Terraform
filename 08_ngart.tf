resource "aws_route_table" "yljo_ngart_a" {
  vpc_id = aws_vpc.yljo_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.yljo_nga_a.id
  }
  tags = {
      Name = "yljo_nga-rta"
  }
}

resource "aws_route_table" "yljo_ngart_c" {
  vpc_id = aws_vpc.yljo_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.yljo_nga_c.id
  }
  tags = {
      Name = "yljo_nga-rtc"
  }
}