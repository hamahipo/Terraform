resource "aws_route_table_association" "yljo_ngartas_a" {
  subnet_id = aws_subnet.yljo_pria.id
  route_table_id = aws_route_table.yljo_ngart_a.id
}

resource "aws_route_table_association" "yljo_ngartas_c" {
  subnet_id = aws_subnet.yljo_pric.id
  route_table_id =  aws_route_table.yljo_ngart_c.id
}