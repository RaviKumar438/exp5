provider "aws" {
region =  "us-west-2"
}


module "payroll-app" {
 source = "./moduels/payroll-app"
 app_region = "us-west-2"
 ami        = "ami-0298d169be5006679"
}

 
