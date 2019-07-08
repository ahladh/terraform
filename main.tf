provider "aws" {
	region = "us-east-1"
}

module "instance" {
	source = "./modules/ec2"

}

#output "vpc_id_1"{
 #     value = "${module.vpc.vpc_id}"
#}

#output "main_route_table_id" {
#	value = "${module.vpc.main_route_table_id}"
#}

#utput "subnet_id_1"{
#value = "${module.vpc.subnet_id[0]}"
#}


terraform {
  backend "s3" {
    bucket = "ahladh.terraform"
    key    = "./terraform.tfstate"
    region = "us-east-1"
  }
}
