resource "aws_eip" "Nat-1" {
    depends_on = [
      aws_internet_gateway.Akbar-IGW
    ]
    vpc = true
}

resource "aws_eip" "Nat-2" {
    depends_on = [
      aws_internet_gateway.Akbar-IGW
    ]
    vpc = true
}