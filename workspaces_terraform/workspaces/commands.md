```
> terraform init

# list workspaces
> terraform workspace list

# create workspaces. creates a new folder 'terraform.tfstate.d'
> terraform workspace new dev|uat|prod

> terraform workspace select dev
> terraform plan -var-file ./dev/dev.tfvars
> terraform apply -ver-file ./dev/dev.tfvars -auto-approve

> terrafrom destroy -ver-file ./dev/dev.tfvars -auto-approve # deletes the resource group "dev"


> terraform workspace select uat
> terraform plan -var-file ./uat/uat.tfvars
> terraform apply -ver-file ./uat/uat.tfvars -auto-approve
```