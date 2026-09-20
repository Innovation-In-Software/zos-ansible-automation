rm sysut2.txt
ssh ibmuser@173.45.66.189 "tsocmd \"SUBMIT 'IBMUSER.LAB.JCL(HELLOUSS)'\""
scp ibmuser@173.45.66.189:/u/ibmuser/sysut2.txt .
ssh ibmuser@173.45.66.189 'rm /u/ibmuser/sysut2.txt'
cat sysut2.txt
