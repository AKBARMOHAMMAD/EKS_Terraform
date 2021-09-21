resource "aws_subnet" "pub-subnet-1" {
    vpc_id = aws_vpc.Akbar-vpc.id
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1a"

    tags = {
      Name = "pub-subnet-1"
      "kubernetes.io/cluster/eks" = "shared"
      "kubernetes.io/role/elb"    = 1
    }
}

resource "aws_subnet" "pub-subnet-2" {
    vpc_id = aws_vpc.Akbar-vpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1b"

    tags = {
      Name = "pub-subnet-2"
      "kubernetes.io/cluster/eks" = "shared"
      "kubernetes.io/role/elb"    = 1
    }
}

resource "aws_subnet" "private-subnet-1" {
    vpc_id = aws_vpc.Akbar-vpc.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1a"

    tags = {
      Name = "private-subnet-1"
      "kubernetes.io/cluster/eks" = "shared"
      "kubernetes.io/role/elb"    = 1
    }
}

resource "aws_subnet" "private-subnet-2" {
    vpc_id = aws_vpc.Akbar-vpc.id
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1b"

    tags = {
      Name = "private-subnet-2"
      "kubernetes.io/cluster/eks" = "shared"
      "kubernetes.io/role/elb"    = 1
    }
}