# Testing a simple IaC pipeline with Azure DevOps and Terraform.

## Steps
1. First things first, you need to have an azure subscription to start things off.

2. Configure a resource group and a storage container to keep the Terraform state remotely.

using the Azure CLI on powershell...

```
    # login to azure with the cli
    az login 
    

    #setup variables for convinience.. note that the storage account name has to be globally unique.

    $infraRgGroup="rgInfrastructure"
    $location="westeurope"
    $containerName="tfstate"
    $storageAccountName="infrastorageaccount1111"

    # create a resource group for the iac infrastructure
    az group create --location $location --resource-group $infraRgGroup

    # create a storage account
    az storage account create ` 
    --name $storageAccountName `
    --resource-group $infraRgGroup `
    --location $location `
    --kind StorageV2 `
    --sku Standard_LRS `
    --encryption-services blob

    # creating the container to hold the Terraform state
     az storage container create --name $containerName --account-name $StorageAccountName






```
