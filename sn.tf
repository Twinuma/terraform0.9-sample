#--------------------------------------------------------------
# Subnets
#--------------------------------------------------------------
resource "aws_subnet" "frontend_1a" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${terraform.env == "dev" ? var.dev_vpc_subnet_frontend_1a_cidr : terraform.env == "stg" ? var.stg_vpc_subnet_frontend_1a_cidr : var.prod_vpc_subnet_frontend_1a_cidr}"
  availability_zone = "ap-northeast-1a"
  map_public_ip_on_launch = true
  tags {
    Name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_subnet_frontend_1a_name : terraform.env == "stg" ? var.stg_vpc_subnet_frontend_1a_name : var.prod_vpc_subnet_frontend_1a_name}"
    env = "${terraform.env}"
  }
}
resource "aws_subnet" "frontend_1c" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${terraform.env == "dev" ? var.dev_vpc_subnet_frontend_1c_cidr : terraform.env == "stg" ? var.stg_vpc_subnet_frontend_1c_cidr : var.prod_vpc_subnet_frontend_1c_cidr}"
  availability_zone = "ap-northeast-1c"
  map_public_ip_on_launch = true
  tags {
    Name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_subnet_frontend_1c_name : terraform.env == "stg" ? var.stg_vpc_subnet_frontend_1c_name : var.prod_vpc_subnet_frontend_1c_name}"
    env = "${terraform.env}"
  }
}
resource "aws_subnet" "application_1a" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${terraform.env == "dev" ? var.dev_vpc_subnet_application_1a_cidr : terraform.env == "stg" ? var.stg_vpc_subnet_application_1a_cidr : var.prod_vpc_subnet_application_1a_cidr}"
  availability_zone = "ap-northeast-1a"
  tags {
    Name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_subnet_application_1a_name : terraform.env == "stg" ? var.stg_vpc_subnet_application_1a_name : var.prod_vpc_subnet_application_1a_name}"
    env = "${terraform.env}"
  }
}
resource "aws_subnet" "application_1c" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${terraform.env == "dev" ? var.dev_vpc_subnet_application_1c_cidr : terraform.env == "stg" ? var.stg_vpc_subnet_application_1c_cidr : var.prod_vpc_subnet_application_1c_cidr}"
  availability_zone = "ap-northeast-1c"
  tags {
    Name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_subnet_application_1c_name : terraform.env == "stg" ? var.stg_vpc_subnet_application_1c_name : var.prod_vpc_subnet_application_1c_name}"
    env = "${terraform.env}"
  }
}
resource "aws_subnet" "datastore_1a" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${terraform.env == "dev" ? var.dev_vpc_subnet_datastore_1a_cidr : terraform.env == "stg" ? var.stg_vpc_subnet_datastore_1a_cidr : var.prod_vpc_subnet_datastore_1a_cidr}"
  availability_zone = "ap-northeast-1a"
  tags {
    Name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_subnet_datastore_1a_name : terraform.env == "stg" ? var.stg_vpc_subnet_datastore_1a_name : var.prod_vpc_subnet_datastore_1a_name}"
    env = "${terraform.env}"
  }
}
resource "aws_subnet" "datastore_1c" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${terraform.env == "dev" ? var.dev_vpc_subnet_datastore_1c_cidr : terraform.env == "stg" ? var.stg_vpc_subnet_datastore_1c_cidr : var.prod_vpc_subnet_datastore_1c_cidr}"
  availability_zone = "ap-northeast-1c"
  tags {
    Name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_subnet_datastore_1c_name : terraform.env == "stg" ? var.stg_vpc_subnet_datastore_1c_name : var.prod_vpc_subnet_datastore_1c_name}"
    env = "${terraform.env}"
  }
}
