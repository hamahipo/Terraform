resource "aws_route_table_association" "yljo-rtas_a" {
  subnet_id = aws_subnet.yljo_puba.id
  route_table_id = aws_route_table.yljo_rt.id
}

resource "aws_route_table_association" "yljo-rtas_c" {
  subnet_id = aws_subnet.yljo_pubc.id
  route_table_id = aws_route_table.yljo_rt.id
}