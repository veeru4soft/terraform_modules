terraform {
  backend "s3" {
    bucket = "vprojectmodules"
    key    = "veera.vproject.modules"
    region = "us-east-1"
  }
}
