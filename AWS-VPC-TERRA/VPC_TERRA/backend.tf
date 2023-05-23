terraform {
  backend "s3" {
    bucket = "terraform-remote-state-file1"
    key = "AWS-VPC-TERRA.tfstate"
    region = "us-east-1"
    profile = "terraform-user"
    
  }
}