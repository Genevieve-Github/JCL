//SIMPLON  JOB HERC02,CLASS=A,MSGCLASS=X
//--------------------------------------------------------------
// IEFBR14 : SUPPRESSION FICHIER EXISTANT
//           CREATION NOUVEAU FICHIER
//--------------------------------------------------------------
//STEP1    EXEC PGM=IEFBR14
//SYSOUT   DD SYSOUT=A
//SYSPRINT DD *
//SYSDUMP  DD SYSOUT=*
//DD01     DD DSN=HERC02.TESTGG,DISP=(OLD,DELETE,DELETE)
//DD02     DD DSN=HERC02.TESTGG,DISP=(NEW,CATLG),
//            UNIT=DISK,SPACE=(TRK,(1,1)),DCB=(RECFM=FB,LRECL=80)
//--------------------------------------------------------------
// IEBGENER : CREATION NOUVEAU FICHIER
//            DUPLICATION DE FICHIER
//--------------------------------------------------------------
//STEP2    EXEC PGM=IEBGENER
//SYSOUT   DD SYSOUT=A
//SYSPRINT DD DUMMY
//SYSDUMP  DD SYSOUT=*
//SYSUT1   DD DSN=HERC02.INPUT.DATA,DISP=SHR
//SYSUT2   DD DSN=HERC02.TESTGG,DISP=(,CATLG),
//DD02     DD DSN=HERC02.TESTGG,DISP=(NEW,CATLG),
//            UNIT=DISK,SPACE=(TRK,(30,15),RLSE)
//SYSIN    DD *
  GENERATE MAXFLDS=1