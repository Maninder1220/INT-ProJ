This is Terraform Project
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
