# Deploying a Static Website with Terraform, Ansible, and Azure DevOps

This project demonstrates a complete DevOps workflow for deploying a static website using Infrastructure as Code and CI/CD automation.

## Architecture

Terraform provisions an Ubuntu VM in Azure.

Ansible installs and configures Nginx on the VM.

Azure DevOps pipeline deploys the website to the server using SSH.

Terraform → Infrastructure provisioning  
Ansible → Server configuration  
Azure DevOps → CI/CD deployment  

## Project Structure

Azure-DevOps-static-website-lab
├── Azure-Static-Website
│   ├── README.md
│   ├── azure-pipelines.yml
│   └── index.html
├── README.md
├── ansible
│   ├── install-nginx.yml
│   └── inventory.ini
├── azure-pipelines.yml
└── terraform-vm
    ├── main.tf
    ├── outputs.tf
    ├── provider.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    ├── terraform.tfvars
    └── variables.tf

    
## Deployment Workflow

1. Terraform creates Azure resources including:
   - Resource Group
   - Virtual Network
   - Subnet
   - Network Interface
   - Public IP
   - Linux Virtual Machine

2. Ansible installs and starts Nginx on the VM.

3. Azure DevOps pipeline:
   - Triggers on commits to the `main` branch
   - Uses a self-hosted agent
   - Connects to the VM via SSH
   - Copies website files to `/var/www/html`

## CI/CD Pipeline

The pipeline is defined in:
azure-pipelines.yml

Pipeline steps include:

- Checkout repository
- Copy website files using SSH
- Verify deployment on the server

## Website Access

After deployment the website is accessible at:
http://<VM_PUBLIC_IP>


## Technologies Used

- Terraform
- Ansible
- Azure DevOps
- Nginx
- Linux
- Git

## Learning Outcomes

Through this project I learned how to:

- Provision cloud infrastructure using Terraform
- Configure servers using Ansible
- Build CI/CD pipelines with Azure DevOps
- Deploy applications automatically to remote servers
- Use a self-hosted build agent
