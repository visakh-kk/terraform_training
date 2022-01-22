provider "aws" {
  region = "us-west-2"
}

variable "vpc_id" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

resource "aws_subnet" "kk-teraform" {
  vpc_id            = data.aws_vpc.selected.id
  availability_zone = "us-west-2a"
  cidr_block        = cidrsubnet(data.aws_vpc.selected.cidr_block, 1, 1)
}
resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.kk-teraform.id
  private_ips = ["172.31.128.10"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "kk" {
  ami           = "ami-066333d9c572b0680" 
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

    tags = {
    Name = "tf-kk"
  }
}
