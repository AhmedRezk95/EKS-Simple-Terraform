resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "${var.aws_resource_prefix}-rizk-node-groups"
  node_role_arn   = aws_iam_role.eks_node_group_role.arn
  subnet_ids      = [module.network.subnet_id_pr1, module.network.subnet_id_pr2]
  instance_types =  [var.nodes_instance_types]
  
  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.eks_node_group_role-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_node_group_role-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks_node_group_role-AmazonEC2ContainerRegistryReadOnly,
  ]
}