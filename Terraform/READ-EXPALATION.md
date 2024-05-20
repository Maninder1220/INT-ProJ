MY TERRA-NETWORKING PROJECT
In journey of this project I tried to build understanding of IaC (Terraform) and to gain knowledge of networking concepts
like NAT, NACL, Security Group, Route .. following is the list of Data Block and Resource Block present in this IaC-Networking  Project.


# DATA BLOCK
AVAILABILITY ZONE | ROUTE TABLE | AMI

# RESOURCES BLOCK
VPC | SUBNET | SECURITY GROUP | SECURITY GROUP RULES

S3 | VPC ENDPOINT 

ROUTE TABLE | ROUTE

NAT GATEWAY | ELASTIC IP

NACL | NACL RULE

KEY PAIR | TLS PRIVATE KEY

INTERNET GATEWAY | IG ATTACHMENT

INSTANCE


# Directory Structure
- TERRAFORM
    - Module
    - Website (Root Module)


# Project - Infrastructure
- VPC
    - NACL
        - NACL Rules
            - Private Subnet
                - Security Group
                    - Security Group Rule
                - S3
                - Route Table
                - Elastic IP ( EIP )
                - NAT
            - Public Subnet
                - Security Group
                    - Security Group Rule
                - EC2
                    - Key Pair
                - Route Table
                - Internet Gateway
