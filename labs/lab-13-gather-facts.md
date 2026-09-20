#### [Labs](labs.md) => _lab-13-gather-facts.md_

# Lab 13: Use Ansible to collect information about the z/OS system 

Goal:

1. Collect and display information about z/OS managed hosts.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## Step 1: Write an Ansible playbook to collect information about z/OS managed hosts

Use the zos_gather_facts module of collection ibm_zos_core to collect some basic information about a z/OS managed host and display it on the console. 

In one task, call zos_gather_facts without any special arguments to see what it returns by default. 

In another task, filter the results to show Master Catalog information from the IPL subset. 

## Notes:

- You can help each other complete this lab. It is not a contest. You can break out into small working groups or work all together.