provider "aws" {
  region = "us-west-2"
}


resource "aws_ami_from_instance" "kk-ami" {
  name               = "terraform-kk-ami"
  source_instance_id = "i-0226b45b0efe850c3"
}

output "ami_id"{
  value = aws_ami_from_instance.kk-ami.id
}

output "source_ec2_id"{
  value = aws_ami_from_instance.kk-ami.source_instance_id
}