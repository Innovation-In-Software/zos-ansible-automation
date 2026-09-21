#### [Labs](labs.md) => _lab-25-jcl-to-playbook.md_

# Lab 25: Convert JCL-based solution to "pure" Ansible

Notes:

Labs 24 and 25 are a pair. Lab 24 sets up a solution similar to what might already exist in a z/OS shop that is starting to use Ansible. Lab 25 (this one) converts that solution into one based on Ansible functionality rather than JCL. 

Goal:

Convert a JCL-based solution that allocates source libraries for a (hypothetical) application developer who is onboarding into an equivalent solution using "pure" Ansible functionality.

## Step 1: Decide how you want to approach the problem

Choose an approach - either convert the whole jobstream at once, or select a section of it (maybe one or two steps), ensure that much is working, and then proceed to another section. 

## Step 2: Decide how you want to test the solution 

Your "pure" Ansible solution has to result in the same outcome on the z/OS side as your JCL-based solution does. You need a plan for verifying that it does so. It's also a good idea to have a path back to a known working version, in case something goes wrong with one of your changes. 

## Step 3: Follow your plan to convert the solution

Your new playbook will use features of Ansible and the ibm_zos_core collection to achieve the same outcome as your JCL-based solution. 


