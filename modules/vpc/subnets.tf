# create public subnet az1
resource "aws_subnet" "vproject_public_subnet_az1" {
  vpc_id                  = aws_vpc.vproject_vpc.id
  cidr_block              = var.public_subnet_az1_cidr
  availability_zone       = data.aws_availability_zones.vproject_azs.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-az1"
  }
}

# create public subnet az2
resource "aws_subnet" "vproject_public_subnet_az2" {
  vpc_id                  = aws_vpc.vproject_vpc.id
  cidr_block              = var.public_subnet_az2_cidr
  availability_zone       = data.aws_availability_zones.vproject_azs.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-az2"
  }
}

# create private subnet az1
resource "aws_subnet" "vproject_private_subnet_az1" {
  vpc_id                  = aws_vpc.vproject_vpc.id
  cidr_block              = var.private_subnet_az1_cidr
  availability_zone       = data.aws_availability_zones.vproject_azs.names[0]
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-subnet-az1"
  }
}

# create private subnet az2
resource "aws_subnet" "vproject_private_subnet_az2" {
  vpc_id                  = aws_vpc.vproject_vpc.id
  cidr_block              = var.private_subnet_az2_cidr
  availability_zone       = data.aws_availability_zones.vproject_azs.names[1]
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-subnet-az2"
  }
}