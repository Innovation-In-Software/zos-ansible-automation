//IBMUSERK JOB ,'DEFINE KSDS',
//         CLASS=A,MSGCLASS=X,
//         MSGLEVEL=(1,1),NOTIFY=&SYSUID
//********************************************************************
//* Define a VSAM KSDS
//********************************************************************
// EXPORT SYMLIST=(HLQ)
// SET HLQ=IBMUSER
//DEFKSDS  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//INDD     DD *
0001TEST RECORD 1
0002TEST RECORD 2
/*
//SYSIN    DD *,SYMBOLS=JCLONLY
 DELETE &HLQ..TEST.KSDS
 IF LASTCC < 9 THEN -
   DEFINE CLUSTER( -
     NAME(&HLQ..TEST.KSDS) -
     RECORDSIZE(80 80) -
     CYLINDERS(2 1) -
     CISZ(4096) -
     INDEXED -
     KEYS(4 0) -
   ) -
   DATA( -
     NAME(&HLQ..TEST.KSDS.DATA) -
   ) -
   INDEX( -
     NAME(&HLQ..TEST.KSDS.INDEX) -
   )
   IF LASTCC = 0 THEN -
     REPRO INFILE(INDD) OUTDATASET(&HLQ..TEST.KSDS)
   IF LASTCC = 0 THEN -
     PRINT INDATASET(&HLQ..TEST.KSDS) CHAR
/*     