provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "gaming_pc" {
  ami           = "ami-0b2f6494ff0b07a0e" # Windows Server 2022
  instance_type = "g4dn.xlarge" # GPU NVIDIA T4

  key_name = "gaming-key"

  user_data = file("../scripts/setup-gaming.ps1")

  tags = {
    Name = "CloudGamingPC"
  }
}
