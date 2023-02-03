module "tweakers_eks_cluster" {
    source                   = "../module"
    region                   = "us-east-1"
    availability_zones_count = 1

    project                  = "atlas-eks-poc"

    vpc_cidr                 = "172.31.0.0/16"
    subnet_cidr_bits         = 4
    subnet-ids               = ["subnet-02922eb5ddcb6df9a", "subnet-0c4d6ef5ebd02a63d"]
    k8s-version              = "1.22"
    vpc-public-access-cidr   = ["0.0.0.0/0"]
}