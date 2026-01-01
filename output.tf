output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.devopsshack_vpc.id
}

output "subnet_ids" {
  description = "The IDs of the subnets created"
  value       = aws_subnet.devopsshack_subnet[*].id
}

output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.devopsshack.name
}

output "cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = aws_eks_cluster.devopsshack.endpoint
}

output "cluster_certificate_authority_data" {
  description = "The certificate authority data for the EKS cluster"
  value       = aws_eks_cluster.devopsshack.certificate_authority[0].data
}

output "node_group_name" {
  description = "The name of the EKS node group"
  value       = aws_eks_node_group.devopsshack.node_group_name
}

output "node_role_arn" {
  description = "The ARN of the IAM role for the node group"
  value       = aws_iam_role.devopsshack_node_group_role.arn
}
