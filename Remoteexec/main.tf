resource "aws_instance" "sre_practice" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  key_name               = "sre-practice-key" # Ensure this exists in AWS

  # 1. Connection block is required for remote-exec
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("/c/Users/Pavan Reddy/.ssh/sre-practice-key.pem") # Path to your private key
    host        = self.public_ip
  }

  # 2. Remote-exec: Runs on the new EC2 instance
  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras install docker -y",
      "sudo service docker start",
      "echo 'Remote-exec completed' > /tmp/status.txt"
    ]
  }

  # 3. Local-exec: Runs on your local machine/runner
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > instance_ip.txt"
  }

  tags = {
    Name = "SRE-Interview-Lab"
  }
}