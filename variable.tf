variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR block"
    type = string
  
}

variable "public-subnet-1-cidr" {
    default = "10.0.0.0/24"
    description = "Public Subnet 1 CIDR block"
    type = string
  
}

variable "public-subnet-2-cidr" {
    default = "10.0.1.0/24"
    description = "Public Subnet 2 CIDR block"
    type = string
  
}

variable "private-subnet-1-cidr" {
    default = "10.0.2.0/24"
    description = "Private Subnet 1 CIDR block"
    type = string
  
}

variable "private-subnet-2-cidr" {
    default = "10.0.3.0/24"
    description = "Private Subnet 2 CIDR block"
    type = string
  
}


variable "private-subnet-3-cidr" {
    default = "10.0.4.0/24"
    description = "Private Subnet 3 CIDR block"
    type = string
  
}


variable "private-subnet-4-cidr" {
    default = "10.0.5.0/24"
    description = "Private Subnet 4 CIDR block"
    type = string
  
}


variable "ssh-location" {
    default = "0.0.0.0/0"
    description = "IP address that can SSH into EC2 Instance"
    type = string
  
}


variable "database-snapshot-identifier" {
    default = "arn:aws:rds:us-east-1:867344458856:cluster-snapshot:database-1-final-snapshot"
    description = "Database Snapshot ARN"
    type = string
  
}


variable "database-instance-class" {
    default = "db.t3.micro"
    description = "Database Instance type"
    type = string
  
}


variable "database-instance-identifier" {
    default = "database-1"
    description = "Database Instance identifier"
    type = string
  
}


variable "multi-az-deployment" {
    default = false
    description = "Create a Standby Instance"
    type = bool
  
}

variable "db-username" {
    default = "root"
    description = "username for fb"
    type = string
  
}

variable "db-password" {
    default = "12345678"
    description = "password for db"
    type = string
  
}