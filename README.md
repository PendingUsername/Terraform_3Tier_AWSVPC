# Terraform 3 tier VPC in AWS
 
This code represents an infrastructure deployment using Terraform to create a Virtual Private Cloud (VPC) in AWS. The VPC includes various subnets and resources such as internet gateways, route tables, and associations.

Here is a breakdown of the files and their purpose:

1. Main.tf: This file is the main configuration file. It defines the provider (AWS) and includes a module called vpc which is responsible for creating the VPC and its associated resources.

2. Variables.tf: This file defines the input variables used in the configuration. It lists all the variables required to customize the VPC creation, such as the region, VPC name, CIDR blocks for subnets, etc.

3. Backend.tf: This file configures the backend for storing the Terraform state. In this case, it uses an S3 bucket named "terraform-remote-state-file1" in the "us-east-1" region. The state file is named "AWS-VPC-TERRA.tfstate". The backend configuration ensures that the state is stored remotely and can be shared among team members.

4. Outputs.tf: This file defines the outputs of the Terraform configuration. It specifies the values that will be displayed after the infrastructure is provisioned, such as the VPC ID, subnet IDs, and internet gateway ID.

5. Terraform.tfvars: This file provides the values for the variables defined in variables.tf. It sets the specific values for the region, VPC name, and CIDR blocks for the subnets.

    In summary, this Terraform configuration sets up a VPC in AWS with multiple subnets, an internet gateway, and appropriate routing. The main.tf file uses a module called vpc to create these resources. The variables.tf file defines the variables needed for customization, and terraform.tfvars provides the actual values for those variables. The backend.tf file configures the remote state storage, and outputs.tf defines the outputs to be displayed after the deployment.
