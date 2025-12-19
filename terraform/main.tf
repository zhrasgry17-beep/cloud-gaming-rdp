provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "gaming_pc" {
  ami           = "ami-0c02fb55956c7d316" # Windows Server 2022
  instance_type = "g4dn.xlarge"
  key_name      = "gaming-key"

  vpc_security_group_ids = [aws_security_group.rdp.id]

  tags = {
    Name = "CloudGamingPC"
  }
}

resource "aws_security_group" "rdp" {
  name = "allow-rdp"

  ingress {
    from_port   = 3389
    to_port     = 3389
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
