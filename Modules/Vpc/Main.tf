resource "aws_vpc" "Main_Vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Main Vpc"
  }
  
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.Main_Vpc.id
  tags = {
    Name = "internet_gatewa"
  }
}

resource "aws_route_table" "route_table_for_public" {
  vpc_id = aws_vpc.Main_Vpc.id
  tags = {
    Name = "route_table_for_public"
  }
}

resource "aws_subnet" "Public_subnet_1" {
  vpc_id = aws_vpc.Main_Vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_subnet_1"
  }
}

resource "aws_subnet" "Public_subnet_2" {
  vpc_id = aws_vpc.Main_Vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_subnet_2"
  }
}

resource "aws_route" "assosiate_in_gw_in_route_ta" {
  gateway_id = aws_internet_gateway.internet_gateway.id
  route_table_id = aws_route_table.route_table_for_public.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "assosiate_subnect_1" {
  route_table_id = aws_route_table.route_table_for_public.id
  subnet_id = aws_subnet.Public_subnet_1.id
}

resource "aws_route_table_association" "assosiate_subnet_2" {
  route_table_id = aws_route_table.route_table_for_public.id
  subnet_id = aws_subnet.Public_subnet_2.id
}


