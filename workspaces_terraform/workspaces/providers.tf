terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 3.68.0"
    }
    random = {
        source = "hashicorp/random"
        version = "~> 3.8.1"
    }
  }
  backend "azurerm" {}
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {} 
}