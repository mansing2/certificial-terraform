provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.aws_region
  version = "~> v2.58.0"
  
}



#terraform init --backend-config="access_key=" --backend-config=""