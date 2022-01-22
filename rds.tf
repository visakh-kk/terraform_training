provider "aws" {
  region = "us-west-2"
}

resource "aws_db_instance" "kk-rds" {
  
  identifier           = "kkrds-tf"
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "kk-rds-tf"
  username             = "kk-admin"
  password             = "kk@12345"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}