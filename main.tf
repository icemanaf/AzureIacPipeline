terraform{
    #authentication will be through a service principal
    backend "azurerm" {
        resource_group_name = "rgInfrastructure"
        storage_account_name = "infrastorageaccount1111"
        container_name = "tfstate"
        key = "b/3nlL+gJltTdOndWKarV6jTmjTGD98fnzMBoHXxBof/hNloe5F5bakzDRQjRE1uTi9fU5eN7Rq8hnOzXTxBYg=="
    }
    
}