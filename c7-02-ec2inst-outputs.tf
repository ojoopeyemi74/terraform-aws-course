# AWS EC2 Instance Terraform Outputs
# Public EC2 Instances - Bastion Host

#EC2 Bastion_public_instance_ids
output "ec2_public" {
  description = "The ID of the instance"
  value       = module.ec2_public.id
}

##ec2_baston_public_ip
output "ec2_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_public.public_ip
}


### ec2 private_instance_id
output "ec2-private" {
  description = "The ID of the instance"
  value       = module.ec2_private.id
}


## ec2 Private Instance IP
output "ec2_private" {
  value = module.ec2_private.private_ip
}
