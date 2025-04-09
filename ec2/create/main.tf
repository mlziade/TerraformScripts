provider "aws" {
  region = "<<REGION>>"
}

resource "aws_instance" "<<RESOURCE_NAME>>" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "<<TAG_NAME>>"
  }
}
