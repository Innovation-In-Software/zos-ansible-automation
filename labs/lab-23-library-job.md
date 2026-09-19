#### [Labs](labs.md) => _lab-23-library-job.md_

# Lab 23: Set up a library provisioning job on z/OS

Notes:

Labs 23 and 24 are a pair. The idea is to take a solution built from JCL and resident on the z/OS host and convert it into an Ansible solution that resides on the Controller and does not depend on running JCL on the z/OS node. 

Goal:

Set up a solution on z/OS that allocates source libraries for a (hypothetical) application developer who is onboarding. This solution will be converted into equivalent Ansible scripts in the next Lab. 

Scenario: 

We have a set of jobs and libraries that we use to provision MVS assets for application developers as part of employee onboarding. These consist of:

- \<you\>.LAB.JCL - JCL used to provision libraries for application developers
- \<you\>.LAB.PROCLIB - JCL procedures used to provision libraries for application developers
- \<you\>.LAB.SEED.ASM - Members to seed application developer libraries 
- \<you\>.LAB.SEED.JCL - Members to seed application developer libraries

An application developer gets the following libraries set up for them when they are onboarded. They are allocated and seeded by jobs using the libraries above.

- \<userid\>.DEV.ASM - for assembler source
- \<userid\>.DEV.COBOL - for COBOL source 
- \<userid\>.DEV.JCL - for JCL
- \<userid\>.DEV.PROCLIB - for JCL procedures 
- \<userid\>.DEV.REXX - for REXX scripts
- \<userid\>.DEV.SPUFI - for SPUFI scripts

## Step 1: Allocate libraries for provisioning developer environments 

This is only setting the stage for the real Lab work. 

- \<you\>.LAB.PROCLIB (you allocate this library)
  - MAKELIB - allocates a PDSE for source members (sample provided)
  - MAKEPLIB - allocates a PDSE for program objects (sample provided)

- \<you\>.LAB.SEED.JCL (you allocate this library) 
  - ASM - JCL to assemble a program (sample provided, goes in \<userid\>.LAB.JCL)
  - ASMBIND - Proc to assemble and bind a program (sample provided, goes in \<userid\>.LAB.PROCLIB)
  - HELLO - Runs the HELLO program (sample provided, goes in \<userid\>.LAB.JCL)

- \<you\>.LAB.SEED.ASM (you allocate this library)
  - HELLO (sample provided)

- \<you\>.LAB.SEED.JCL (you allocate this library)
  - ASM (sample provided)
  - ASMBIND (sample provided)
  - HELLO (sample provided)  

- \<you\>.LAB.JCL (you allocate this library)
  - PROVDEV - allocates PDSEs and copies seed members into them (sample provided)

## Step 2: Develop an Ansible playbook to run the provisioning job 

As a first step in using Ansible to manage z/OS resources, you will probably write playbooks that submit existing MVS jobs and/or execute existing USS shell scripts. In this Lab, you'll develop a playbook that does just that. 

In the next Lab, you'll convert these actions into "native" Ansible tasks rather than just submitting JCL on the z/OS host. 

The idea is that this sequence of steps represents a realistic progression from the time an organization first starts to use Ansible until they become comfortable enough with its built-in features and collections to move the heavy lifting off the z/OS platform. 

