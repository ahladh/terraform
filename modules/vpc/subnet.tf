variable "subnet_name" {
	description = "Provide name for subnet creation"
        type = "list"
	default	    = ["react", "nodejs", "python", "kafka", "mongo","ruby"]
}

resource "aws_subnet" "swat_subnet" {
        count = "${length(var.subnet_name)*2}"
        
	vpc_id = "${aws_vpc.swat_vpc.id}"
        
	cidr_block = "10.0.${count.index}.0/24"
        
        
	tags = {
        Name = "SWAT-Subnet-${count.index > 5 ?  var.subnet_name[count.index % 6 ]  : "${var.subnet_name[count.index % 6 ]}-2"  }"

	}
}

output "subnet_id"{
	value = "${aws_subnet.swat_subnet.*.id}"
}
