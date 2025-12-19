terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "kamalrg"
    storage_account_name = "kamalstg1"
    container_name       = "kamalstgcont"
    key                  = "dev.terraform.tfstate"
  }


}

provider "azurerm" {
  features {
  }
  subscription_id = "acd9510d-7e29-433d-8504-d10d34dba654"
}