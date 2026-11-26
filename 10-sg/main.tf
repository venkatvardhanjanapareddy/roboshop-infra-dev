module "sg" {
  count = length(var.sg_names)
  source = "git::https://github.com/venkatvardhanjanapareddy/terraform-aws-sg.git?ref=main"
  project = var.project
  environment = var.environment
#   few of the sg names use '_' , should change it to '-'
  sg_name = replace(var.sg_names[count.index], "_", "-")
  vpc_id = local.vpc_id
}