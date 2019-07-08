resource "aws_vpc" "swat_vpc" {
	cidr_block = "10.0.0.0/16"
	enable_dns_hostnames = "true"
	tags = {
	  Name = "Swat_VPC"
	}
}

output "vpc_id" {
	value = "${aws_vpc.swat_vpc.id}"
}

output "main_route_table_id" {
	value = "${aws_vpc.swat_vpc.main_route_table_id}"
}
