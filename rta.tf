resource "aws_route_table_association" "frontend_1a" {
  subnet_id = "${aws_subnet.frontend_1a.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}
resource "aws_route_table_association" "frontend_1c" {
  subnet_id = "${aws_subnet.frontend_1c.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}
resource "aws_route_table_association" "application_1a" {
  subnet_id = "${aws_subnet.application_1a.id}"
  route_table_id = "${aws_route_table.private_rt_a.id}"
}
resource "aws_route_table_association" "application_1c" {
  subnet_id = "${aws_subnet.application_1c.id}"
  route_table_id = "${aws_route_table.private_rt_c.id}"
}
resource "aws_route_table_association" "datastore_1a" {
  subnet_id = "${aws_subnet.datastore_1a.id}"
  route_table_id = "${aws_route_table.private_rt_a.id}"
}
resource "aws_route_table_association" "datastore_1c" {
  subnet_id = "${aws_subnet.datastore_1c.id}"
  route_table_id = "${aws_route_table.private_rt_c.id}"
}
