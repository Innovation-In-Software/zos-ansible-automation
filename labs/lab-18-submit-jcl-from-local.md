#### [Labs](labs.md) => _lab-18-submit-jcl-from-local.md_

# Lab 18: Submit JCL that resides on the Controller

Labs 18 and 19 are meant to be done in sequence. In Lab 18, you learn to submit plain JCL that's ready to run and that lives in a file on the Controller (the local system). In Lab 19, you parameterize the JCL using a Jinja template to make it more general, then use variables to customize the JCL before submission.

Goal:

- Submit JCL that is located on the Controller.

## Step 1: Write an Ansible playbook to submit JCL from a local file.

Write an Ansible playbook that uses the zos_job_submit module in the ibm_zos_core collection to submit JCL that resides on the local system.
