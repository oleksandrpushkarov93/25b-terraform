### Practice tasks 

1. Create EC2 instance using regular resource
    - provider region: us-east-1
    - use default vpc
    - for variables, use vars.tfvars file
        - for ami, use variable named var.ami, value is ami-052064a798f08f0d3
        - for instance type, use variable var.instance_type, value is t3.micro


2. Create EC2 instance using module
- directory from exercise 1 will be used as a template (child module)
- create another directory in the same location as exercise 1 directory
- use modular reference and provide variable values