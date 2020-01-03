terraform {
  backend "azurerm" {
    storage_account_name = "ganepomutfstate"
    container_name       = "tfstate"
    key                  = "tfdemo-take.tfstate"
    resource_group_name  = "terraform"
  }
}
provider "azurerm" {
  version = "=1.36.1"
}

resource "azurerm_resource_group" "test" {
  name     = "Take-Group"
  location = "West Europe"

  tags = {
    Hello = "Take!"
  }
}
