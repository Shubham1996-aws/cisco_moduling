module "image_store" {
  source      = "../Modules/aws/image_store"
  bucket_name = var.bucket_name
}

module "vpc" {
  source                     = "../Modules/aws/vpc"
  vpc_cidr_block             = var.vpc_cidr_block
  publicSubnets1_cidr_block  = var.publicSubnets1_cidr_block
  publicSubnets2_cidr_block  = var.publicSubnets2_cidr_block
  privateSubnets1_cidr_block = var.privateSubnets1_cidr_block
  privateSubnets2_cidr_block = var.privateSubnets2_cidr_block
}




module "ec2" {
  source        = "../Modules/aws/ec2"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  vpn_range     = var.vpn_range
  instanceCount = var.instanceCount ## no of instance
  vpc_id = module.vpc.vpc_id
  subnet_id = module.vpc.subnet_id
  depends_on    = [module.vpc]
}
