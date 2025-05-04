Terraform Step to create

1. Create as Access_key and Secret_key 

Access_key: XXXXXXXXXXXXX
Secret_key: XXXXXXXXXXXXX

Step to implement the terraform:

1. vpc
2. Subnet
3. Internet Gateway
4. Route Table
5. Security Groups
6. Instance

Here: If referes in documentation, we'll see the two type of source
1. resource
2. data source

	* resource is used when we create "aws-resource" throught terraform
	* data source is used, The info has not be their in terraform

syntax:
	resource <resource_type> <resource_name> {
	}
	
environment Variables

Terraform supports Env variables
				LINUX
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-west-2"
				POWER-SHELL
$env:AWS_ACCESS_KEY_ID="AKIAQSOI4HF7HTDCETFI"
$env:AWS_SECRET_ACCESS_KEY="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"

Command: To run the terraform

terraform init -> To create the terraform or import the providers
terraform fmt -> It'll formate the code or alignment correctly
terrform validate -> terrform validate our resource and checking if made any mistake.
terraform plan -> it'll executive the "DRY-Run" and executive the resource and verify weather it is correct or wrong
terraform apply -> To apply the changes.
	terraform apply --auto-approve
terraform destory -> To destory the changes.
	Suppose if we delete or target specificly we can use below cmd
	First check the state-list, Then mention which resource should destory.
		terraform state-list
		terraform destory -target <mention-resource>
		
---------------------------------------------------------------------------------
Difference b/w variables and terraform.tfvars

In variables files we're declaring the variable. where in tfvars passing the values to that variables.
 For example: If you create a .tfvars file with a custom name like dini.tfvars instead of the default terraform.tfvars, 
			  Terraform will not automatically use it during terraform plan. By default, it looks for terraform.tfvars. 
			  If the required variable values are not provided, Terraform will prompt you to enter them manually.
			  So, Instead of that, we can give cmd (--var-file .\dini.tfvars) or written file name as like (dini.auto.tfvars).
			  -----------------------------------------------------------------------
Terraform loads variables in the following order, with later sources taking precedence over earlier ones:
Environment variables
	4.The terraform.tfvars file, if present.
	3.The terraform.tfvars.json file, if present.
	2.Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
	1.Any -var and -var-file options on the command line, in the order they are provided. (This includes variables 	  set by a Terraform Cloud workspace.)

 