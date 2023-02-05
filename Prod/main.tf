# configure aws provider
provider "aws" {
  region  = var.region
  profile = "veera-terraform"
}