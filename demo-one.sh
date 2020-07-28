# This demo walks you through creating an Azure Container Registry via the Azure CLI
# Run these commands, in this order, in your favorite terminal

# Login via azure CLI
az login

# It's a good idea to dedicate a resource group to a container registry
# so that you can share images or delete containers without deleting images accidentally
# Create a resource group for your container registry
az group create --location <REPLACE-WITH-AZURE-LOCATION> 
                --name <REPLACE-WITH-RESOURCE-GROUP-NAME> 
                --subscription <REPLACE-WITH-YOUR-SUBSCRIPTION-NAME>

# Create the actual container registry
az acr create --resource-group <REPLACE-WITH-RESOURCE-GROUP-NAME-YOU-JUST-CREATED-ABOVE>
              --name <REPLACE-WITH-CONTAINER-REGISTRY-NAME>
              --sku <REPLACE-WITH-CHOSEN-TIER> # Choose from Basic, Classic, Premium, Standard

# When successful, you'll receive a large JSON response.
# Find and keep note of the loginServer value; this is the fully qualified registry name you'll need later on.
# Example: vacddemoregistry.azurecr.io
