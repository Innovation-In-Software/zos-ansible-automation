//********************************************************************
//* ALLOCATE SOURCE LIBRARIES FOR AN APPLICATION DEVELOPER.
//********************************************************************
//MAKELIB  PROC PRI=1,SEC=1,HLQ=,LIBNAME=
//CLEANUP  EXEC PGM=IEFBR14
//OLDLIB   DD DSN=&HLQ..&LIBNAME,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,VOL=SER=USRVS1,
//            SPACE=(TRK,(1,0)),
//            DCB=&SYSUID..MODELDCB.DCBLIB80,
//            DSNTYPE=LIBRARY
//ALLOC    EXEC PGM=IEFBR14
//NEWLIB   DD DSN=&HLQ..&LIBNAME,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=SYSDA,VOL=SER=USRVS1,
//            SPACE=(TRK,(&PRI,&SEC),RLSE),
//            DCB=&SYSUID..MODELDCB.DCBLIB80,
//            DSNTYPE=LIBRARY
//         PEND