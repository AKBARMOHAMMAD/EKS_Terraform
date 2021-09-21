resource "aws_route_table" "Public-RT" {
    vpc_id = aws_vpc.Akbar-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.Akbar-IGW.id
    }

    tags = {
      Name = "Public-RT"
    }
}

resource "aws_route_table" "Private-RT1" {
    vpc_id = aws_vpc.Akbar-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.gw1.id
    }

    tags = {
      Name = "Private-RT1"
    }
}


resource "aws_route_table" "Private-RT2" {
    vpc_id = aws_vpc.Akbar-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.gw2.id
    }

    tags = {
      Name = "Private-RT2"
    }
}