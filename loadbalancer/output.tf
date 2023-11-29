output "publicip"{
  value = aws_instance.demo_instances.public_ip
}
output "vpcid" {
    value = data.aws_vpc.default.id
}