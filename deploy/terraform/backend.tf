terraform {
  backend "s3" {
    bucket         = "terraform-state-925526501192-us-west-2"
    key            = "aws-hello-world.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}
