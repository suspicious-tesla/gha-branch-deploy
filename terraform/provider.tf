terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.8"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  owner =  "suspicious-tesla"
}