#### [Labs](labs.md) => _lab-23-rexx-tso.md_

# Lab 23: Submit inline REXX to the z/OS host

Goals:

- Create an Ansible playbook that contains inline REXX code.
- Have the playbook transfer the REXX script to z/OS and issue a TSO command to execute it.
- Display the result.

## Step 1: Develop a playbook to get RACF info for a userid

Use the zos_copy module in collection ibm_zos_core to transfer inline REXX code to a z/OS data set (could be a PDS member).

Use the zos_tso_command module in collection ibm_zos_core to execute the REXX script.