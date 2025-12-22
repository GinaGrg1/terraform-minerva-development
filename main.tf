terraform {
  required_version = ">=1.14.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0 "
    }
  }
}

locals {
    tags = {
      "Environment" = var.environment
    }
  }

resource "azurerm_storage_account" "securergstorage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.environment == "Production" ? "RAGRS" : "LRS"
  public_network_access_enabled = false

  tags = local.tags
}