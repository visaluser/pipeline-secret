provider "aws" {
  region = "us-east-2" 
    environment = {
    AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID,
    AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY,
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0e83be366243f524a" 
  instance_type = "t2.micro"  
  key_name = var.key_name
  tags = {
    Name = "MyEC2Instance"
  }
}

