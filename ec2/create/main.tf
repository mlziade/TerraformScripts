provider "aws" {
  region = "<<REGION>>"
}

resource "aws_security_group" "<<SECURITY_GROUP_NAME>>" {
  name        = "<<SECURITY_GROUP_NAME>>"
  description = "Allow SSH and HTTP"
  
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "EC2 SG"
  }
}

resource "aws_instance" "<<RESOURCE_NAME>>" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.<<SECURITY_GROUP_NAME>>.id]

  tags = {
    Name = "<<TAG_NAME>>"
  }
}
