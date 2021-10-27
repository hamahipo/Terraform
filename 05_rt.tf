resource "aws_route_table" "yljo_rt" {
  vpc_id = aws_vpc.yljo_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
  #  destination_prefix_list_id = "value"
    gateway_id = aws_internet_gateway.yljo_ig.id
  #  instance_id = "value"
  #  ipv6_cidr_block = "value"
  #  local_gateway_id = "value"
  #  nat_gateway_id = "value"
  #  network_interface_id = "value"
  #  transit_gateway_id = "value"
  #  vpc_endpoint_id = "value"
  #  vpc_peering_connection_id = "value"
  }
  tags = {
      Name = "yljo-rt"
  }
}