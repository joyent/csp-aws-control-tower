resource "aws_security_group" "bastion" {
  name        = "bastion-ssh-sg"
  description = "Allow SSH only from corporate IPs"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["203.0.113.0/24"]  # Replace with corporate IP range
  }

  # Optional RDP rule (for Windows Bastions)
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["203.0.113.0/24"]
  }

  tags = {
    Name = "bastion-sg"
  }
}
#For PII-compliant DB bastion hosts, restrict to SBC or network-separated IP ranges only.