
terraform {
 backend "s3" {
 bucket = ""
 region = "us-east-1"
 key    = "terraform.tfstate"
 }
}