# AWS EC2 Security Group Terraform Module
# Security Group for Public Bastion Host

module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name = "public-bastion-sg"
  description = "security group with SSH port open for everybody(IPv4 CIDR), egress port are all world open"
  vpc_id = module.vpc.vpc_id
  
  #Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  # Egress Rules -all-all open for outbound
   egress_rules = ["all-all"]
   tags = local.common_tags

}