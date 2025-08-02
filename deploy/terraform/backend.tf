terraform {
  backend "s3" {
    bucket         = "terraform-state-us-west-2"
    key            = "aws-hello-world.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}
