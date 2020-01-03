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
