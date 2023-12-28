###### root/main.tf
module "eks" {
  source                  = "./modules/eks"
  aws_public_subnet       = module.vpc.aws_public_subnet
  vpc_id                  = module.vpc.vpc_id
  cluster_name            = "eks1"
  endpoint_public_access  = true
  endpoint_private_access = false
  public_access_cidrs     = ["0.0.0.0/0"]
  node_group_name         = "eks_node_group"
  scaling_desired_size    = 2
  scaling_max_size        = 2
  scaling_min_size        = 2
  instance_types          = ["t3.medium"]
  key_pair                = "sydney"
}

module "vpc" {
  source                  = "./modules/vpc"
  tags                    = "onlinetest"
  instance_tenancy        = "default"
  vpc_cidr                = "10.10.0.0/16"
  access_ip               = "0.0.0.0/0"
  public_sn_count         = 2
  public_cidrs            = ["10.10.1.0/24", "10.10.2.0/24"]
  az_list                 = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
  map_public_ip_on_launch = true
  rt_route_cidr_block     = "0.0.0.0/0"

}
