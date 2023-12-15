resource "aws_route_table" "nat_route_table"{
    vpc_id = aws_vpc.vpc_main.id
}