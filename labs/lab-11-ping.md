#### [Labs](labs.md) => _lab-12-ping.md_

# Lab 12: Use Ansible to ping the z/OS system 

Goals:

1. Configure hosts and variables correctly to access the z/OS node.
2. Prepare and run an Ansible playbook to ping the z/OS node.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## Step 2: Configure your Ansible inventory to access the z/OS host 

Using information learned in class and provided in supplementary documents, set up your Ansible environment so that it can reach the Lab z/OS host. 

## Step 3: Write an Ansible playbook to ping the z/OS host

Write an Ansible playbook that uses the built-in "ping" task to ping the Lab z/OS host. There is an example under labs/examples-and-starter-code/playbooks in the class repository. 

## Notes:

- You can help each other complete this lab. It is not a contest. You can break out into small working groups or work all together.