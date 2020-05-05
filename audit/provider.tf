/*provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.aws_region
  #region    = "ap-southeast-1"
  
}
*/

provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
  #region    = "ap-southeast-1"
  version = "~> v2.58.0"
}

#terraform init --backend-config="access_key=" --backend-config="secret_key="
