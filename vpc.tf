resource "aws_vpc" "Akbar-vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags={
        Name="Akbar-vpc"
    }  
}

output "vpc_id" {
    value = aws_vpc.Akbar-vpc.id
    description = "VPC ID"
    sensitive = false
}