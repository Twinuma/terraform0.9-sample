#--------------------------------------------------------------
# VPC Flow Logs
#--------------------------------------------------------------
resource "aws_flow_log" "vpc_flow_log" {
  log_group_name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_flow_log_cloudwatch_log_group_name : terraform.env == "stg" ? var.stg_vpc_flow_log_cloudwatch_log_group_name : var.prod_vpc_flow_log_cloudwatch_log_group_name}"
  iam_role_arn = "${aws_iam_role.vpc_flow_role.arn}"
  vpc_id = "${aws_vpc.vpc.id}"
  traffic_type = "ALL"
}
resource "aws_iam_role" "vpc_flow_role" {
    name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_flow_log_role : terraform.env == "stg" ? var.stg_vpc_flow_log_role : var.prod_vpc_flow_log_role}"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
resource "aws_iam_role_policy" "vpc_flow_policy" {
    name = "${terraform.env}-${terraform.env == "dev" ? var.dev_vpc_flow_log_policy : terraform.env == "stg" ? var.stg_vpc_flow_log_policy : var.prod_vpc_flow_log_policy}"
    role = "${aws_iam_role.vpc_flow_role.id}"
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
