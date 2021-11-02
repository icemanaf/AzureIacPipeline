terraform{
    #authentication will be through a service principal
    backend "azurerm" {
        resource_group_name = "rgInfrastructure"
        storage_account_name = "infrastorageaccount1111"
        container_name = "tfstate"
        key = "infra.tfstate"
    }
    
}

#required for the azure provider??
provider "azurerm"{
    features {}
}


#create the demo resource group
resource "azurerm_resource_group" "rg" {
    name = "rgIaCDemo"
    location ="westeurope"
}


