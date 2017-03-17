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
// resource "aws_nat_gateway" "ngw" {
//   allocation_id = "${aws_eip.nat.id}"
//   subnet_id     = "${aws_subnet.frontend_1a.id}"
//   depends_on    = ["aws_internet_gateway.gw"]
// }
