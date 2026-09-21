#### [Labs](labs.md) => _lab-21-list-pds-members.md_

# Lab 21: Submit DSLIST TSO command to list the members of SYS.PARMLIB

Goals:

- Create an Ansible playbook lists the members of SYS1.PARMLIB.

## Step 1: Develop a playbook to issue a DSLIST TSO command

Use the zos_tso_command module in collection ibm_zos_core to issue a DSLIST command to get a list of the members of SYS1.PARMLIB.

Display the result on the console.