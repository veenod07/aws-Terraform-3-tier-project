# Create Database Subnet Group
# terraform aws db subnet group
resource "aws_db_subnet_group" "database-subnet-group" {
  name         = "database subnets"
  subnet_ids   = [aws_subnet.private-subnet-3.id, aws_subnet.private-subnet-4.id]
  description  = "Subnet for database Instances"

  tags   = {
    Name = "Databse Subnet"
  }
}


# Create Database Instance Restored from DB Snapshots
# terraform aws db instance
resource "aws_db_instance" "database-instance" {
  instance_class          = "${var.database-instance-class}"
  db_name                 = "mydb"
  engine                  = "mysql"
  engine_version          = "8.0"
  skip_final_snapshot     = true
  availability_zone       = "us-east-1a"
  identifier              = "${var.database-instance-identifier}"
  db_subnet_group_name    = aws_db_subnet_group.database-subnet-group.id
  multi_az                = "${var.multi-az-deployment}"
  vpc_security_group_ids  = [aws_security_group.database-security-group.id]
  allocated_storage      = 20
  publicly_accessible    = true
  username               = var.db-username
  password               = var.db-password
}