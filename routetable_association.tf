resource "aws_route_table_association" "public-RT1" {
    subnet_id = aws_subnet.pub-subnet-1.id
    route_table_id = aws_route_table.Public-RT.id
  
}

resource "aws_route_table_association" "public-RT2" {
    subnet_id = aws_subnet.pub-subnet-2.id
    route_table_id = aws_route_table.Public-RT.id
  
}

resource "aws_route_table_association" "private-RT1" {
    subnet_id = aws_subnet.private-subnet-1.id
    route_table_id = aws_route_table.Public-RT.id
  
}

resource "aws_route_table_association" "private-RT2" {
    subnet_id = aws_subnet.private-subnet-2.id
    route_table_id = aws_route_table.Public-RT.id
  
}