resource "aws_eip" "vproject_eip" {
  vpc = true

  tags = {
    Name = "${var.project_name}-eip"
  }
}