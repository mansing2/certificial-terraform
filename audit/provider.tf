/*provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.aws_region
  #region    = "ap-southeast-1"
  
}
*/

provider "aws" {
  access_key = "AKIAR5RMWYRJI7WHJ6P2"
  secret_key = "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"
  region     = "us-east-1"
  #region    = "ap-southeast-1"
  version = "~> v2.58.0"
}

#terraform init --backend-config="access_key=AKIAR5RMWYRJI7WHJ6P2" --backend-config="secret_key=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"