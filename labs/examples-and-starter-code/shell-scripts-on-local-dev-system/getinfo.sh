#------------------------------------------------------------
# Crude example of how Ansible interacts with z/OS.
# 1. Send a script to z/OS.
# 2. Make the script executable.
# 3. Run the script remotely.
# 4. Delete the script from z/OS.
# 5. Copy the output file to local.
# 6. Delete the output file from z/OS.
# 7. Display the result on local.
#------------------------------------------------------------
scp ./ussinfo.sh ibmuser@173.45.66.189:/u/ibmuser/.
ssh ibmuser@173.45.66.189 'cd /u/ibmuser ; chmod +x ussinfo.sh ; ./ussinfo.sh > ussinfo.out'
ssh ibmuser@173.45.66.189 'rm /u/ibmuser/ussinfo.sh'
scp ibmuser@173.45.66.189:/u/ibmuser/ussinfo.out .
ssh ibmuser@173.45.66.189 'rm /u/ibmuser/ussinfo.out'
cat ussinfo.out