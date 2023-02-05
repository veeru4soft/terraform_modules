resource "aws_vpc" "vproject_vpc" {
  cidr_block           = var.cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project_name}-vpc"
  }
}

resource "aws_internet_gateway" "vproject_igw" {
  vpc_id = aws_vpc.vproject_vpc.id

  tags = {
    Name = "${var.project_name}-igw"
  }
}

# use data source to get all availability zones
data "aws_availability_zones" "vproject_azs" {}