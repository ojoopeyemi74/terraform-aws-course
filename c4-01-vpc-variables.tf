# VPC Name 

variable "vpc_name" {
  description = "my-vpc-created-by-me-ope"
  type = string
  default = "myvpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
    description = "VPC CIDR Block"
    type = string
    default = "10.0.0.0/16"
}

# VPC AZS - Availability Zones
variable "vpc_availability_zones" {
  description = "value"
  type = list(string)
  default = ["eu-west-2a", "eu-west-2b"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "vpc_private_subnet"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "vpc_public_subnet"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# Database Subnet
variable "vpc_database_subnet" {
  description = "database_subnet for vpc"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Create Database Subnet Group (True / False)
variable "create_database_subnet_group" {
  description = "database_subnet_group"
  type = bool
  default = true
}
# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type = bool
  default = true   
}

# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true  
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}
