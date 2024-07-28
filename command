az container create --resource-group <your-resource-group> --name movieticketbooking --image <your-registry-name>.azurecr.io/movieticketbooking:latest --cpu 1 --memory 1 --registry-login-server <your-registry-name>.azurecr.io --registry-username <your-username> --registry-password <your-password> --ports 80

az container show --resource-group <your-resource-group> --name movieticketbooking --query ipAddress.ip --output tsv

docker build -t <your-registry-name>.azurecr.io/movieticketbooking:latest .

docker push <your-registry-name>.azurecr.io/movieticketbooking:latest

az container show --resource-group <your-resource-group> --name movieticketbooking

az container logs --resource-group <your-resource-group> --name movieticketbooking

az acr login --name <your-registry-name> --expose-token
