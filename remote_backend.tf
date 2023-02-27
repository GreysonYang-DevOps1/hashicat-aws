terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Galex"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
