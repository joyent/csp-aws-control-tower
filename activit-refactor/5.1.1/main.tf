#Create dedicated subnet module for Bastion
resource "aws_subnet" "bastion" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.10.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "bastion-subnet"
    SEC_ISOLATED_SUBNET = "true"
  }
}

#Apply a SEC_ISOLATED_SUBNET=true tag for future audits (e.g., with AWS Config or custom scripts).
