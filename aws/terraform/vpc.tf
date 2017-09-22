resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc_cidr_block}"

  tags = {
    Name = "${var.network_name}-vpc"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.subnet_cidr_block}"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.network_name}-subnet"
  }
}
