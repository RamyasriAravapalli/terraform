resource "aws_lb_listener" "lb_listener_http" {
  // name = var.alb_names
   load_balancer_arn    = aws_lb.loadbalancer.id
   port                 = "80"
   protocol             = "HTTP"
   default_action {
    target_group_arn = aws_lb_target_group.web_tg.id
    type             = "forward"
  }
}