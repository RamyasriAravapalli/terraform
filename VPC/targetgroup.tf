resource "aws_lb_target_group" "web_tg" {
  name     = var.target_group_name
  port     = var.port
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc_main.id
}

resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.web_tg.arn
  target_id        = aws_launch_template.launch_example.id
  port             = 80
}