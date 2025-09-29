terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
  backend "azurerm" {
    RG_name              = "rg"
    storage_Account_name = "rakshafurr1"
    location             = "eastus"
    container            = "pipeline"
    key                  = "vm-dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3805d418-505b-4d26-9254-6523d1b472cb"
}
