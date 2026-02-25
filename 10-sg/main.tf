module "sg" {
  
  source = "git::https://github.com/daws-86s/terraform-aws-sg.git?ref=main"

  count = length(var.sg_names)
  project_name = var.project_name
  environment = var.environment
  sg_name = var.sg_names[count.index]
  sg_description = "Created for ${var.sg_names[count.index]}"
  vpc_id =  local.vpc_id
}



# resource "aws_security_group_rule" "frontend_frontend_alb" {

#   type = "ingress"
#   security_group_id = module.sg[8].sg_id 
#   source_security_group_id = module.sg[10].sg_id 
#   from_port         = 80
#   protocol       = "tcp"
#   to_port           = 80
# }