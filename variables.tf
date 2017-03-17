#--------------------------------------------------------------
# AWS Common settings
#--------------------------------------------------------------
variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "ap-northeast-1"
}
#--------------------------------------------------------------
# vpc settings
#--------------------------------------------------------------
variable "vpc_name" {}
variable "dev_vpc_cidr" {}
variable "stg_vpc_cidr" {}
variable "prod_vpc_cidr" {}
variable "dev_vpc_internet_gateway" {}
variable "stg_vpc_internet_gateway" {}
variable "prod_vpc_internet_gateway" {}

variable "dev_vpc_subnet_frontend_1a_name" {}
variable "dev_vpc_subnet_frontend_1a_cidr" {}
variable "dev_vpc_subnet_frontend_1c_name" {}
variable "dev_vpc_subnet_frontend_1c_cidr" {}
variable "dev_vpc_subnet_application_1a_name" {}
variable "dev_vpc_subnet_application_1a_cidr" {}
variable "dev_vpc_subnet_application_1c_name" {}
variable "dev_vpc_subnet_application_1c_cidr" {}
variable "dev_vpc_subnet_datastore_1a_name" {}
variable "dev_vpc_subnet_datastore_1a_cidr" {}
variable "dev_vpc_subnet_datastore_1c_name" {}
variable "dev_vpc_subnet_datastore_1c_cidr" {}

variable "stg_vpc_subnet_frontend_1a_name" {}
variable "stg_vpc_subnet_frontend_1a_cidr" {}
variable "stg_vpc_subnet_frontend_1c_name" {}
variable "stg_vpc_subnet_frontend_1c_cidr" {}
variable "stg_vpc_subnet_application_1a_name" {}
variable "stg_vpc_subnet_application_1a_cidr" {}
variable "stg_vpc_subnet_application_1c_name" {}
variable "stg_vpc_subnet_application_1c_cidr" {}
variable "stg_vpc_subnet_datastore_1a_name" {}
variable "stg_vpc_subnet_datastore_1a_cidr" {}
variable "stg_vpc_subnet_datastore_1c_name" {}
variable "stg_vpc_subnet_datastore_1c_cidr" {}

variable "prod_vpc_subnet_frontend_1a_name" {}
variable "prod_vpc_subnet_frontend_1a_cidr" {}
variable "prod_vpc_subnet_frontend_1c_name" {}
variable "prod_vpc_subnet_frontend_1c_cidr" {}
variable "prod_vpc_subnet_application_1a_name" {}
variable "prod_vpc_subnet_application_1a_cidr" {}
variable "prod_vpc_subnet_application_1c_name" {}
variable "prod_vpc_subnet_application_1c_cidr" {}
variable "prod_vpc_subnet_datastore_1a_name" {}
variable "prod_vpc_subnet_datastore_1a_cidr" {}
variable "prod_vpc_subnet_datastore_1c_name" {}
variable "prod_vpc_subnet_datastore_1c_cidr" {}

variable "dev_vpc_routetable_public_name" {}
variable "dev_vpc_routetable_private_1a_name" {}
variable "dev_vpc_routetable_private_1c_name" {}

variable "stg_vpc_routetable_public_name" {}
variable "stg_vpc_routetable_private_1a_name" {}
variable "stg_vpc_routetable_private_1c_name" {}

variable "prod_vpc_routetable_public_name" {}
variable "prod_vpc_routetable_private_1a_name" {}
variable "prod_vpc_routetable_private_1c_name" {}

variable "dev_vpc_flow_log_name" {}
variable "dev_vpc_flow_log_cloudwatch_log_group_name" {}
variable "dev_vpc_flow_log_policy" {}
variable "dev_vpc_flow_log_role" {}

variable "stg_vpc_flow_log_name" {}
variable "stg_vpc_flow_log_cloudwatch_log_group_name" {}
variable "stg_vpc_flow_log_policy" {}
variable "stg_vpc_flow_log_role" {}

variable "prod_vpc_flow_log_name" {}
variable "prod_vpc_flow_log_cloudwatch_log_group_name" {}
variable "prod_vpc_flow_log_policy" {}
variable "prod_vpc_flow_log_role" {}

#--------------------------------------------------------------
# RDS settings for MySQL(develop)
#--------------------------------------------------------------
variable "rds_identifier" {}
variable "rds_engine" {}
variable "rds_mysql_engine_version" {}
variable "rds_instance_class" {}
variable "rds_db_name" {}
variable "rds_master_username" {}
variable "rds_master_password" {}
variable "rds_backup_retention_period" {}
variable "rds_backup_window" {}
variable "rds_maintenance_window" {}
