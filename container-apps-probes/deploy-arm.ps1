# pushing the images
docker build -t bayanhassan/hpdemoapp:v2 -f 'src\ContainerApps\HPDemoApp\Dockerfile' 'src\ContainerApps'
docker push bayanhassan/hpdemoapp:v2

$grp = "ca-session-rg"

$loc = "eastus"

# creating resource group
az group create --name $grp --location $loc
                

# deploy the template
az deployment group create --resource-group $grp --template-file 'template.json'
                           