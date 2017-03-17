# terraform0.9-sample

## create environments
```
terraform env new dev
terraform env new stg
terraform env new prod
```

## user environment
```
terraform env select dev
```
 
## list environments
```
$ terraform env list
  default
* dev
  prod
  stg
```

## directory
```
./
├── README.md
├── eip.tf
├── flow_log.tf
├── igw.tf
├── providers.tf
├── rt.tf
├── rta.tf
├── sn.tf
├── terraform.tfstate.d
│   ├── dev
│   ├── prod
│   └── stg
├── terraform.tfvars
├── variables.tf
└── vpc.tf
```

## environment interpolation
```
resource "aws_vpc" "vpc" {
  cidr_block = "${terraform.env == "dev" ? var.dev_vpc_cidr : terraform.env == "stg" ? var.stg_vpc_cidr : var.prod_vpc_cidr}"
  enable_dns_hostnames = true
  tags {
    Name = "${terraform.env}-${var.vpc_name}"
    env = "${terraform.env}"
  }
}
```
