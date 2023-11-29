resource "aws_instance" "demo_instances" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "Ramya1"
  vpc_security_group_ids = [aws_security_group.security_group1.id]
  
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("Ramya1.pem")
    host        = self.public_ip
  }
  
  provisioner "remote-exec" {
    inline = ["sudo yum install -y nginx"]
  }
}