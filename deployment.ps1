$ResourceGroupName = "1-69176691-playground-sandbox"
$StorageAccountName = "myfuncstorage321"
$FunctionAppName = "myfunc000"
$Location = "southcentralus"

# Create a resource group
# az group create --name $ResourceGroupName --location $Location

# Create a storage account for the function app
az storage account create --name $StorageAccountName --location $Location --resource-group $ResourceGroupName --sku Standard_LRS

# Create a function app
az functionapp create --name $FunctionAppName --consumption-plan-location $Location --storage-account $StorageAccountName --resource-group $ResourceGroupName --runtime python --runtime-version 3.10 --functions-version 4 --os-type Linux

# Deploy the function app code
func azure functionapp publish $FunctionAppName --python