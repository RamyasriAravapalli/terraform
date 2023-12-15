resource "aws_route_table_association" "public-route-1-association" {
  route_table_id = aws_route_table.public_route_table.id
  subnet_id      = aws_subnet.sh_subnet_1.id
}