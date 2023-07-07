resource "aws_vpc" "vpc_group2" {
  cidr_block = var.vpc_main_cidr_block
  tags = {
    Name = "vpc_main"
  }
}

resource "aws_subnet" "group2_public1" {
  vpc_id                  = aws_vpc.vpc_group2.id
  cidr_block              = var.vpc_public1_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}a"
}

resource "aws_subnet" "group2_public2" {
  vpc_id                  = aws_vpc.vpc_group2.id
  cidr_block              = var.vpc_public2_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}b"
}

resource "aws_subnet" "group2_public3" {
  vpc_id                  = aws_vpc.vpc_group2.id
  cidr_block              = var.vpc_public3_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}c"
}

resource "aws_subnet" "group2_private1" {
  vpc_id            = aws_vpc.vpc_group2.id
  cidr_block        = var.vpc_private1_cidr_block
  availability_zone = "${var.region}a"
}

resource "aws_subnet" "group2_private2" {
  vpc_id            = aws_vpc.vpc_group2.id
  cidr_block        = var.vpc_private2_cidr_block
  availability_zone = "${var.region}b"
}

resource "aws_subnet" "group2_private3" {
  vpc_id            = aws_vpc.vpc_group2.id
  cidr_block        = var.vpc_private3_cidr_block
  availability_zone = "${var.region}c"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_group2.id
}

resource "aws_route_table" "r" {
  vpc_id = aws_vpc.vpc_group2.id

  route {
    cidr_block = var.default_cidr_block
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.group2_public1.id
  route_table_id = aws_route_table.r.id
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.group2_public2.id
  route_table_id = aws_route_table.r.id
}
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.group2_public3.id
  route_table_id = aws_route_table.r.id
}

resource "aws_db_subnet_group" "rds_subnet_grp" {
  subnet_ids = ["${aws_subnet.group2_private1.id}", "${aws_subnet.group2_private2.id}", "${aws_subnet.group2_private3.id}"]
}
