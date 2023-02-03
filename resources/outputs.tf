output "cluster_name" {
  value = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.this.certificate_authority[0].data
}

output "cluster-certificate-authority-data" {
  value = aws_eks_cluster.this.certificate_authority[0].data
}

output "cluster-security-group-id" {
  value = aws_security_group.eks_cluster.id
}

output "cluster-iam-role-arn" {
  value = aws_iam_role.cluster.arn
}