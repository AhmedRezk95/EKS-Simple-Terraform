# EKS-Simple-Terraform
Just a simple EKS Terraform infrastructure for demonstrating K8 test cases.

## Network Module
* 1 VPC
* 4 subnets: (2 public) "we don't actually use them in this practice
             (2 private): will be used for EKS cluster / node groups

* 1 route table file 
* 1 route-associate association

### the following parts are irrelevant "you can delete them for this practice to reduce AWS cost but usually i use them for testing purposes"
* 1 NAT
* 1 elastic ip
* 1 internet gateway

### the following tf files are the core of the practice
* iam: for EKS cluster/Node group required policies
* eks: for building the cluster controlplane 
* nodes: for node group creation
