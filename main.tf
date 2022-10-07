terraform {
    required_version = "~> 1.3.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "ap-south-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-01216e7612243e0ef" 
	instance_type = "t2.nano"
}
