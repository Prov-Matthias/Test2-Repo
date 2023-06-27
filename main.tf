# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup-<dein-Name>"
  location = "germanywestcentral" #See: https://learn.microsoft.com/en-us/azure/virtual-machines/regions
}
