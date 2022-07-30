# Configure the AWS Provider
variable "availability_zones" {
  description = "availability zones"
  type = object({
    a = string
    b = string
    c = string
    d = string
  })
  default = {
    a = "ap-northeast-2a"
    b = "ap-northeast-2b"
    c = "ap-northeast-2c"
    d = "ap-northeast-2d"
  }
}

# make vpc cidr 10.0.0.0/16
module "vpc" {
  source = "./modules/vpc"

  # set your vpc name
  vpc_name = "your_vpc_name" 
}

# make subnets with two public and two private
module "subnet" {
  source             = "./modules/subnet"
  vpc_id             = module.vpc.id
}

