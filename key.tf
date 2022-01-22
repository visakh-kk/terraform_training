provider "aws" {
  region = "us-west-2"
}

resource "aws_key_pair" "kk-key" {
  key_name   = "kk-test-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDbXalurGNYqaEFGXLDU8ODhdRnAnSwHxVeepSqd/yHqhSgH0yecicSUOyjfQ/kfOl9i4lJZbhd0aDwG3yTt63I/S5a+XvXsPrkIxHVkhzNNuvr6J1S2qaJYPeUCZG5nbHkZcMXOnfzFJospiiGIRw19AXWqRljVtdug7YdwmvIIiNwpBncrz83WJ3AmgVonrtqgd9rVy0yFaox1iFmKhZyBjFhQrhbnHfnDHjx8zRLt1aDBxdY24c+RXc6Frqfjw+BS9JBH5TTdVONJ5MdYIUnhnb2W8je6KcqSm2jUiOyTK5Cs/+9jvU/Wp2DYLgpSRBUXiPQELXoyCBCignAVQ3zMo3xOJBAulmY8qyfYYuKTQzRnN4KkM8MtMoiCcL2LM6jyN8JoHQThXQToQeHFiHW/7RQf5Eu6JuTqwUENnmDOu0eXHTCAR2w1YhIs7XwPoMZo++7Us1SeQLWlKY9naNU7a34uYUEI9vH0KEjZSvstdl9g/fgE+jfM4Rsrj6XlR8= root@DESKTOP-H56CL44"



tags = {

Name = "test-kk"

}

}
