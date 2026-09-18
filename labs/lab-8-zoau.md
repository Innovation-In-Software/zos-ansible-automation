#### [Labs](labs.md) => _lab-8-zoau.md_

# Lab 8: Explore Python and ZOAU components on USS

Goals:

1. Learn where Python and ZOAU are installed in the USS environment.
2. Learn how to verify product versions.

Overview:

This is a group lab guided by the instructor. Python and ZOAU are mentioned in the presentation but it may be helpful to look and touch. It's the difference between viewing someone's vacation photos versus visiting the place yourself. 

Ansible works by establishing an ssh session, sending a script to the target system, executing the script remotely and collecting the results, and deleting the script on the target system. To reduce the mystery of all that, we can demonstrate a crude example of performing the same steps directly, without Ansible. 

This lab reinforces information provided in the presentation rather than challenging you to complete a task.

Demo 1: 

Shell script getinfo uses ssh to get the output from whoami and uname commands from USS on the z/OS host.

Demo 2:

Shell script runhello.sh or runhello2.sh uses ssh to submit a batch job and retrieve the contents of an output file from the job. 

If ZOAU commands are installed on the target system, use runhello.sh. Otherwise, use runhello2.sh.

Demo 2 runs job IBMUSER.LAB.JCL(HELLOUSS) on the z/OS host.