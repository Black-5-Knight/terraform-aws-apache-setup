resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.aws_vpc.id

  tags = {
    Name = "day-5-internet-gateway"
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.aws_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "day-5-route-table"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.aws_subnet.id
  route_table_id = aws_route_table.route_table.id
}
