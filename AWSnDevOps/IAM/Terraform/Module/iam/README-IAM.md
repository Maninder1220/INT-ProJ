# Permission n Policies
Building policies with terraform.

# Step One - Creating -  Organization | Organizational Unit | Service Control Policy
- Hierarchy of an Organization

  - Root
    - Master Account (Payer Account)
      -> Don't run workload
      -> Do Consolidated Billing
      -> Do SCP (Service Control Policy)

        - OU ( Organizational Unit)
        OU refers to a logical grouping within a company,
        allowing for efficient management of resources, permissions, and policies.
          -> It have set of AWS Account
          -> Accounts are known as Member Account or Child Account

        - SCP (Service Control Policy)
          -> these are permission boundries
    
    Policies can be applied to OU level, Sub OU level in AWS Organization,
    child account inherit policies of OU and Sub OU respectively

# Key Difference 
Scope: SCPs operate at the organizational level, while IAM policies operate at the account level.

Purpose: SCPs are used for central governance and enforcing security policies across an organization,
while IAM policies are used to grant specific permissions to individual users or roles.

Effect: SCPs limit what actions can be allowed within an organization,
while IAM policies grant permissions for specific actions on AWS resources.

Granularity: IAM policies offer more granular control over permissions since they can be applied to individual users or roles, while SCPs apply to entire organizational units.