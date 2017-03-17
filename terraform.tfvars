#--------------------------------------------------------------
# vpc settings
#--------------------------------------------------------------
vpc_name = "vpc"
dev_vpc_cidr = "10.2.0.0/16"
stg_vpc_cidr = "10.1.0.0/16"
prod_vpc_cidr = "10.0.0.0/16"

#--------------------------------------------------------------
# internet gateway
#--------------------------------------------------------------
dev_vpc_internet_gateway = "igw"
stg_vpc_internet_gateway = "igw"
prod_vpc_internet_gateway = "igw"

#--------------------------------------------------------------
# subnet
#--------------------------------------------------------------
dev_vpc_subnet_frontend_1a_name = "frontend-1a"
dev_vpc_subnet_frontend_1a_cidr = "10.2.10.0/24"
dev_vpc_subnet_frontend_1c_name = "frontend-1c"
dev_vpc_subnet_frontend_1c_cidr = "10.2.20.0/24"
dev_vpc_subnet_application_1a_name = "application-1a"
dev_vpc_subnet_application_1a_cidr = "10.2.30.0/24"
dev_vpc_subnet_application_1c_name = "application-1c"
dev_vpc_subnet_application_1c_cidr = "10.2.40.0/24"
dev_vpc_subnet_datastore_1a_name = "datastore-1a"
dev_vpc_subnet_datastore_1a_cidr = "10.2.50.0/24"
dev_vpc_subnet_datastore_1c_name = "datastore-1c"
dev_vpc_subnet_datastore_1c_cidr = "10.2.60.0/24"

stg_vpc_subnet_frontend_1a_name = "frontend-1a"
stg_vpc_subnet_frontend_1a_cidr = "10.1.10.0/24"
stg_vpc_subnet_frontend_1c_name = "frontend-1c"
stg_vpc_subnet_frontend_1c_cidr = "10.1.20.0/24"
stg_vpc_subnet_application_1a_name = "application-1a"
stg_vpc_subnet_application_1a_cidr = "10.1.30.0/24"
stg_vpc_subnet_application_1c_name = "application-1c"
stg_vpc_subnet_application_1c_cidr = "10.1.40.0/24"
stg_vpc_subnet_datastore_1a_name = "datastore-1a"
stg_vpc_subnet_datastore_1a_cidr = "10.1.50.0/24"
stg_vpc_subnet_datastore_1c_name = "datastore-1c"
stg_vpc_subnet_datastore_1c_cidr = "10.1.60.0/24"

prod_vpc_subnet_frontend_1a_name = "frontend-1a"
prod_vpc_subnet_frontend_1a_cidr = "10.0.10.0/24"
prod_vpc_subnet_frontend_1c_name = "frontend-1c"
prod_vpc_subnet_frontend_1c_cidr = "10.0.20.0/24"
prod_vpc_subnet_application_1a_name = "application-1a"
prod_vpc_subnet_application_1a_cidr = "10.0.30.0/24"
prod_vpc_subnet_application_1c_name = "application-1c"
prod_vpc_subnet_application_1c_cidr = "10.0.40.0/24"
prod_vpc_subnet_datastore_1a_name = "datastore-1a"
prod_vpc_subnet_datastore_1a_cidr = "10.0.50.0/24"
prod_vpc_subnet_datastore_1c_name = "datastore-1c"
prod_vpc_subnet_datastore_1c_cidr = "10.0.60.0/24"

#--------------------------------------------------------------
# route table
#--------------------------------------------------------------
dev_vpc_routetable_public_name = "public-rt"
dev_vpc_routetable_private_1a_name = "private-a-rt"
dev_vpc_routetable_private_1c_name = "private-c-rt"

stg_vpc_routetable_public_name = "public-rt"
stg_vpc_routetable_private_1a_name = "private-a-rt"
stg_vpc_routetable_private_1c_name = "private-c-rt"

prod_vpc_routetable_public_name = "public-rt"
prod_vpc_routetable_private_1a_name = "private-a-rt"
prod_vpc_routetable_private_1c_name = "private-c-rt"

#--------------------------------------------------------------
# vpc flow log
#--------------------------------------------------------------
dev_vpc_flow_log_name = "vpc-flow-log"
dev_vpc_flow_log_cloudwatch_log_group_name = "vpc-flow-log-group"
dev_vpc_flow_log_policy = "vpc-flow-log-policy"
dev_vpc_flow_log_role = "vpc-flow-log-role"

stg_vpc_flow_log_name = "vpc-flow-log"
stg_vpc_flow_log_cloudwatch_log_group_name = "vpc-flow-log-group"
stg_vpc_flow_log_policy = "vpc-flow-log-policy"
stg_vpc_flow_log_role = "vpc-flow-log-role"

prod_vpc_flow_log_name = "vpc-flow-log"
prod_vpc_flow_log_cloudwatch_log_group_name = "vpc-flow-log-group"
prod_vpc_flow_log_policy = "vpc-flow-log-policy"
prod_vpc_flow_log_role = "vpc-flow-log-role"

#--------------------------------------------------------------
# RDS settings for MySQL(develop)
#--------------------------------------------------------------
rds_identifier = "dev-db"
rds_engine = "mysql"
rds_mysql_engine_version = "5.6.29"
rds_instance_class = "db.m4.large"
rds_db_name = "monoqn_dev"
rds_master_username = "monoqndbmaster"
rds_master_password = "v5f2KRrfkoVQ"
rds_backup_retention_period = "1"
rds_backup_window = "16:00-17:00"
rds_maintenance_window = "sat:15:00-sat:16:00"
