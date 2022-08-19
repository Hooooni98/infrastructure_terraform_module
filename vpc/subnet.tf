cidr_block = {
  subnet_private_a = "10.0.1.0/24"
  subnet_private_c = "10.0.2.0/24"
  subnet_public_a  = "10.0.3.0/24"
  subnet_public_c  = "10.0.4.0/24"
}
availability_zone = {
  a = "ap-northeast-2a"
  c = "ap-northeast-2c"
}


module "subnet_public_a" {
  source = "./subnet"

  cidr_block        = cidr_block.subnet_public_a
  availability_zone = availability_zone.a
  enable_public     = true
}

module "subnet_public_c" {
  source = "./subnet"

  cidr_block        = cidr_block.subnet_public_c
  availability_zone = availability_zone.c
  enable_public     = true
}

module "subnet_private_a" {
  source = "./subnet"

  cidr_block        = cidr_block.subnet_private_a
  availability_zone = availability_zone.a
  enable_public     = false
}

module "subnet_private_c" {
  source = "./subnet"

  cidr_block        = cidr_block.subnet_private_c
  availability_zone = availability_zone.c
  enable_public     = false
}

