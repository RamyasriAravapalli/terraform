resource "aws_subnet" "sh_natsubnet_1"{
    vpc_id = aws_vpc.vpc_main.id
    cidr_block = "10.0.0.0/27"
    availability_zone = "us-east-1a"

}

#creating 2nd NAT subnet

resource "aws_subnet" "sh_natsubnet_2"{
    vpc_id = aws_vpc.vpc_main.id
    cidr_block = "10.0.0.0/28"
    availability_zone = "us-east-1b"

}