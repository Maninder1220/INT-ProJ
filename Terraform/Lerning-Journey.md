# WHAT IS DATA BLOCK
- The Primary function of DATA BLOCK is to Fetch 
  and Retrive Information about Existing Resource.
- This information can be used to inform and configure
  other resources within terraform configuration.
- It only reads information from existing Infrastructure.

# WHAT IS RESOURCE BLOCK
- It is use to define and manage infrastructure component

- Key Element of Resource Block
    - TYPE
    - NAME
    - ARGUMENT

- Lifecycle and Meta-Arguments
  Resource blocks can also include lifecycle and meta-arguments to control their behavior.

- Meta Arguments for AWS resources

  depends_on
  count
  for_each
  provider
  lifecycle
  provisioner
  connection

  # WHAT IS MODULE AND ROOT MODULE
  Module is a self-contained unit of Terraform configuration that encapsulates related resources, the root module serves as the entry point and orchestrator for the entire Terraform project, defining the primary infrastructure components and configurations.

  In my project module folder is in TERRAFORM/Module and my root module is in TERRAFORM/Website

  # RESOURCES

    - VPC
    In my vpc module first i have created a data block for  Availability Zone which will fetch list of availability zones for my subnet.

    Then i created Resource Block type "aws_vpc" with name "vpc" with attributes like

      - cidr_block
      In this i have to declare my cider range to define on which ip range my vpc will run.

      - instance_tendancy
      here i have to mention weather i need a dedicated instance, dedicated host or shared physical server is fine

      - enable_dns_hostnames
      This attributes enables or disables DNS Host Name.
      DNS hostnames, or Domain Name System hostnames, are human-readable names assigned to network devices or resources on the internet

    - SUBNET
    Subnet is the logical partition of our Virtual private network and in this project i have created 2 Subnets Private and Public.
    
    In Private and Public Subnet resource block attributrs which i have mentioned are

        - vpc_id
        vpc id is used to indentify on which vpc this subnet have to run

        - cider_block
        So once we know on which vpc i have to run after that we have to define a cidr range in vpc for this Private and Public Subnet.

        - availability_zone
        Here we fetch availability zone from the data block of this availability zone

        - map_public_ip_on_launch 
        It controls whether instances launched within the subnet are automatically assigned public IP addresses when they are launched.

        In case of this project any instance launch in private will not be assigned any ip automatically, and in case of Public Subnet it will

    - SECURITY GROUP
    Security Group allows Inbound and Outbound Traffic at Instance level and each instance can have one or more security group, it is a stateful resource.
    If inbound traffic for a specific port is allowed then automatically corrosponding outbound traffic is also allowed

    In Here i have mention 2 Resource Block

        - aws_security_group
        In this i have mention attributes like name, description for better understanding of this security group and vpc_id which tells to which vpc this security group belongs.

        - aws_security_group_rule
        This are the detailed instruction of the Inbound and Outbound traffic and it have attributes like
    
        - type
        There are two type of traffic
        - Ingress - Inbound Traffic
        - Egress - Outbound Traffic

        - cidr_blocks
        This defines from which ip address or cidr range traffic is allowed

        - protocol
        protocol enables application programs and computing devices to exchange messages over a network. 
        Here in this project i have mention 'tcp' protocol for
        all rules

        - from_port  | - to_port
        In this we define port range to which the rule apply
        
        - security_group_id
        It defines to which security group this rule belong too

    - S3
    s3 are containers for storing s3 object.
    Here i created 2 Resource Block
        - aws_s3_bucket
        - aws_vpc_endpoint 
        when vpc endpoint is created we establish a private connection between vpc and the service .. so in our case we are connecting with s3.
        VPC can be managed using VPC endpoints, IAM policies, and bucket policies.