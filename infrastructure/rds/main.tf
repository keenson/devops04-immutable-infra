provider "aws" {
  profile = var.profile
  region  = "us-east-1"
}

resource "aws_db_instance" "default" {
  allocated_storage      = 20    #free tier
  storage_type           = "gp2" #general purpose SSD
  engine                 = "postgres"
  instance_class         = "db.t3.micro"
  name                   = "contacts_db"
  username               = "postgres"
  password               = var.password
  identifier             = var.id
  vpc_security_group_ids = ["sg-08af308073593743d"]
  publicly_accessible    = true
}
