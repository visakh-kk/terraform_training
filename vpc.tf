
provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.7.0"

  name                                 = "kk-test"
  cidr                                 = "10.202.130.0/24"
  azs                                  = ["us-west-2a", "us-west-2b"]
  public_subnets                       = ["10.202.130.128/26", "10.202.130.192/26"]
  private_subnets                      = ["10.202.130.0/26", "10.202.130.64/26"]
  enable_nat_gateway                   = true
  single_nat_gateway                   = true
  enable_vpn_gateway                   = true
  enable_flow_log                      = true
  create_flow_log_cloudwatch_log_group = true
  create_flow_log_cloudwatch_iam_role  = true
  flow_log_max_aggregation_interval    = 60

    tags = {
    "Env"      = "test-kk"
    "iS_terraform" = "yes"
  }

}