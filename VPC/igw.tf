resource "aws_internet_gateway" "igw_example"{
    vpc_id = aws_vpc.vpc_main.id
}