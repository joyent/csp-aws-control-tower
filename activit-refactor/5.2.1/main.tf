resource "aws_instance" "bastion_db" {
  ami                    = "ami-12345678"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.bastion.id
  associate_public_ip_address = true

  tags = {
    Name                = "bastion-db"
    SEC_ASSETS_GATEWAY = "DB"    # or GENERAL
    Environment         = "prod"
    Role                = "bastion"
  }
}
