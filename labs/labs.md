# Ansible Automation for z/OS - Labs 

These labs assume 

- knowledge of and experience with z/OS (TSO/ISPF, JCL);
- awareness of but not necessarily in-depth knowledge of Linux or Unix and USS;
- awareness of but not necessarily in-depth knowledge of VSCode;
- no prior experience with Ansible, AAP, Python, or shell scripts;
- a local or cloud-based development system running Linux, MacOS, or Microsoft Windows;
- a working Internet connection;
- access to a z/OS system with access rights appropriate for system programming work (both TSO and USS userids);
- access to an Ansible control node via ssh for command-line work; and
- access to an Ansible AAP node via a web browser for AAP work.

## Day 1 (Introductions, Setup, Modules 1 and 2)

### Lab 1: [Install or verify VSCode](lab-1-vscode.md)
### Lab 2: [Clone the lab repository](lab-2-clone-repo.md)
### Lab 3: [Install a 3270 terminal emulator](lab-3-emulator.md)
### Lab 4: [Sign on to TSO on z/OS](lab-4-tso-signon.md)
### Lab 5: [Access the Automation Controller from a Web browser](lab-5-access-aap.md)
### Lab 6: [Connect to the Automation Controller server to use the command line](lab-6-aap-connect.md)
### Lab 7: [USS quick and dirty](lab-7-uss.md)
### Lab 8: [Explore Python and ZOAU components on z/OS](lab-8-zoau.md)
### Lab 9: [Linux quick and dirty](lab-9-linux.md)
### Lab 10: [Display Ansible variables and host values](lab-10-show-inventory.md)
### Lab 11: [Install or verify the ibm_zos_core collection](lab-11-ibm-zos-core.md)
### Lab 12: [Ping z/OS with Ansible](lab-12-ping.md)
### Lab 13: [Gather information about the z/OS system](lab-13-gather-facts.md)

## Day 2

### Lab 14: [Configure inventory and playbooks on the Ansible Controller](lab-14-ansible-controller.md)

### Notes for Labs 15 - 22

Ansible can perform most of the tasks that you might need to carry out to administer a z/OS system. With each new release, they are adding more functionality. By enabling you to submit TSO commands it provides a way to fill in any functional gaps in its modules, since you can basically do "anything" that way.

But it is unlikely you will sit down on Day One and convert all your handy jobstreams, Assembler utilities, REXX scripts, ISPF dialogs, edit macros, USS shell scripts, and SPUFI scripts into native Ansible API calls. It's more likely you will migrate those solutions little by little as the need arises. 

In the meantime, it's useful to know how to use Ansible to invoke the solutions you already have in place on the z/OS platform. For the most part, that amounts to using Ansible to submit TSO commands, batch jobs, and USS shell scripts. 

Use the Ansible documentation, examples in the class repository, and help from your favorite AI assistant - as well as helping each other - to complete this set of Labs.

### Lab 15: [Obtain a list of started tasks](lab-15-list-started-tasks.md)
### Lab 16: [Submit inline JCL](lab-16-submit-inline-jcl.md)
### Lab 17: [Submit JCL on the z/OS host](lab-17-submit-jcl-on-zos.md)
### Lab 18: [Submit JCL from the local system](lab-18-submit-jcl-from-local.md)
### Lab 19: [Use templated JCL with Jinja](lab-19-templated-jcl.md)
### Lab 20: [Execute a TSO command to list PDS members](lab-20-pds-members.md)
### Lab 21: [Execute a TSO command to show a RACF user profile](lab-21-racf-user.md)
### Lab 22: [Run an inline REXX script via TSO](lab-22-rexx-tso.md)

## Day 3

### Notes for Labs 23 - xx

This set of Labs involves setting up typical kinds of jobs on z/OS and then converting them into "native" Ansible solutions that do the same work. You will do this kind of thing on an ongoing basis as you gradually shift solutions from the z/OS platform to the Controller environment.

### Lab 23: [Run job to allocate a source library and copy members into it](lab-23-library-job.md)
### Lab 24: [Convert the job from Lab 23 into "native" Ansible](lab-24-jcl-to-playbook.md)
### Lab 25: [Run batch job to define and populate a KSDS and do a LISTCAT](lab-25-vsam-job.md)
### Lab 26: [Convert the job from Lab 25 into "native" Ansible](lab-26-convert-vsam-job.md)


## Day 4

### Lab x:
### Lab x:

## Day 5

### Lab x:
### Lab x:

