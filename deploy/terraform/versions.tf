provider "aws" {
  default_tags {
    tags = {
      environment           = "development"
    }
  }
}