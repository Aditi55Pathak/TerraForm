resource "aws_vpc" "terra_key" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "vprofile"
  }
}

resource "aws_subnet" "default_az1" {
  vpc_id                  = aws_vpc.terra_key.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.ZONE1
  map_public_ip_on_launch = true
  tags = {
    Name = "Default subnet for us-west-1a"
  }
}

resource "aws_subnet" "default_az2" {
  vpc_id                  = aws_vpc.terra_key.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = var.ZONE2
  map_public_ip_on_launch = true
  tags = {
    Name = "Default subnet for us-west-1b"
  }
}

resource "aws_subnet" "default_az3" {
  vpc_id                  = aws_vpc.terra_key.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = var.ZONE1
  map_public_ip_on_launch = true
  tags = {
    Name = "Default subnet for us-west-1c"
  }
}

resource "aws_subnet" "default_az4" {
  vpc_id                  = aws_vpc.terra_key.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = var.ZONE2
  map_public_ip_on_launch = true
  tags = {
    Name = "Default subnet for us-west-1d"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.terra_key.id
  tags = {
    Name = "vprofile-igw"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.terra_key.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "vprofile-rt"
  }
}

resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.default_az1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "a2" {
  subnet_id      = aws_subnet.default_az2.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "a3" {
  subnet_id      = aws_subnet.default_az3.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "a4" {
  subnet_id      = aws_subnet.default_az4.id
  route_table_id = aws_route_table.rt.id
}
