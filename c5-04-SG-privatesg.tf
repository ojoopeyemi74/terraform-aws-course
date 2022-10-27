# AWS EC2 Security Group Terraform Module
# Security Group for Private EC2 Instances

module "private-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name = "private-sg"
  description = "security group with HTTP and SSH port open for entire VPC Block IPv4 CIDR), egress port are all world open"
  vpc_id = module.vpc.vpc_id
  
  #Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # Egress Rules -all-all open for outbound
   egress_rules = ["all-all"]
   tags = local.common_tags

}