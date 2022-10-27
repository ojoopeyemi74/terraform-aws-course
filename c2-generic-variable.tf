#AWS Region

variable "aws_region" {
  description = "aws-region"
  type = string
  default = "eu-west-2"
}

# Enviroment Variable
variable "enviroment" {
  description = "Enviroment Variable used as a prefix"
  type = string
  default = "dev"
}

# Business Division
variable "business_division" {
  description = "Business Division in the large organisation this Infrastructure belongs "
  default = "SAP"
}
