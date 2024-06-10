# Permission n Policies
Building policies with terraform.

# Step One - Creating -  Organization | Organizational Unit | Service Control Policy
- Hierarchy of an Organization

  - Root
    - Master Account (Payer Account)
      - Don't run workload
      - Do Consolidated Billing
      - Do SCP (Service Control Policy)

        - OU ( Organizational Unit)
        OU refers to a logical grouping within a company,
        allowing for efficient management of resources, permissions, and policies.
          - It have set of AWS Account
          - Accounts are known as Member Account or Child Account.

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

# AWS LANDING ZONE
- What is AWS Landing Zone
  It is a secure, multi-account foundation built on AWS
  It is starting point that provides a baseline for,
  - Account Structure
  - IAM
  - Define rules and processes eg SCP
  - Data Security
  - Network Design
  - Logging

- SCP
  - Never Grant Permission
  - Can be attached to Account or OU
  - It has Highest level of priority
  - Its default policy is FullAWSAccess
  - It support Condition

  # SCP workes on level of Effect, Action, Resource and Condition

  # SCP decides what IAM will do under specific Organization or Organizational Unit



- Guardrails
It is automated mechanisms and policies that ensure compliance, security, and operational efficiency.
Guardrails can include various types of policies and automated mechanisms that help maintain compliance, security,
and operational excellence in an AWS environment.
  - It is High level rules for additional controlling and securing of accounts
  - There are primarily two types of guardrails in AWS Control Tower.
    - Preventive
      It ensures that your account maintain compliance, because it disallows actions that lead to policy violations
      EG - Restricting access to certain AWS regions, enforcing encryption for S3 buckets,
           or ensuring that IAM users cannot be created with excessive privileges.
    - Detective
      Detect non-compliance of resources within your account such as policy violations and provides alert through dashboard
      EG - Detecting unencrypted EC2 instances, identifying publicly accessible S3 buckets,
           or monitoring IAM roles with excessive permissions.

