#### [Labs](labs.md) => _lab-14-list-started-tasks.md_

# Lab 14: Use Ansible to get a list of active started tasks on the z/OS host 

Goal:

- List active started tasks.
- Experience resolving issues related to version differences.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## Step 2: Write an Ansible playbook to display a list of active started tasks.

Write an Ansible playbook that uses the zos_job_query module in the ibm_zos_core collection to query the Lab z/OS host for a list of the active started tasks on the system.

Although this is a pretty basic operation, it is functionality that changed significantly between releases in the recent past. As our lab environment does not support the current version of Ansible, it's possible you will build a playbook based on documentation or online help that will not work in this environment. 

One of the goals of this lab is to enable you to experience what this situation looks like and how to resolve it. Both the software and the documentation are under heavy development and they can change from week to week. This is part of the reality of working with these tools.

