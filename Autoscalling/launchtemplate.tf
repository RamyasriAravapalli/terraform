resource "aws_launch_template" "launch_example"{
    name = var.launchtemplate
    image_id = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [aws_security_group.security_group1.id]
}