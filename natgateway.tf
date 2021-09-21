resource "aws_nat_gateway" "gw1" {
    allocation_id = aws_eip.Nat-1.id
    subnet_id = aws_subnet.pub-subnet-1.id

    tags = {
      Name = "NAT-1"
    }
}

resource "aws_nat_gateway" "gw2" {
    allocation_id = aws_eip.Nat-2.id
    subnet_id = aws_subnet.pub-subnet-2.id

    tags = {
      Name = "NAT-2"
    }
}