resource "aws_iam_role" "eks_cluster" {
    name = "eks_cluster"
    assume_role_policy = <<POLICY
    {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY 
}

resource "aws_iam_role_policy_attachment" "amazon_eks_cluster_policy" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
    role = aws_iam_role.eks_cluster.name
}

resource "aws_eks_cluster" "Akbar-eks" {
    name = "Akbar-eks"
    role_arn = aws_iam_role.eks_cluster.arn
    version = "1.18"

    vpc_config {
      endpoint_public_access = true
      endpoint_private_access = false
    

   subnet_ids =[
       aws_subnet.pub-subnet-1.id,
       aws_subnet.pub-subnet-2.id,
       aws_subnet.private-subnet-1.id,
       aws_subnet.private-subnet-2.id
   ]
    }
   depends_on = [
     aws_iam_role_policy_attachment.amazon_eks_cluster_policy
   ]
}
