#vpc variable
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

#Public Subnet Variables
variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}

variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}

#Public Route Tabel Variables 
variable "public_route_table_cidr" {
  default       = "0.0.0.0/0"
  description   = "public subnet route table"
  type          = string
}

#App subnet Variables
variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr"
  type          = string
}

variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr"
  type          = string
}

#Database Subnet Variables
variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az2 cidr"
  type          = string
}

variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr"
  type          = string
}


#Nat Gateway Variables
variable "private_route_table_az1_cidr" {
  default       = "0.0.0.0/0"
  description   = "private route table az1 cidr"
  type          = string
}


variable "private_route_table_az2_cidr" {
  default       = "0.0.0.0/0"
  description   = "private route table az2 cidr"
  type          = string
}


#AWS Region
variable "aws_region" {
  description   = "AWS Region where resource is being created"
  type          = string
  default       = "us-east-1"
}



#Secutiry Group Variables
variable "ssh_allowed_ips" {
  default       = ["{localhost_pubIP}/32"]
  description   = "List of IP addresses allowed to SSH"
  type          = list(string)

}


#RDS Variables
variable "database_snapshot_identifier" {
    default     = "arn:aws:rds:us-east-1:{ACCOUNT_ID}:snapshot:{DB_NAME}-snapshot"
    description = "database snapshot arn"
    type        = string
  
}


variable "database_instance_class" {
    default     = "db.t2.micro"
    description = "database instance type"
    type        = string
  
}

variable "database_instance_identifier" {
    default     = "database-1"
    description = "database instance identifier"
    type        = string
  
}

variable "multi_az_deployment" {
    default     = false
    description = "create a standby db instance"
    type        = bool
  
}


#Application LoadBalancer Variables
variable "ssl_certificate_arn" {
    default     = "{SSL_CERTIFICATE_ARN}"
    description = "ssl certificate arn"
    type        = string
  
}