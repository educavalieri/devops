terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.86.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  region = "us-east-1"
}