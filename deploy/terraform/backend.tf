terraform {
  backend "s3" {
    key     = "aws-hello-world.tfstate"
    region  = "us-west-2"
    encrypt = true
  }
}
