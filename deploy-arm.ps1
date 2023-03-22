$grp = "ca-session-rg"
$loc = "eastus"


az group create --name $grp --location $loc
                

az deployment group create --resource-group $grp --template-file 'template.json'



