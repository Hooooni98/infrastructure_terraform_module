resource "aws_subnet" "subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.availability_zone
}

########## public route ##########
resource "aws_route_table" "public_subnet_route_table" {
  count = var.enable_public ? 1 : 0

  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }
}
resource "aws_route_table_association" "public_subnet_route_table" {
  count = var.enable_public ? 1 : 0

  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.public_subnet_route_table.id
}

