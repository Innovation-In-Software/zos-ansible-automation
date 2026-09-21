#### [Labs](labs.md) => _lab-27-convert-vsam-job.md_

# Lab 27: Convert JCL-based solution to "pure" Ansible

Notes:

Labs 26 and 27 are a pair. Lab 26 sets up a solution similar to what might already exist in a z/OS shop that is starting to use Ansible. Lab 27 (this one) converts that solution into one based on Ansible functionality rather than JCL. 

Goal:

Convert a JCL-based solution that allocates a VSAM KSDS into an equivalent solution using "pure" Ansible functionality.

## Step 1: Decide how you want to approach the problem

The IDCAMS job has only one step, but it executes several IDCAMS commands within that step. Choose an approach - either convert the whole series of commands at once, or select one or two operations at a time for conversion.

## Step 2: Decide how you want to test the solution 

Your "pure" Ansible solution has to result in the same outcome on the z/OS side as your JCL-based solution does. You need a plan for verifying that it does so. It's also a good idea to have a path back to a known working version, in case something goes wrong with one of your changes. 

## Step 3: Follow your plan to convert the solution

Your new playbook will use features of Ansible and the ibm_zos_core collection to achieve the same outcome as your JCL-based solution. 


