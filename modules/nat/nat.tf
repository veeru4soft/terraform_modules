resource "aws_nat_gateway" "vproject_ngw" {
  allocation_id = aws_eip.vproject_eip.id
  subnet_id     = aws_subnet.vproject_public_subnet_az1.id

  tags = {
    Name = "${var.project_name}-NGW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.vproject_igw]
}