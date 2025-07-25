provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "statebucket31" {
  bucket = "statebucket31"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "statebucket31"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}