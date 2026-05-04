# 1. Define the Security Group first
resource "aws_security_group" "app_sg" {
  name        = "sre-interview-sg"
  
  dynamic "ingress" {
    for_each = [22, 80, 8080, 3306, 27017, 6379, 5672]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

# 2. Reference it in the Instance
resource "aws_instance" "sre_practice" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.app_sg.id] # Now it exists!
  key_name               = "sre-practice-key" 

  connection {
    type        = "ssh"
    user        = "ec2-user"
    # Use the Windows-style path with forward slashes
    private_key = file("C:/Users/Pavan Reddy/.ssh/sre-practice-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = ["echo 'Connected successfully' > /tmp/test.txt"]
  }
}