# public subnet
resource "aws_subnet" "subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = "subnet_public_a"
  }
}

resource "aws_subnet" "subnet_public_c" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "subnet_public_c"
  }
}

# private subnet
resource "aws_subnet" "subnet_private_a" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.1.0/23"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "subnet_private_a"
  }
}
resource "aws_subnet" "subnet_private_c" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.2.0/23"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "subnet_private_c"
  }
}
# private subnet group for rds
resource "aws_db_subnet_group" "private_subnet_group" {
  name       = "private_subnet_group"
  subnet_ids = [aws_subnet.subnet_private_a.id, aws_subnet.subnet_private_c.id]

  tags = {
    Name = "private_subnet_group"
  }
}
