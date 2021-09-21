resource "aws_internet_gateway" "Akbar-IGW" {
    vpc_id = aws_vpc.Akbar-vpc.id

    tags = {
      Name = "Akbar-IGW"
    }
  
}