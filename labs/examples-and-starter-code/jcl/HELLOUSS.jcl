//IBMUSERU JOB ,'HELLO USS',
//             CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1),
//             TIME=1440,REGION=0M,
//             NOTIFY=&SYSUID
//*********************************************************************
//* SAY HELLO
//*********************************************************************
//STEP1    EXEC PGM=IEBGENER
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD *
MVS batch says hello to USS
/*
//SYSUT2   DD PATH='/u/ibmuser/sysut2.txt',
//            PATHOPTS=(OWRONLY,OCREAT,OTRUNC),
//            PATHMODE=(SIRUSR,SIWUSR),
//            FILEDATA=TEXT
