resource "aws_lb" "loadbalancer" {
    name = var.alb_names
    load_balancer_type = "application"
    security_groups = [aws_security_group.security_group1.id]

}