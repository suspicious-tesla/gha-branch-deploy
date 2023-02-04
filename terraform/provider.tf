terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.8"
    }
  }

  backend "s3" {
    bucket = "cirrius-backend-tfstate-global"
    key    = "suspicious-tesla/terraform/gha-branch-deploy/terraform.tfstate"
    region = "eu-west-1"
  }
}

# Configure the GitHub Provider
provider "github" {
  owner =  "suspicious-tesla"
}
