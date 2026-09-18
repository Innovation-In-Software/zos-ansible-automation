#### [Labs](labs.md) => _lab-13-gather-facts.md_

# Lab 13: Use Ansible to gather information about the z/OS system 

Goal:

- Report general information about the z/OS host.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## Step 2: Write an Ansible playbook to gather facts about the z/OS host

Write an Ansible playbook that uses the zos_gather_facts module in the ibm_zos_core collection to query the Lab z/OS system for basic system information.

Use the Ansible documentation, examples in the class repository, and help from your favorite AI assistant - as well as helping each other - to achieve the goal.