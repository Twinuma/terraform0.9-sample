#--------------------------------------------------------------
# VPC
#--------------------------------------------------------------
resource "aws_vpc" "vpc" {
  cidr_block = "${terraform.env == "dev" ? var.dev_vpc_cidr : terraform.env == "stg" ? var.stg_vpc_cidr : var.prod_vpc_cidr}"
  enable_dns_hostnames = true
  tags {
    Name = "${terraform.env}-${var.vpc_name}"
    env = "${terraform.env}"
  }
}

resource "aws_vpc_endpoint" "private-s3" {
    vpc_id = "${aws_vpc.main.id}"
    service_name = "com.amazonaws.ap-northeast-1.s3"
    route_table_ids = ["${aws_route_table.private_rt_a.id}", "${aws_route_table.private_rt_c.id}"]
}
