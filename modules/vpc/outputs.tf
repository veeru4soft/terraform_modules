output "region" {
  value = var.region
}
output "project_name" {
  value = var.project_name
}
output "vpc_id" {
  value = aws_vpc.vproject_vpc.id
}
output "public_subnet_az1_id" {
  value = aws_subnet.vproject_public_subnet_az1.id
}
output "public_subnet_az2_id" {
  value = aws_subnet.vproject_public_subnet_az2.id
}
output "private_subnet_az1_id" {
  value = aws_subnet.vproject_private_subnet_az1.id
}
output "private_subnet_az2_id" {
  value = aws_subnet.vproject_private_subnet_az2.id
}
output "internet_gateway_id" {
  value = aws_internet_gateway.vproject_igw.id
}