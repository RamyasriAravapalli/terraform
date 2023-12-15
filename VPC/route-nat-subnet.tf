resource "aws_route_table_association" "nat-route-1-association" {
  route_table_id = aws_route_table.nat_route_table.id
  subnet_id      = aws_subnet.sh_natsubnet_1.id
}