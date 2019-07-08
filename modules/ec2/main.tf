module "vpc" {
        source = "/home/ec2-user/terraform_module/modules/vpc"
}


resource "aws_instance" "test" {
	ami = "ami-0c6b1d09930fac512"
	instance_type = "t2.nano"
      #	vpc_id = "${module.vpc.vpc_id}"
	subnet_id = "${module.vpc.subnet_id[0]}"
	}
