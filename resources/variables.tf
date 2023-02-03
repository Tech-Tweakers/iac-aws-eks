variable "region" {
    default = "us-east-1"
    description = "AWS region"
    type = string
}

variable "availability_zones_count" {
    default = 1
    description = "Number of availability zones to use"
    type = number
}

variable "project" {
    description = "Project name"
    type = string
}

variable "vpc_cidr" {
    description = "VPC CIDR"
    type = string
}

variable "subnet_cidr_bits" {
    default = 4
    description = "Number of bits to use for subnet CIDR"
    type = number
}

variable "subnet-ids" {
    type = list(string)
    description = "value of subnet-ids"
}

variable "k8s-version" {
    default = "1.22"
    description = "Kubernetes version"
    type = string
}

variable "vpc-public-access-cidr" {
    type = list(string)
    description = "value of vpc-public-access-cidr"
}

variable "tags" {
    type = map(string)
    default = {}
    description = "Tags to apply to resources"
}
