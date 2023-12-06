resource "aws_lb" "loadbalancer" {
    name = var.alb_names
    load_balancer_type = "application"
    security_groups = [aws_security_group.security_group1.id]
    subnets = [aws_subnet.sh_subnet_1.id , aws_subnet.sh_subnet_2.id]

}