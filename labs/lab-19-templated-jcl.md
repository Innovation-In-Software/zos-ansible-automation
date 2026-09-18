#### [Labs](labs.md) => _lab-19-templated-jcl.md_

# Lab 19: Create template JCL and customize it prior to submission

In this Lab, you make a copy of the JCL from Lab 18 and convert it into a Jinja template by replacing all the values that need to be flexible with variable names. Then you make a modified copy of the playbook from Lab 18 to fill in the variables in the template before submitting the JCL.

Goal:

- Define generalized JCL as a Jinja template.
- Supply values for the variables in the template before submitting the JCL.

## Step 1: Create the Jinja template.

Create a subdirectory under _playbooks_ named _templates_. Copy your JCL file from the previous Lab into the _templates_ subdirectory. Replace each hard-coded value in the JCL that may need to be changed for different runs with appropriate variable names, using Jinja syntax. 

These values may include (at your discretion):

- Job owner, to be used in the jobname on the JOB card.
- High level qualifier, mid level qualifier, and low level data set name values.
- Primary and secondary space allocations.

### Step 2: Create a playbook that populates the variables and submits the job.

Create a playbook similar to the one you wrote for the previous lab, but with a few additional tasks:

- Set the variables
- Render the JCL locally using ansible.builtin.template (this is where Ansible plugs the values into the variables)
- Display the rendered JCL using ansible.builtin.command to execute a "cat" command locally.
- Using ibm_zos_core.zos_data_set, delete the temporary JCL data set if it exists on the z/OS host.
- Using ibm_zos_core.zos_data_set, allocate a new temporary data set for the rendered JCL on the z/OS host.
- Using ibm_zos_core.zos_copy, copy the rendered JCL from the local system to the z/OS host.
- Submit the job using ibm_zos_core.zos_job_submit.
- Display the results of the job, including whatever data you want to show from the results of the zos_job_submit call. 

