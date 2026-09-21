#### [Labs](labs.md) => _lab-26-vsam-job.md_

# Lab 26: Set up an IDCAMS job on z/OS and submit it through Ansible

Notes:

Labs 26 and 27 are a pair. The idea is to take a solution built from JCL and resident on the z/OS host and convert it into an Ansible solution that resides on the Controller and does not depend on running JCL on the z/OS node. 

Goal:

Set up a job that allocates a VSAM KSDS using IDCAMS. The job deletes, defines, loads (via repro), does a listcat, and prints the records. This solution will be converted into equivalent Ansible scripts in the next Lab. 

Scenario: 

This is a common type of job that people use to re-create VSAM data sets and other assets. Initially we want to have Ansible submit the job from the Controller. Later we'll want to convert the solution into "pure" Ansible rather than using a batch job.

## Step 1: Set up the JCL and create an Ansible playbook to submit it 

There is a sample job in labs/examples-and-starter-code/jcl/DEFKSDS.jcl you can use as a basis for creating your own JCL on the z/OS system. 

Once you have the JCL in place, develop an Ansible playbook to submit it and display the results. 
