#### [Labs](labs.md) => _lab-15-submit-inline-jcl.md_

# Lab 15: Submit inline JCL 

There are three ways to submit a batch job with Ansible: code the JCL inline (this lab), keep the JCL on the control node, or keep the JCL on the z/OS host. 

Goal:

- Submit JCL that is coded inline in the Ansible playbook.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## Step 2: Write an Ansible playbook to submit inline JCL

Write an Ansible playbook that uses the zos_copy and zos_job_submit modules in the ibm_zos_core collection to transfer JCL coded inline to the z/OS host and submit it.
