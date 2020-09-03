
# Terraform-Description

![github-large](https://www.criticalcase.com/file/2017/09/terraform-470x336.png)


Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can help with multi-cloud by having one workflow for all clouds. The infrastructure Terraform manages can be hosted on public clouds like Amazon Web Services, Microsoft Azure, and Google Cloud Platform, or on-prem in private clouds such as VMWare vSphere, OpenStack, or CloudStack. **Terraform treats infrastructure as code (IaC)** so you never have to worry about you infrastructure drifting away from its desired configuration. 

Terraform Workflow

* terraform file.tf 
					---> terraform init 
							--> terraform plan 
								 ---> terraform apply
