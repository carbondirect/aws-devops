terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# QUESTIONS
# 1a. Which backend is this provider using?  Where is the state file stored in this scenario?
# 1b. What are the security risks and pros/cons of using this backend?
provider "aws" {
  region  = "us-west-1"
}

# 2a. Create a module for provisioning an application server
# 2b. Make the AMI, instance type, and instance name configurable as variables
# 2c. Would an AMI in one AWS region be valid in another AWS region?
resource "aws_instance" "app_server" {
  ami           = "ami-a0b89fc0"
  instance_type = "t2.micro"

  tags = {
    Name = "AwsDevOpsTestInstance"
  }
}

# 3a. How would you debug/resolve an "UnauthorizedOperation: You are not authorized to perform this operation" error in AWS?
# 3b. What role(s) and permission(s) do you need to grant the AWS user to provision EC2 instances?

# 4a. What are the step(s) to update the AMI for the server instance?  
# 4b. What do the +/- prefixes mean when updating infrastucture?

# 5a. Define output variables to display the instance ID and public IP of the EC2 instance
/*
output "example_output" {
    description = ""
    value       = ""
}
*/
# 5b. Since these output variables were defined after the resource was provisioned, what Terraform command can be used to interpolate the values?
