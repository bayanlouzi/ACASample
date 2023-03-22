$grp = "ca-session-rg2"
$loc = "eastus"
$environment = "ca-session-env2"

# creating resource group
az group create --name $grp --location $loc
                

# creating environment
az containerapp env create --name $environment --resource-group $grp --internal-only false  --location $loc

          
az containerapp create --name demo-sample-app --resource-group $grp --environment $environment --image bayanhassan/revisionsdemoapp:v1 --target-port 80  --ingress 'external' --min-replicas 0 --max-replicas 5


   

  