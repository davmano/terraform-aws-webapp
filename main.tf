module "vpc" {
  source      = "./modules/vpc"
  name        = "webapp"
  cidr_block  = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "s3" {
  source = "./modules/s3"
  name   = "webapp-bucket"
}

module "iam" {
  source = "./modules/iam"
  bucket = module.s3.bucket_name
  name   = "ec2-s3-role-dev"
}

module "ec2" {
  source               = "./modules/ec2"
  ami                  = "ami-05fb0b8c1424f266b"
  instance_type        = var.instance_type
  subnet_id            = module.vpc.subnet_id
  security_group_id    = module.security_group.security_group_id
  key_name             = var.key_name
  iam_instance_profile = module.iam.instance_profile_name
  name                 = "Terraform-WebApp"
}
