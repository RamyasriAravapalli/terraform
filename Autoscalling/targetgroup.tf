resource "aws_lb_target_group" "web_tg" {
  name     = var.target_group_name
  port     = var.port
  protocol = "HTTP"
  vpc_id   = "vpc-07b1a256eec19b94e"
}

resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.web_tg.arn
  target_id        = aws_launch_template.launch_example.id
  port             = 80
}