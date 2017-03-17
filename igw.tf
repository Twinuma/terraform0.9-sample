#--------------------------------------------------------------
# Internet Gateway
#--------------------------------------------------------------
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags {
    Name = "${terraform.env == "dev" ? var.dev_vpc_internet_gateway : terraform.env == "stg" ? var.stg_vpc_internet_gateway : var.prod_vpc_internet_gateway}"
    env = "${terraform.env}"
  }
}
