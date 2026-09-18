#### [Labs](labs.md) => _lab-17-submit-jcl-from-local.md_

# Lab 17: Submit JCL that resides on the Controller

Labs 17 and 18 are meant to be done in sequence. In Lab 17, you learn to submit plain JCL that's ready to run and that lives in a file on the Controller (the local system). In Lab 18, you parameterize the JCL using a Jinja template to make it more general.

Goal:

- Submit JCL that is located on the Controller.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## Step 2: Write an Ansible playbook to submit JCL from a local file.

Write an Ansible playbook that uses the zos_job_submit module in the ibm_zos_core collection to submit JCL that resides on the local system.
