module "vpc" {
  source = "git::https://github.com/venkatvardhanjanapareddy/aws-vpc-terraform.git?ref=main"
  project = var.project
  environment = var.environment
}