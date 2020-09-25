data "terraform_remote_state" "aws_iam" {
  backend = "s3"

  config = {
    bucket = "container-era-terraform-sample"
    key    = "sample/iam/terraform.tfstate"
    region = "ap-northeast-1"
    profile = "terra"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "container-era-terraform-sample"
    key    = "sample/vpc/terraform.tfstate"
    region = "ap-northeast-1"
    profile = "terra"
  }
}