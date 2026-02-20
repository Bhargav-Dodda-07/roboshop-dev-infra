module "vpc" {
   # source = "../terraform-aws-vpc" when it is referred locally

    source = "git::https://github.com/Bhargav-Dodda-07/terraform-aws-vpc.git?ref=main" # referred from github

   # vpc_cidr = "10.0.0.0/16"
   # project_name = "roboshop"
   # environment = "dev"

    # VPC
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    # public subnet
    public_subnet_cidrs = var.public_subnet_cidrs

    # private subnet
    private_subnet_cidrs = var.private_subnet_cidrs

    # database subnet
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true
}