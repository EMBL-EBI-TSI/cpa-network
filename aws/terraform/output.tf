output "network_id" {
  value = "${aws_vpc.vpc.id}"
}

output "network_name" {
  value = "${var.network_name}"
}

output "subnet_id" {
  value = "${aws_subnet.subnet.id}"
}
