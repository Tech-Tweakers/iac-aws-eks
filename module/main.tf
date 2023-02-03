module "tweakers_eks_cluster" {
    source                   = "../resources"
    region                   = "us-east-1"
    k8s-version              = "1.22"
    project                  = "atlas-eks-poc"
    
    availability_zones_count = 2
    vpc-id                   = "vpc-000bbc20645fbf497"
    vpc_cidr                 = "172.31.0.0/16"
    subnet_cidr_bits         = 4
    subnet-ids               = ["subnet-02922eb5ddcb6df9a", "subnet-0c4d6ef5ebd02a63d"]

    route-table-id           = "rtb-0d8f4dcfe23b6c1b7"

    vpc-public-access-cidr   = ["0.0.0.0/0"]
}