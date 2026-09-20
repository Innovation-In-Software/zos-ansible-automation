jobid=$(ssh ibmuser@173.45.66.189 'jsub "IBMUSER.JCL.PDS(HELLO)"')
ssh ibmuser@173.45.66.189 "jwait $jobid"
ssh ibmuser@173.45.66.189 "jget $jobid --ddname SYSUT2" > sysut2.txt
jobid=
cat sysut2.txt
