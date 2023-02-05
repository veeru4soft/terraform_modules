# create a route table and add public route table
resource "aws_route_table" "vproject_public_route_table" {
  vpc_id = aws_vpc.vproject_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vproject_igw.id
  }

  tags = {
    Name = "${var.project_name}-public-route-table"
  }
}

# associate public subnet az1 to a route table
resource "aws_route_table_association" "vproject_public_subnet_az1_route_table_association" {
  subnet_id      = aws_subnet.vproject_public_subnet_az1.id
  route_table_id = aws_route_table.vproject_public_route_table.id
}

# associate public subnet az2 to a route table
resource "aws_route_table_association" "vproject_public_subnet_az2_route_table_association" {
  subnet_id      = aws_subnet.vproject_public_subnet_az2.id
  route_table_id = aws_route_table.vproject_public_route_table.id
}

# create a route table and add private route table
resource "aws_route_table" "vproject_private_route_table" {
  vpc_id = aws_vpc.vproject_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_internet_gateway.vproject_ngw.id
  }

  tags = {
    Name = "${var.project_name}-private-route-table"
  }
}

# associate public subnet az1 to a route table
resource "aws_route_table_association" "vproject_private_subnet_az1_route_table_association" {
  subnet_id      = aws_subnet.vproject_private_subnet_az1.id
  route_table_id = aws_route_table.vproject_private_route_table.id
}

# associate public subnet az2 to a route table
resource "aws_route_table_association" "vproject_private_subnet_az2_route_table_association" {
  subnet_id      = aws_subnet.vproject_privatess_subnet_az2.id
  route_table_id = aws_route_table.vproject_private_route_table.id
}
