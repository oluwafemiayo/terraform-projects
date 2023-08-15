#vpc variable
############################## VPC #################################
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

########################### PUBLIC SUBNET ##########################
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

####################### PUBLIC ROUTE TABLE #########################
variable "public_route_table_cidr" {
  default       = "0.0.0.0/0"
  description   = "public subnet route table"
  type          = string
}

########################### APP SUBNET #############################
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

########################### DATABASE SUBNET #########################
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


############### NAT GATEWAY #################
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
  default = ["0.0.0.0/32"]
  description = "List of IP addresses allowed to SSH"
  type = list(string)

}
