resource "aws_route" "public_subnet_igw"{
    route_table_id = aws_route_table.public_route_table.id
    gateway_id = aws_internet_gateway.igw_example.id
    destination_cidr_block = "0.0.0.0/0"
}