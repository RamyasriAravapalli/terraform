provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo_instances" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "Ramya1"
  vpc_security_group_ids = [aws_security_group.security_group.id]
  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = "${file("Ramya1.pem")}"
    host = self.public_ip
  }
provisioner "remote-exec" {
    inline = ["sudo yum install -y nginx"]
  }
  }

resource "aws_security_group" "security_group" {
  name = "security_group"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


  