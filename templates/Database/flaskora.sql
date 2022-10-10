--------------------------------------------------------
--  File created - Monday-October-10-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$COL_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
MD_COL_NAME VARCHAR2(384),
MD_COL_NUM NUMBER,                 /* col# */
MD_COL_SEGCOL NUMBER,              /* segcol# */
MD_COL_TYPE NUMBER,                /* type# */
MD_COL_LEN NUMBER,
MD_COL_PREC NUMBER,                /* precision */
MD_COL_SCALE NUMBER,
MD_COL_CHARSETID NUMBER,           /* character set id */
MD_COL_CHARSETFORM NUMBER,         /* character set form */
MD_COL_ALT_TYPE VARCHAR2(4000),    /* adt type if any */
MD_COL_ALT_PREC NUMBER,            /* precision of the adt attribute */
MD_COL_ALT_CHAR_USED VARCHAR2(2),  /* charset used by the adt attribute */
MD_COL_ALT_LENGTH NUMBER,          /* length of the adt attribute */
MD_COL_ALT_XML_TYPE NUMBER,        /* 0/1. is xml_type column */
MD_COL_ALT_BINARYXML_TYPE NUMBER,  /* 0/1. is xml_type stored as binary */
MD_COL_ENC_ISENC VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ENC_NOSALT VARCHAR2(3) ,    /* 'YES'/'NO' */
MD_COL_ENC_ISLOB VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ALT_OBJECTXML_TYPE NUMBER,  /* 0/1 xml_type stored as object */
MD_COL_HASNOTNULLDEFAULT VARCHAR2(3) ,   /* 'YES'/'NO' */
MD_COL_ALT_TYPE_OWNER VARCHAR2(384),  /* owner of the adt type if any */
PROPERTY NUMBER,
XCOLTYPEFLAGS NUMBER,
XOPQTYPEFLAGS NUMBER,
EAFLAGS NUMBER,
XFQCOLNAME VARCHAR2(4000),
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
OBJV# NUMBER,
INTCOL# NUMBER,
INTERVAL_LEADING_PRECISION NUMBER,
INTERVAL_TRAILING_PRECISION NUMBER,
TOID RAW(16),
TYPENAME VARCHAR2(384),
NUMINTCOLS NUMBER,
NUMATTRS NUMBER,
ADTORDER NUMBER,
LOGMNR_SPARE1 NUMBER,
LOGMNR_SPARE2 NUMBER,
LOGMNR_SPARE3 VARCHAR2(1000),
LOGMNR_SPARE4 DATE,
LOGMNR_SPARE5 NUMBER,
LOGMNR_SPARE6 NUMBER,
LOGMNR_SPARE7 NUMBER,
LOGMNR_SPARE8 NUMBER,
LOGMNR_SPARE9 NUMBER,
XTYPENAME VARCHAR2(4000),
XTOPINTCOL NUMBER,
XREFFEDTABLEOBJN NUMBER,
XREFFEDTABLEOBJV NUMBER,
XOPQTYPETYPE NUMBER,
XOPQLOBINTCOL NUMBER,
XOPQOBJINTCOL NUMBER,
XXMLINTCOL    NUMBER,
LOGMNRDERIVEDFLAGS NUMBER,
/* Following fields added in 12.2 */
COLLID      NUMBER,
COLLINTCOL#  NUMBER,
ACDRRESCOL# NUMBER
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$COL_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$COL_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$GSBA_GG_REC" AS OBJECT
(
LOGMNR_UID NUMBER,
NAME           VARCHAR2(384),
VALUE          VARCHAR2(4000),
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$GSBA_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$GSBA_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$KEY_GG_REC" as object
(
LOGMNR_UID NUMBER,
KEY# NUMBER,                   /* index obj# or con# */
KEY_FLAGS NUMBER,              /* index or constraint */
KEY_NAME VARCHAR2(384),        /* index name or constraint name */
INDEX_OWNER# NUMBER,
INDEX_OWNERNAME VARCHAR2(384),
COLNAME VARCHAR2(384),
INTCOL# NUMBER,
which number,
KEY_ORDER VARCHAR2(10),              /* asc or desc */
KEYCOL_FLAGS NUMBER,           /* Column properties such as is_null */
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$KEY_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$KEY_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$SEQ_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
NAME VARCHAR2(384),
OWNER# NUMBER,
OWNERNAME VARCHAR2(384),
FLAGS NUMBER,
MD_TAB_SEQCACHE NUMBER,
MD_TAB_SEQINCREMENTBY NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$SEQ_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$SEQ_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$TAB_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
BASEOBJV# NUMBER,
MD_TAB_USERID NUMBER,                /* owner# */
MD_TAB_COLCOUNT NUMBER,              /* user column count */
MD_TAB_TOTAL_COL_NUM NUMBER,         /* kernal column count */
MD_TAB_LOG_GROUP_EXISTS NUMBER,      /* Any log group exists for this table */
MD_TAB_IOT VARCHAR2(3) ,             /* 'YES'/'NO' IS IOT? */
MD_TAB_IOT_OVERFLOW VARCHAR2(3) ,    /* 'YES'/'NO' IOT with overflow ? */
MD_TAB_PARTITION  VARCHAR2(3) ,      /* 'YES'/'NO' is partitioned ? */
MD_TAB_SUBPARTITION VARCHAR2(3) ,    /* 'YES'/'NO' is sub partitioned? */
MD_TAB_XMLTYPETABLE VARCHAR2(3) ,    /* 'YES'/'NO' is xmltype table? */
MD_TAB_OBJECTID NUMBER,              /* object id if table object */
MD_TAB_OWNER VARCHAR2(384),     /* owner name */
MD_TAB_NAME VARCHAR2(384),      /* table name */
MD_TAB_OBJTYPE VARCHAR2(384),   /* Object type name */
MD_TAB_SCN NUMBER,                   /* COMMIT_SCN of this table version */
TAB_FLAGS NUMBER,
TRIGFLAG NUMBER,
OBJ_FLAGS NUMBER,
PROPERTY NUMBER,
PARTTYPE NUMBER,
SUBPARTTYPE NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
LVLCNT NUMBER,
LVL1OBJ# NUMBER,
LVL2OBJ# NUMBER,
LVL1TYPE# NUMBER,
LVL2TYPE# NUMBER,
LVL1NAME  VARCHAR2(384),
LVL2NAME  VARCHAR2(384),
INTCOLS   NUMBER,
ASSOC#    NUMBER,
XIDUSN    NUMBER,
XIDSLT    NUMBER,
XIDSQN    NUMBER,
DROP_SCN  NUMBER,
FLAGS     NUMBER,
LOGMNR_SPARE1   NUMBER,
LOGMNR_SPARE2   NUMBER,
LOGMNR_SPARE3   VARCHAR2(1000),
LOGMNR_SPARE4   DATE,
LOGMNR_SPARE5   NUMBER,
LOGMNR_SPARE6   NUMBER,
LOGMNR_SPARE7   NUMBER,
LOGMNR_SPARE8   NUMBER,
LOGMNR_SPARE9   NUMBER,
UNSUPPORTEDCOLS  NUMBER,
COMPLEXTYPECOLS  NUMBER,
NTPARENTOBJNUM   NUMBER,
NTPARENTOBJVERSION NUMBER,
NTPARENTINTCOLNUM  NUMBER,
LOGMNRTLOFLAGS    NUMBER,
LOGMNRMCV VARCHAR2(30),
/* Following fields added in 12.2 */
ACDRFLAGS        NUMBER,                                    /* automatic CDR */
ACDRTSOBJ#       NUMBER,                                    /* automatic CDR */
ACDRROWTSINTCOL# NUMBER                                     /* automatic CDR */
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$TAB_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$TAB_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$USER_GG_REC" AS OBJECT
(
LOGMNR_UID     NUMBER,
USERNAME       VARCHAR2(384),
USERID         NUMBER,
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$USER_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$USER_GG_REC;

/
--------------------------------------------------------
--  DDL for Sequence BOM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."BOM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CH_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CH_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CNI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CNI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence COMPANY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."COMPANY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence COSTING_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."COSTING_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence COUNTRY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."COUNTRY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 261 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CPC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CPC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CURR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CURR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CUSTM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CUSTM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CUSTOM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CUSTOM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CUST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CUST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CUS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."CUS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DBI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."DBI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."DN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence HSCODE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."HSCODE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence HS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."HS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IBT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."IBT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."IC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."INS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence INV_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."INV_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IRM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."IRM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ITEM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ITEM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ITM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ITM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_DIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_DIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_UIDS$"  MINVALUE 100 MAXVALUE 99999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 301 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence OB_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."OB_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence OPE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."OPE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence OPN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."OPN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence OP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."OP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PF_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PF_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PRI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PRI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PRO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PRO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PUR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PUR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 201 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PV_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."PV_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."RES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REV_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REV_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ROLLING_EVENT_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ROLLING_EVENT_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RPF_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."RPF_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."RS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RVI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."RVI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence RV_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."RV_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SCS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SCS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SIS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SIS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SSI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SSI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence STI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."STI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence STU_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."STU_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SUPPLIER_PK
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SUPPLIER_PK"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SUPP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SUPP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SVI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SVI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SV_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SV_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."TC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence UNIT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."UNIT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence UR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."UR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AQ$_INTERNET_AGENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AQ$_INTERNET_AGENTS" SHARING=METADATA 
   (	"AGENT_NAME" VARCHAR2(512 BYTE), 
	"PROTOCOL" NUMBER(*,0), 
	"SPARE1" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AQ$_INTERNET_AGENT_PRIVS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" SHARING=METADATA 
   (	"AGENT_NAME" VARCHAR2(512 BYTE), 
	"DB_USERNAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AQ$_KEY_SHARD_MAP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AQ$_KEY_SHARD_MAP" SHARING=METADATA 
   (	"QUEUE" NUMBER, 
	"KEY" VARCHAR2(128 BYTE), 
	"SHARD" NUMBER, 
	"DELAY_SHARD" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AQ$_QUEUES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AQ$_QUEUES" SHARING=METADATA 
   (	"OID" RAW(16), 
	"EVENTID" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"TABLE_OBJNO" NUMBER, 
	"USAGE" NUMBER, 
	"ENABLE_FLAG" NUMBER, 
	"MAX_RETRIES" NUMBER, 
	"RETRY_DELAY" NUMBER, 
	"PROPERTIES" NUMBER, 
	"RET_TIME" NUMBER, 
	"QUEUE_COMMENT" VARCHAR2(2000 BYTE), 
	"SUBSCRIBERS" "SYS"."AQ$_SUBSCRIBERS" , 
	"MEMORY_THRESHOLD" NUMBER, 
	"SERVICE_NAME" VARCHAR2(64 BYTE), 
	"NETWORK_NAME" VARCHAR2(256 BYTE), 
	"SUB_OID" RAW(16), 
	"SHARDED" NUMBER, 
	"BASE_QUEUE" NUMBER DEFAULT 0
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AQ$_QUEUE_TABLES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AQ$_QUEUE_TABLES" SHARING=METADATA 
   (	"SCHEMA" VARCHAR2(128 BYTE), 
	"NAME" VARCHAR2(128 BYTE), 
	"UDATA_TYPE" NUMBER, 
	"OBJNO" NUMBER, 
	"FLAGS" NUMBER, 
	"SORT_COLS" NUMBER, 
	"TIMEZONE" VARCHAR2(64 BYTE), 
	"TABLE_COMMENT" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AQ$_SCHEDULES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AQ$_SCHEDULES" SHARING=METADATA 
   (	"OID" RAW(16), 
	"DESTINATION" VARCHAR2(390 BYTE), 
	"START_TIME" DATE, 
	"DURATION" VARCHAR2(8 BYTE), 
	"NEXT_TIME" VARCHAR2(128 BYTE), 
	"LATENCY" VARCHAR2(8 BYTE), 
	"LAST_TIME" DATE, 
	"JOBNO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOM_VERSION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOM_VERSION" 
   (	"ID" NUMBER(10,0), 
	"BOM_ID" NUMBER(10,0), 
	"REMARKS" VARCHAR2(255 BYTE), 
	"SALES_PRICE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMPANY_SETTINGS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."COMPANY_SETTINGS" 
   (	"ID" NUMBER(10,0), 
	"COMPANY_NAME" VARCHAR2(255 BYTE), 
	"SITE_SHORT_NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE), 
	"STREET" VARCHAR2(255 BYTE), 
	"CITY_ID" NUMBER(10,0) DEFAULT NULL, 
	"STATE_ID" NUMBER(10,0) DEFAULT NULL, 
	"ZIP_CODE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"COUNTRY_ID" NUMBER(10,0), 
	"TIN" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"DEFAULT_LANGUAGE" VARCHAR2(255 BYTE), 
	"DEFAULT_CURRENCY" VARCHAR2(255 BYTE), 
	"LOGINPAGE_IMAGE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"BANK_NAME" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"AC_NO" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"IFS_CODE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"BIN" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"INVOICE_IMAGE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"BUSINESS_NATURE" VARCHAR2(255 BYTE), 
	"BUSINESS_ECONOMICS" VARCHAR2(255 BYTE), 
	"SUBMISSION_PERSION" VARCHAR2(255 BYTE), 
	"DESIGNATION_PERSION" VARCHAR2(255 BYTE), 
	"DESIGNATION_PHONE" VARCHAR2(255 BYTE), 
	"DESIGNATION_IMAGE" VARCHAR2(255 BYTE), 
	"LAWYER_NID" VARCHAR2(255 BYTE), 
	"COMPANY_VAT_TYPE" VARCHAR2(255 BYTE), 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"DESIGNATION_EMAIL" VARCHAR2(255 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COSTING
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."COSTING" 
   (	"ID" NUMBER(10,0), 
	"COSTING_NAME" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"COSTING_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT 0, 
	"DELETE_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"UPDATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."COUNTRIES" 
   (	"ID" NUMBER(10,0), 
	"SORTNAME" VARCHAR2(3 BYTE), 
	"COUNTRY_NAME" VARCHAR2(150 BYTE), 
	"PHONECODE" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CPC_CODE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CPC_CODE" 
   (	"ID" NUMBER(10,0), 
	"CPC_DESCRIPTION" VARCHAR2(155 BYTE), 
	"CREATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CREDIT_NOTE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CREDIT_NOTE" 
   (	"ID" NUMBER(10,0), 
	"CREDIT_NOTE_NO" VARCHAR2(255 BYTE), 
	"CREDIT_NOTE_TYPE" NUMBER(10,0) DEFAULT NULL, 
	"CN_ISSUE_DATE" DATE DEFAULT NULL, 
	"SALES_ID" NUMBER(10,0), 
	"CUSTOMER_ID" NUMBER(10,0), 
	"VICHLE_INFO" VARCHAR2(255 BYTE), 
	"TOTAL_C_AMOUNT" NUMBER(20,0) DEFAULT 0.00, 
	"TOTAL_C_VAT" NUMBER(20,0) DEFAULT 0.00, 
	"TOTAL_C_SD" NUMBER(20,0) DEFAULT 0.00, 
	"NOTE" VARCHAR2(255 BYTE) DEFAULT '', 
	"CREATED_AT" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CREDIT_NOTE_ITEM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CREDIT_NOTE_ITEM" 
   (	"ID" NUMBER(10,0), 
	"CREDIT_NOTE_ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0) DEFAULT 0, 
	"ITEM_NAME" VARCHAR2(255 BYTE), 
	"QTY" NUMBER(10,0), 
	"RATE" NUMBER(20,0) DEFAULT 0.00, 
	"S_AMOUNT" NUMBER(20,0) DEFAULT 0.00, 
	"S_VAT_RATE" NUMBER(10,0), 
	"S_VAT" NUMBER(20,0) DEFAULT 0.00, 
	"S_SD" NUMBER(10,0), 
	"RETURN_QTY" NUMBER(10,0), 
	"RETURN_AMOUNT" NUMBER(20,0) DEFAULT 0.00, 
	"RETURN_VAT" NUMBER(20,0) DEFAULT 0.00, 
	"RETURN_SD" NUMBER(20,0) DEFAULT 0.00, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"ENTRY_DATE" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CURRENCY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CURRENCY" 
   (	"ID" NUMBER(10,0), 
	"CURRENCY_NAME" VARCHAR2(100 BYTE), 
	"SYMBOL" VARCHAR2(255 BYTE), 
	"STATUS" NUMBER(3,0) DEFAULT 0, 
	"DELETE_DATE" DATE DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"UPDATED_AT" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CUSTOMERS" 
   (	"ID" NUMBER(10,0), 
	"CUSTOMER_NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"COUNTRY_ID" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"CUSTOMER_TYPE" VARCHAR2(100 BYTE), 
	"C_ADDRESS" VARCHAR2(255 BYTE), 
	"SHIPPING_ADDRESS" VARCHAR2(255 BYTE), 
	"SHIPPING_COUNTRY_ID" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"C_BIN_NID" VARCHAR2(250 BYTE), 
	"C_TIN" VARCHAR2(100 BYTE), 
	"STATUS" NUMBER(3,0) DEFAULT 0, 
	"DELETE_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"UPDATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CUSTOM_HOUSE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CUSTOM_HOUSE" 
   (	"ID" NUMBER(10,0), 
	"HOUSE_NAME" VARCHAR2(255 BYTE), 
	"HOUSE_CODE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"ADDRESS" VARCHAR2(255 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEBIT_NOTE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DEBIT_NOTE" 
   (	"ID" NUMBER(10,0), 
	"DEBIT_NOTE_NO" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"DEBIT_NOTE_TYPE" NUMBER(10,0) DEFAULT NULL, 
	"DN_ISSUE_DATE" DATE DEFAULT NULL, 
	"PURCHASE_ID" NUMBER(10,0), 
	"SUPPLIER_ID" NUMBER(10,0), 
	"VICHLE_INFO" VARCHAR2(255 BYTE), 
	"TOTAL_D_AMOUNT" NUMBER(20,0) DEFAULT 0.00, 
	"TOTAL_D_VAT" NUMBER(20,0) DEFAULT 0.00, 
	"TOTAL_D_SD" NUMBER(20,0) DEFAULT 0.00, 
	"NOTE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEBIT_NOTE_ITEM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DEBIT_NOTE_ITEM" 
   (	"ID" NUMBER(10,0), 
	"DEBIT_NOTE_ID" NUMBER(10,0), 
	"ITEM_NAME" VARCHAR2(50 BYTE) DEFAULT '', 
	"ITEM_ID" NUMBER(10,0) DEFAULT 0, 
	"QTY" NUMBER(10,0), 
	"RATE" NUMBER(20,0) DEFAULT 0.00, 
	"P_AMOUNT" NUMBER(20,0) DEFAULT 0.00, 
	"P_VATE_RATE" NUMBER(10,0), 
	"P_VAT" NUMBER(20,0) DEFAULT 0.00, 
	"P_SD" NUMBER(10,0), 
	"RETURN_QTY" NUMBER(10,0), 
	"RETURN_AMOUNT" NUMBER(20,0) DEFAULT 0.00, 
	"RETURN_VAT" NUMBER(20,0) DEFAULT 0.00, 
	"RETURN_SD" NUMBER(20,0) DEFAULT 0.00, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"ENTRY_DATE" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HELP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HELP" SHARING=METADATA 
   (	"TOPIC" VARCHAR2(50 BYTE), 
	"SEQ" NUMBER, 
	"INFO" VARCHAR2(80 BYTE)
   ) PCTFREE 0 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 49152 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  GRANT SELECT ON "SYSTEM"."HELP" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table HS_CODE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."HS_CODE" 
   (	"ID" NUMBER(10,0), 
	"HS_CODE" VARCHAR2(16 BYTE) DEFAULT NULL, 
	"DESCRIPTION" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"CD" NUMBER(20,0) DEFAULT NULL, 
	"SD" NUMBER(20,0) DEFAULT NULL, 
	"VAT" NUMBER(20,0) DEFAULT NULL, 
	"AIT" NUMBER(20,0) DEFAULT NULL, 
	"RD" NUMBER(20,0) DEFAULT NULL, 
	"AT" NUMBER(20,0) DEFAULT NULL, 
	"TTI" NUMBER(20,0) DEFAULT NULL, 
	"SCHEDULE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"YEAR_START" DATE DEFAULT NULL, 
	"YEAR_END" DATE DEFAULT NULL, 
	"CALCULATE_YEAR" VARCHAR2(4 BYTE) DEFAULT '2021'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INVENTORY_STOCK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."INVENTORY_STOCK" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0), 
	"PURCHASE_ID" NUMBER(10,0) DEFAULT NULL, 
	"PRODUCTION_ID" NUMBER(10,0) DEFAULT NULL, 
	"SALES_ID" NUMBER(10,0) DEFAULT NULL, 
	"SC_TRANSFER_ID" NUMBER(10,0) DEFAULT NULL, 
	"DEBITNOTE_ID" NUMBER(10,0) DEFAULT NULL, 
	"CREDITNOTE_ID" NUMBER(10,0) DEFAULT NULL, 
	"DAMAGE_ID" NUMBER(10,0) DEFAULT NULL, 
	"UNUSED_ID" NUMBER(10,0) DEFAULT NULL, 
	"OPENING_STOCK_ID" NUMBER(10,0) DEFAULT NULL, 
	"SALES_OPENING_ID" NUMBER(10,0) DEFAULT NULL, 
	"PREV_STOCK" NUMBER(20,0) DEFAULT NULL, 
	"QTY" NUMBER(20,0), 
	"CURRENT_STOCK" NUMBER(20,0), 
	"ACTION" VARCHAR2(255 BYTE), 
	"U_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INVOICE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."INVOICE" 
   (	"ID" NUMBER(10,0), 
	"INVOICE_NO" VARCHAR2(20 BYTE) DEFAULT NULL, 
	"SALES_ID" NUMBER(10,0) DEFAULT NULL, 
	"SC_SALES_ID" NUMBER(10,0) DEFAULT NULL, 
	"SALES_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"INVOICE_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ITEMS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ITEMS" 
   (	"ID" NUMBER(10,0), 
	"ITEM_NAME" VARCHAR2(255 BYTE), 
	"ITEM_TYPE" VARCHAR2(255 BYTE), 
	"HS_CODE" VARCHAR2(255 BYTE), 
	"HS_CODE_ID" NUMBER(10,0) DEFAULT NULL, 
	"CALCULATE_YEAR" VARCHAR2(4 BYTE), 
	"UNIT_ID" NUMBER(10,0) DEFAULT NULL, 
	"STOCK_STATUS" NUMBER(10,0) DEFAULT 1, 
	"STATUS" NUMBER(3,0) DEFAULT 0, 
	"USER_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ITEM_BOM_TABLE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ITEM_BOM_TABLE" 
   (	"ID" NUMBER(10,0), 
	"ITEM_SKU" VARCHAR2(255 BYTE) DEFAULT 'SKU-909', 
	"BOM_NO" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"SUBMISSION_DATE" DATE DEFAULT NULL, 
	"EFFECTIVE_DATE" DATE DEFAULT NULL, 
	"ITEM_VAT" NUMBER DEFAULT NULL, 
	"PRODUCT_CODE" VARCHAR2(200 BYTE) DEFAULT NULL, 
	"ITEM_ID" NUMBER(10,0), 
	"UNIT_ID" NUMBER(10,0) DEFAULT NULL, 
	"ITEM_DESCRIPTION" VARCHAR2(500 BYTE) DEFAULT NULL, 
	"REMARKS" VARCHAR2(255 BYTE), 
	"REFERENCE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"WEIGHT" NUMBER DEFAULT NULL, 
	"SALES_PRICE" NUMBER DEFAULT NULL, 
	"HS_CODE_ID" NUMBER(10,0) DEFAULT NULL, 
	"SERVICE_CODE" VARCHAR2(200 BYTE) DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT 2, 
	"DELETE_STATUS" NUMBER(3,0) DEFAULT 0, 
	"DELETE_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"MRP_TYPE" NUMBER(10,0) DEFAULT 0, 
	"BOM_TYPE" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ITEM_COSTING
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ITEM_COSTING" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0), 
	"BOM_ID" NUMBER(10,0) DEFAULT NULL, 
	"COSTING_ID" NUMBER(10,0) DEFAULT NULL, 
	"COST_AMOUNT" NUMBER(20,0), 
	"C_DATE" DATE DEFAULT NULL, 
	"U_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ITEM_RAW_MATERIALS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ITEM_RAW_MATERIALS" 
   (	"ID" NUMBER(10,0), 
	"BOM_ID" NUMBER(10,0), 
	"MATERIAL_ID" NUMBER(10,0), 
	"MATERIAL_WASTAGE" NUMBER(10,0) DEFAULT NULL, 
	"UNIT_ADD" NUMBER(10,0) DEFAULT 0, 
	"MATERIAL_QTY" NUMBER(20,0) DEFAULT NULL, 
	"MATERIAL_PRICE" NUMBER(20,0) DEFAULT NULL, 
	"WASTAGE_QTY" NUMBER(20,0) DEFAULT NULL, 
	"WASTAGE_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"MATERIAL_RATE" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"C_DATE" DATE DEFAULT NULL, 
	"U_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOG" 
   (	"ID" NUMBER(10,0), 
	"LOG_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"MSG" VARCHAR2(200 BYTE) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_CONCOL_GG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"CON#" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"INTCOL#" NUMBER, 
	"POS#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_CON_GG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_CON_GG" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"CON#" NUMBER, 
	"NAME" VARCHAR2(384 BYTE), 
	"COMMIT_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"FLAGS" NUMBER, 
	"INDEXOBJ#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(4000 BYTE), 
	"SPARE5" VARCHAR2(4000 BYTE), 
	"SPARE6" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_DBNAME_UID_MAP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_DBNAME_UID_MAP" SHARING=METADATA 
   (	"GLOBAL_NAME" VARCHAR2(384 BYTE), 
	"LOGMNR_UID" NUMBER, 
	"FLAGS" NUMBER, 
	"PDB_NAME" VARCHAR2(384 BYTE), 
	"LOGMNR_MDH" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_GSBA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_GSBA" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"AS_OF_SCN" NUMBER, 
	"FDO_LENGTH" NUMBER, 
	"FDO_VALUE" RAW(255), 
	"CHARSETID" NUMBER, 
	"NCHARSETID" NUMBER, 
	"DBTIMEZONE_LEN" NUMBER, 
	"DBTIMEZONE_VALUE" VARCHAR2(192 BYTE), 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"DB_GLOBAL_NAME" VARCHAR2(384 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_GSII
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_GSII" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"INDTYPE#" NUMBER, 
	"DROP_SCN" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_GTCS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_GTCS" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"OBJV#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"COLNAME" VARCHAR2(384 BYTE), 
	"TYPE#" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION" NUMBER, 
	"SCALE" NUMBER, 
	"INTERVAL_LEADING_PRECISION" NUMBER, 
	"INTERVAL_TRAILING_PRECISION" NUMBER, 
	"PROPERTY" NUMBER, 
	"TOID" RAW(16), 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"TYPENAME" VARCHAR2(384 BYTE), 
	"FQCOLNAME" VARCHAR2(4000 BYTE), 
	"NUMINTCOLS" NUMBER, 
	"NUMATTRS" NUMBER, 
	"ADTORDER" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"COL#" NUMBER, 
	"XTYPESCHEMANAME" VARCHAR2(384 BYTE), 
	"XTYPENAME" VARCHAR2(4000 BYTE), 
	"XFQCOLNAME" VARCHAR2(4000 BYTE), 
	"XTOPINTCOL" NUMBER, 
	"XREFFEDTABLEOBJN" NUMBER, 
	"XREFFEDTABLEOBJV" NUMBER, 
	"XCOLTYPEFLAGS" NUMBER, 
	"XOPQTYPETYPE" NUMBER, 
	"XOPQTYPEFLAGS" NUMBER, 
	"XOPQLOBINTCOL" NUMBER, 
	"XOPQOBJINTCOL" NUMBER, 
	"XXMLINTCOL" NUMBER, 
	"EAOWNER#" NUMBER, 
	"EAMKEYID" VARCHAR2(192 BYTE), 
	"EAENCALG" NUMBER, 
	"EAINTALG" NUMBER, 
	"EACOLKLC" RAW(2000), 
	"EAKLCLEN" NUMBER, 
	"EAFLAGS" NUMBER, 
	"LOGMNRDERIVEDFLAGS" NUMBER, 
	"COLLID" NUMBER, 
	"COLLINTCOL#" NUMBER, 
	"ACDRRESCOL#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_GTLO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_GTLO" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"KEYOBJ#" NUMBER, 
	"LVLCNT" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"LVL1OBJ#" NUMBER, 
	"LVL2OBJ#" NUMBER, 
	"LVL0TYPE#" NUMBER, 
	"LVL1TYPE#" NUMBER, 
	"LVL2TYPE#" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(384 BYTE), 
	"LVL0NAME" VARCHAR2(384 BYTE), 
	"LVL1NAME" VARCHAR2(384 BYTE), 
	"LVL2NAME" VARCHAR2(384 BYTE), 
	"INTCOLS" NUMBER, 
	"COLS" NUMBER, 
	"KERNELCOLS" NUMBER, 
	"TAB_FLAGS" NUMBER, 
	"TRIGFLAG" NUMBER, 
	"ASSOC#" NUMBER, 
	"OBJ_FLAGS" NUMBER, 
	"TS#" NUMBER, 
	"TSNAME" VARCHAR2(90 BYTE), 
	"PROPERTY" NUMBER, 
	"START_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"FLAGS" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"PARTTYPE" NUMBER, 
	"SUBPARTTYPE" NUMBER, 
	"UNSUPPORTEDCOLS" NUMBER, 
	"COMPLEXTYPECOLS" NUMBER, 
	"NTPARENTOBJNUM" NUMBER, 
	"NTPARENTOBJVERSION" NUMBER, 
	"NTPARENTINTCOLNUM" NUMBER, 
	"LOGMNRTLOFLAGS" NUMBER, 
	"LOGMNRMCV" VARCHAR2(30 BYTE), 
	"ACDRFLAGS" NUMBER, 
	"ACDRTSOBJ#" NUMBER, 
	"ACDRROWTSINTCOL#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_INDCOL_GG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_INDCOL_GG" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"INTCOL#" NUMBER, 
	"POS#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_IND_GG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_IND_GG" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"NAME" VARCHAR2(384 BYTE), 
	"COMMIT_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"FLAGS" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(384 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(4000 BYTE), 
	"SPARE5" VARCHAR2(4000 BYTE), 
	"SPARE6" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_SEQ_GG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_SEQ_GG" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"SEQ_FLAGS" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(384 BYTE), 
	"OBJNAME" VARCHAR2(384 BYTE), 
	"SEQCACHE" NUMBER, 
	"SEQINC" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_SHARD_TS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_SHARD_TS" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"TABLESPACE_NAME" VARCHAR2(90 BYTE), 
	"CHUNK_NUMBER" NUMBER, 
	"START_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_TS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_TS" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"TS#" NUMBER(22,0), 
	"NAME" VARCHAR2(90 BYTE), 
	"START_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRC_TSPART
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRC_TSPART" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"TS#" NUMBER, 
	"START_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRGGC_GTCS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRGGC_GTCS" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"OBJ#" NUMBER, 
	"OBJV#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"COLNAME" VARCHAR2(384 BYTE), 
	"TYPE#" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION" NUMBER, 
	"SCALE" NUMBER, 
	"INTERVAL_LEADING_PRECISION" NUMBER, 
	"INTERVAL_TRAILING_PRECISION" NUMBER, 
	"PROPERTY" NUMBER, 
	"TOID" RAW(16), 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"TYPENAME" VARCHAR2(384 BYTE), 
	"FQCOLNAME" VARCHAR2(4000 BYTE), 
	"NUMINTCOLS" NUMBER, 
	"NUMATTRS" NUMBER, 
	"ADTORDER" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"COL#" NUMBER, 
	"XTYPESCHEMANAME" VARCHAR2(384 BYTE), 
	"XTYPENAME" VARCHAR2(4000 BYTE), 
	"XFQCOLNAME" VARCHAR2(4000 BYTE), 
	"XTOPINTCOL" NUMBER, 
	"XREFFEDTABLEOBJN" NUMBER, 
	"XREFFEDTABLEOBJV" NUMBER, 
	"XCOLTYPEFLAGS" NUMBER, 
	"XOPQTYPETYPE" NUMBER, 
	"XOPQTYPEFLAGS" NUMBER, 
	"XOPQLOBINTCOL" NUMBER, 
	"XOPQOBJINTCOL" NUMBER, 
	"XXMLINTCOL" NUMBER, 
	"EAOWNER#" NUMBER, 
	"EAMKEYID" VARCHAR2(192 BYTE), 
	"EAENCALG" NUMBER, 
	"EAINTALG" NUMBER, 
	"EACOLKLC" RAW(2000), 
	"EAKLCLEN" NUMBER, 
	"EAFLAGS" NUMBER, 
	"LOGMNRDERIVEDFLAGS" NUMBER, 
	"COLLID" NUMBER, 
	"COLLINTCOL#" NUMBER, 
	"ACDRRESCOL#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOGMNRGGC_GTLO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRGGC_GTLO" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"KEYOBJ#" NUMBER, 
	"LVLCNT" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"LVL1OBJ#" NUMBER, 
	"LVL2OBJ#" NUMBER, 
	"LVL0TYPE#" NUMBER, 
	"LVL1TYPE#" NUMBER, 
	"LVL2TYPE#" NUMBER, 
	"OWNER#" NUMBER, 
	"OWNERNAME" VARCHAR2(384 BYTE), 
	"LVL0NAME" VARCHAR2(384 BYTE), 
	"LVL1NAME" VARCHAR2(384 BYTE), 
	"LVL2NAME" VARCHAR2(384 BYTE), 
	"INTCOLS" NUMBER, 
	"COLS" NUMBER, 
	"KERNELCOLS" NUMBER, 
	"TAB_FLAGS" NUMBER, 
	"TRIGFLAG" NUMBER, 
	"ASSOC#" NUMBER, 
	"OBJ_FLAGS" NUMBER, 
	"TS#" NUMBER, 
	"TSNAME" VARCHAR2(90 BYTE), 
	"PROPERTY" NUMBER, 
	"START_SCN" NUMBER, 
	"DROP_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"FLAGS" NUMBER, 
	"LOGMNR_SPARE1" NUMBER, 
	"LOGMNR_SPARE2" NUMBER, 
	"LOGMNR_SPARE3" VARCHAR2(1000 BYTE), 
	"LOGMNR_SPARE4" DATE, 
	"LOGMNR_SPARE5" NUMBER, 
	"LOGMNR_SPARE6" NUMBER, 
	"LOGMNR_SPARE7" NUMBER, 
	"LOGMNR_SPARE8" NUMBER, 
	"LOGMNR_SPARE9" NUMBER, 
	"PARTTYPE" NUMBER, 
	"SUBPARTTYPE" NUMBER, 
	"UNSUPPORTEDCOLS" NUMBER, 
	"COMPLEXTYPECOLS" NUMBER, 
	"NTPARENTOBJNUM" NUMBER, 
	"NTPARENTOBJVERSION" NUMBER, 
	"NTPARENTINTCOLNUM" NUMBER, 
	"LOGMNRTLOFLAGS" NUMBER, 
	"LOGMNRMCV" VARCHAR2(30 BYTE), 
	"ACDRFLAGS" NUMBER, 
	"ACDRTSOBJ#" NUMBER, 
	"ACDRROWTSINTCOL#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOGMNRP_CTAS_PART_MAP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"BASEOBJ#" NUMBER, 
	"BASEOBJV#" NUMBER, 
	"KEYOBJ#" NUMBER, 
	"PART#" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(1000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNRT_MDDL$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."LOGMNRT_MDDL$" SHARING=METADATA 
   (	"SOURCE_OBJ#" NUMBER, 
	"SOURCE_ROWID" ROWID, 
	"DEST_ROWID" ROWID
   ) ON COMMIT DELETE ROWS ;
--------------------------------------------------------
--  DDL for Table LOGMNR_AGE_SPILL$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_AGE_SPILL$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"CHUNK" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"OFFSET" NUMBER, 
	"SPILL_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"PDBID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("SPILL_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_ATTRCOL$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_ATTRCOL$" SHARING=METADATA 
   (	"INTCOL#" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_ATTRIBUTE$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$" SHARING=METADATA 
   (	"VERSION#" NUMBER, 
	"NAME" VARCHAR2(384 BYTE), 
	"ATTRIBUTE#" NUMBER, 
	"ATTR_TOID" RAW(16), 
	"ATTR_VERSION#" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"PROPERTIES" NUMBER, 
	"CHARSETID" NUMBER, 
	"CHARSETFORM" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION#" NUMBER, 
	"SCALE" NUMBER, 
	"EXTERNNAME" VARCHAR2(4000 BYTE), 
	"XFLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SETTER" NUMBER, 
	"GETTER" NUMBER, 
	"TOID" RAW(16), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_CCOL$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_CCOL$" SHARING=METADATA 
   (	"CON#" NUMBER, 
	"OBJ#" NUMBER, 
	"COL#" NUMBER, 
	"POS#" NUMBER, 
	"INTCOL#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_CDEF$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_CDEF$" SHARING=METADATA 
   (	"CON#" NUMBER, 
	"COLS" NUMBER, 
	"TYPE#" NUMBER, 
	"ROBJ#" NUMBER, 
	"RCON#" NUMBER, 
	"ENABLED" NUMBER, 
	"DEFER" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_COL$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_COL$" SHARING=METADATA 
   (	"COL#" NUMBER(22,0), 
	"SEGCOL#" NUMBER(22,0), 
	"NAME" VARCHAR2(384 BYTE), 
	"TYPE#" NUMBER(22,0), 
	"LENGTH" NUMBER(22,0), 
	"PRECISION#" NUMBER(22,0), 
	"SCALE" NUMBER(22,0), 
	"NULL$" NUMBER(22,0), 
	"INTCOL#" NUMBER(22,0), 
	"PROPERTY" NUMBER(22,0), 
	"CHARSETID" NUMBER(22,0), 
	"CHARSETFORM" NUMBER(22,0), 
	"SPARE1" NUMBER(22,0), 
	"SPARE2" NUMBER(22,0), 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"COLLID" NUMBER, 
	"COLLINTCOL#" NUMBER, 
	"ACDRRESCOL#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_COLTYPE$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_COLTYPE$" SHARING=METADATA 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"TOID" RAW(16), 
	"VERSION#" NUMBER, 
	"PACKED" NUMBER, 
	"INTCOLS" NUMBER, 
	"INTCOL#S" RAW(2000), 
	"FLAGS" NUMBER, 
	"TYPIDCOL#" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_CON$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_CON$" SHARING=METADATA 
   (	"OWNER#" NUMBER, 
	"NAME" VARCHAR2(384 BYTE), 
	"CON#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_CONTAINER$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_CONTAINER$" SHARING=METADATA 
   (	"OBJ#" NUMBER, 
	"CON_ID#" NUMBER, 
	"DBID" NUMBER, 
	"CON_UID" NUMBER, 
	"CREATE_SCNWRP" NUMBER, 
	"CREATE_SCNBAS" NUMBER, 
	"FLAGS" NUMBER, 
	"STATUS" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"VSN" NUMBER, 
	"FED_ROOT_CON_ID#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_DICTIONARY$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_DICTIONARY$" SHARING=METADATA 
   (	"DB_NAME" VARCHAR2(27 BYTE), 
	"DB_ID" NUMBER(20,0), 
	"DB_CREATED" VARCHAR2(20 BYTE), 
	"DB_DICT_CREATED" VARCHAR2(20 BYTE), 
	"DB_DICT_SCN" NUMBER(22,0), 
	"DB_THREAD_MAP" RAW(8), 
	"DB_TXN_SCNBAS" NUMBER(22,0), 
	"DB_TXN_SCNWRP" NUMBER(22,0), 
	"DB_RESETLOGS_CHANGE#" NUMBER(22,0), 
	"DB_RESETLOGS_TIME" VARCHAR2(20 BYTE), 
	"DB_VERSION_TIME" VARCHAR2(20 BYTE), 
	"DB_REDO_TYPE_ID" VARCHAR2(8 BYTE), 
	"DB_REDO_RELEASE" VARCHAR2(60 BYTE), 
	"DB_CHARACTER_SET" VARCHAR2(192 BYTE), 
	"DB_VERSION" VARCHAR2(240 BYTE), 
	"DB_STATUS" VARCHAR2(240 BYTE), 
	"DB_GLOBAL_NAME" VARCHAR2(384 BYTE), 
	"DB_DICT_MAXOBJECTS" NUMBER(22,0), 
	"DB_DICT_OBJECTCOUNT" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"PDB_NAME" VARCHAR2(384 BYTE), 
	"PDB_ID" NUMBER, 
	"PDB_UID" NUMBER, 
	"PDB_DBID" NUMBER, 
	"PDB_GUID" RAW(16), 
	"PDB_CREATE_SCN" NUMBER, 
	"PDB_COUNT" NUMBER, 
	"PDB_GLOBAL_NAME" VARCHAR2(384 BYTE), 
	"FED_ROOT_CON_ID#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_DICTSTATE$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_DICTSTATE$" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER, 
	"END_SCNBAS" NUMBER, 
	"END_SCNWRP" NUMBER, 
	"REDO_THREAD" NUMBER, 
	"RBASQN" NUMBER, 
	"RBABLK" NUMBER, 
	"RBABYTE" NUMBER, 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_DID$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_DID$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"LOGMNR_DID" NUMBER, 
	"FLAGS" NUMBER DEFAULT 0, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" TIMESTAMP (6)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_ENC$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_ENC$" SHARING=METADATA 
   (	"OBJ#" NUMBER, 
	"OWNER#" NUMBER, 
	"ENCALG" NUMBER, 
	"INTALG" NUMBER, 
	"COLKLC" RAW(2000), 
	"KLCLEN" NUMBER, 
	"FLAG" NUMBER, 
	"MKEYID" VARCHAR2(192 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_ERROR$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_ERROR$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"TIME_OF_ERROR" DATE, 
	"CODE" NUMBER, 
	"MESSAGE" VARCHAR2(4000 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(4000 BYTE), 
	"SPARE5" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_FILTER$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_FILTER$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"FILTER_TYPE" VARCHAR2(30 BYTE), 
	"ATTR1" NUMBER, 
	"ATTR2" NUMBER, 
	"ATTR3" NUMBER, 
	"ATTR4" NUMBER, 
	"ATTR5" NUMBER, 
	"ATTR6" NUMBER, 
	"FILTER_SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" DATE, 
	"ATTR7" VARCHAR2(128 BYTE), 
	"ATTR8" VARCHAR2(128 BYTE), 
	"ATTR9" VARCHAR2(128 BYTE), 
	"ATTR10" VARCHAR2(128 BYTE), 
	"ATTR11" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_GLOBAL$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_GLOBAL$" SHARING=METADATA 
   (	"HIGH_RECID_FOREIGN" NUMBER, 
	"HIGH_RECID_DELETED" NUMBER, 
	"LOCAL_RESET_SCN" NUMBER, 
	"LOCAL_RESET_TIMESTAMP" NUMBER, 
	"VERSION_TIMESTAMP" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" VARCHAR2(2000 BYTE), 
	"SPARE5" DATE, 
	"SESSION#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_TAB_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."LOGMNR_GT_TAB_INCLUDE$" SHARING=METADATA 
   (	"SCHEMA_NAME" VARCHAR2(390 BYTE), 
	"TABLE_NAME" VARCHAR2(390 BYTE), 
	"PDB_NAME" VARCHAR2(390 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_USER_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."LOGMNR_GT_USER_INCLUDE$" SHARING=METADATA 
   (	"USER_NAME" VARCHAR2(390 BYTE), 
	"USER_TYPE" NUMBER, 
	"PDB_NAME" VARCHAR2(390 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
--------------------------------------------------------
--  DDL for Table LOGMNR_GT_XID_INCLUDE$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."LOGMNR_GT_XID_INCLUDE$" SHARING=METADATA 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"PDBID" NUMBER, 
	"PDB_NAME" VARCHAR2(390 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
--------------------------------------------------------
--  DDL for Table LOGMNR_ICOL$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_ICOL$" SHARING=METADATA 
   (	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"COL#" NUMBER, 
	"POS#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_IDNSEQ$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_IDNSEQ$" SHARING=METADATA 
   (	"OBJ#" NUMBER, 
	"INTCOL#" NUMBER, 
	"SEQOBJ#" NUMBER, 
	"STARTWITH" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_IND$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_IND$" SHARING=METADATA 
   (	"BO#" NUMBER(22,0), 
	"COLS" NUMBER(22,0), 
	"TYPE#" NUMBER(22,0), 
	"FLAGS" NUMBER, 
	"PROPERTY" NUMBER, 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_INDCOMPART$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_INDCOMPART$" SHARING=METADATA 
   (	"OBJ#" NUMBER, 
	"DATAOBJ#" NUMBER, 
	"BO#" NUMBER, 
	"PART#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_INDPART$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_INDPART$" SHARING=METADATA 
   (	"OBJ#" NUMBER, 
	"BO#" NUMBER, 
	"PART#" NUMBER, 
	"TS#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_INDSUBPART$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_INDSUBPART$" SHARING=METADATA 
   (	"OBJ#" NUMBER(22,0), 
	"DATAOBJ#" NUMBER(22,0), 
	"POBJ#" NUMBER(22,0), 
	"SUBPART#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_KOPM$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_KOPM$" SHARING=METADATA 
   (	"LENGTH" NUMBER, 
	"METADATA" RAW(255), 
	"NAME" VARCHAR2(384 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_LOB$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_LOB$" SHARING=METADATA 
   (	"OBJ#" NUMBER, 
	"INTCOL#" NUMBER, 
	"COL#" NUMBER, 
	"LOBJ#" NUMBER, 
	"CHUNK" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_LOBFRAG$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_LOBFRAG$" SHARING=METADATA 
   (	"FRAGOBJ#" NUMBER, 
	"PARENTOBJ#" NUMBER, 
	"TABFRAGOBJ#" NUMBER, 
	"INDFRAGOBJ#" NUMBER, 
	"FRAG#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_LOG$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_LOG$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"THREAD#" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"NEXT_CHANGE#" NUMBER, 
	"FIRST_TIME" DATE, 
	"NEXT_TIME" DATE, 
	"FILE_NAME" VARCHAR2(513 BYTE), 
	"STATUS" NUMBER, 
	"INFO" VARCHAR2(32 BYTE), 
	"TIMESTAMP" DATE, 
	"DICT_BEGIN" VARCHAR2(3 BYTE), 
	"DICT_END" VARCHAR2(3 BYTE), 
	"STATUS_INFO" VARCHAR2(32 BYTE), 
	"DB_ID" NUMBER, 
	"RESETLOGS_CHANGE#" NUMBER, 
	"RESET_TIMESTAMP" NUMBER, 
	"PREV_RESETLOGS_CHANGE#" NUMBER, 
	"PREV_RESET_TIMESTAMP" NUMBER, 
	"BLOCKS" NUMBER, 
	"BLOCK_SIZE" NUMBER, 
	"FLAGS" NUMBER, 
	"CONTENTS" NUMBER, 
	"RECID" NUMBER, 
	"RECSTAMP" NUMBER, 
	"MARK_DELETE_TIMESTAMP" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_LOGMNR_BUILDLOG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" SHARING=METADATA 
   (	"BUILD_DATE" VARCHAR2(20 BYTE), 
	"DB_TXN_SCNBAS" NUMBER, 
	"DB_TXN_SCNWRP" NUMBER, 
	"CURRENT_BUILD_STATE" NUMBER, 
	"COMPLETION_STATUS" NUMBER, 
	"MARKED_LOG_FILE_LOW_SCN" NUMBER, 
	"INITIAL_XID" VARCHAR2(22 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"CDB_XID" VARCHAR2(22 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(4000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_NTAB$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_NTAB$" SHARING=METADATA 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"NTAB#" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_OBJ$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_OBJ$" SHARING=METADATA 
   (	"OBJV#" NUMBER(22,0), 
	"OWNER#" NUMBER(22,0), 
	"NAME" VARCHAR2(384 BYTE), 
	"NAMESPACE" NUMBER(22,0), 
	"SUBNAME" VARCHAR2(384 BYTE), 
	"TYPE#" NUMBER(22,0), 
	"OID$" RAW(16), 
	"REMOTEOWNER" VARCHAR2(384 BYTE), 
	"LINKNAME" VARCHAR2(384 BYTE), 
	"FLAGS" NUMBER(22,0), 
	"SPARE3" NUMBER(22,0), 
	"STIME" DATE, 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_OPQTYPE$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_OPQTYPE$" SHARING=METADATA 
   (	"INTCOL#" NUMBER, 
	"TYPE" NUMBER, 
	"FLAGS" NUMBER, 
	"LOBCOL" NUMBER, 
	"OBJCOL" NUMBER, 
	"EXTRACOL" NUMBER, 
	"SCHEMAOID" RAW(16), 
	"ELEMNUM" NUMBER, 
	"SCHEMAURL" VARCHAR2(4000 BYTE), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_PARAMETER$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_PARAMETER$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"NAME" VARCHAR2(384 BYTE), 
	"VALUE" VARCHAR2(2000 BYTE), 
	"TYPE" NUMBER, 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_PARTOBJ$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_PARTOBJ$" SHARING=METADATA 
   (	"PARTTYPE" NUMBER, 
	"PARTCNT" NUMBER, 
	"PARTKEYCOLS" NUMBER, 
	"FLAGS" NUMBER, 
	"DEFTS#" NUMBER, 
	"DEFPCTFREE" NUMBER, 
	"DEFPCTUSED" NUMBER, 
	"DEFPCTTHRES" NUMBER, 
	"DEFINITRANS" NUMBER, 
	"DEFMAXTRANS" NUMBER, 
	"DEFTINIEXTS" NUMBER, 
	"DEFEXTSIZE" NUMBER, 
	"DEFMINEXTS" NUMBER, 
	"DEFMAXEXTS" NUMBER, 
	"DEFEXTPCT" NUMBER, 
	"DEFLISTS" NUMBER, 
	"DEFGROUPS" NUMBER, 
	"DEFLOGGING" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"DEFINCLCOL" NUMBER, 
	"PARAMETERS" VARCHAR2(3000 BYTE), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_PDB_INFO$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_PDB_INFO$" SHARING=METADATA 
   (	"LOGMNR_DID" NUMBER, 
	"LOGMNR_MDH" NUMBER, 
	"PDB_NAME" VARCHAR2(384 BYTE), 
	"PDB_ID" NUMBER, 
	"PDB_UID" NUMBER, 
	"PLUGIN_SCN" NUMBER, 
	"UNPLUG_SCN" NUMBER, 
	"FLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" TIMESTAMP (6), 
	"PDB_GLOBAL_NAME" VARCHAR2(384 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_PROCESSED_LOG$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_PROCESSED_LOG$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"THREAD#" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"NEXT_CHANGE#" NUMBER, 
	"FIRST_TIME" DATE, 
	"NEXT_TIME" DATE, 
	"FILE_NAME" VARCHAR2(513 BYTE), 
	"STATUS" NUMBER, 
	"INFO" VARCHAR2(32 BYTE), 
	"TIMESTAMP" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_PROFILE_PLSQL_STATS$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_PROFILE_PLSQL_STATS$" SHARING=METADATA 
   (	"PKGOWNER" VARCHAR2(384 BYTE), 
	"PKGNAME" VARCHAR2(384 BYTE), 
	"NAME" NUMBER, 
	"PRAGMAOP" NUMBER, 
	"OPNUM" NUMBER, 
	"TLSBYUNSUPPOPNUM" NUMBER, 
	"OGGUNSUPPOPNUM" NUMBER, 
	"REDOSIZE" NUMBER, 
	"REDORATE" NUMBER, 
	"SPARE1" VARCHAR2(384 BYTE), 
	"SPARE2" VARCHAR2(384 BYTE), 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SPARE6" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_PROFILE_TABLE_STATS$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_PROFILE_TABLE_STATS$" SHARING=METADATA 
   (	"OWNER" VARCHAR2(384 BYTE), 
	"NAME" VARCHAR2(384 BYTE), 
	"OBJID" NUMBER, 
	"OPNUM" NUMBER, 
	"TLSBYUNSUPPOPNUM" NUMBER, 
	"OGGUNSUPPOPNUM" NUMBER, 
	"OGGFETCHOPNUM" NUMBER, 
	"OGGPLSQLOPNUM" NUMBER, 
	"PARTNUM" NUMBER, 
	"INSERTNUM" NUMBER, 
	"UPDATENUM" NUMBER, 
	"DELETENUM" NUMBER, 
	"DDLNUM" NUMBER, 
	"PROPERTY1" NUMBER, 
	"PROPERTY2" NUMBER, 
	"PARTITIONATTR" NUMBER, 
	"REDOSIZE" NUMBER, 
	"MAXLOBSIZE" NUMBER, 
	"REDORATE" NUMBER, 
	"SPARE1" VARCHAR2(384 BYTE), 
	"SPARE2" VARCHAR2(384 BYTE), 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SPARE6" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_PROPS$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_PROPS$" SHARING=METADATA 
   (	"VALUE$" VARCHAR2(4000 BYTE), 
	"COMMENT$" VARCHAR2(4000 BYTE), 
	"NAME" VARCHAR2(384 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_REFCON$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_REFCON$" SHARING=METADATA 
   (	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"REFTYP" NUMBER, 
	"STABID" RAW(16), 
	"EXPCTOID" RAW(16), 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_RESTART_CKPT$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_RESTART_CKPT$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"VALID" NUMBER, 
	"CKPT_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SESSION_NUM" NUMBER, 
	"SERIAL_NUM" NUMBER, 
	"CKPT_INFO" BLOB, 
	"FLAG" NUMBER, 
	"OFFSET" NUMBER, 
	"CLIENT_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"PDBID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("CKPT_INFO") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("CLIENT_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_RESTART_CKPT_TXINFO$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"SESSION_NUM" NUMBER, 
	"SERIAL_NUM" NUMBER, 
	"FLAG" NUMBER, 
	"START_SCN" NUMBER, 
	"EFFECTIVE_SCN" NUMBER, 
	"OFFSET" NUMBER, 
	"TX_DATA" BLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("TX_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_SEED$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_SEED$" SHARING=METADATA 
   (	"SEED_VERSION" NUMBER(22,0), 
	"GATHER_VERSION" NUMBER(22,0), 
	"SCHEMANAME" VARCHAR2(384 BYTE), 
	"OBJ#" NUMBER, 
	"OBJV#" NUMBER(22,0), 
	"TABLE_NAME" VARCHAR2(384 BYTE), 
	"COL_NAME" VARCHAR2(384 BYTE), 
	"COL#" NUMBER, 
	"INTCOL#" NUMBER, 
	"SEGCOL#" NUMBER, 
	"TYPE#" NUMBER, 
	"LENGTH" NUMBER, 
	"PRECISION#" NUMBER, 
	"SCALE" NUMBER, 
	"NULL$" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_SESSION$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"CLIENT#" NUMBER, 
	"SESSION_NAME" VARCHAR2(128 BYTE), 
	"DB_ID" NUMBER, 
	"RESETLOGS_CHANGE#" NUMBER, 
	"SESSION_ATTR" NUMBER, 
	"SESSION_ATTR_VERBOSE" VARCHAR2(400 BYTE), 
	"START_SCN" NUMBER, 
	"END_SCN" NUMBER, 
	"SPILL_SCN" NUMBER, 
	"SPILL_TIME" DATE, 
	"OLDEST_SCN" NUMBER, 
	"RESUME_SCN" NUMBER, 
	"GLOBAL_DB_NAME" VARCHAR2(384 BYTE) DEFAULT null, 
	"RESET_TIMESTAMP" NUMBER, 
	"BRANCH_SCN" NUMBER, 
	"VERSION" VARCHAR2(64 BYTE), 
	"REDO_COMPAT" VARCHAR2(20 BYTE), 
	"SPARE1" NUMBER, 
	"PURGE_SCN" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SPARE6" DATE, 
	"SPARE7" VARCHAR2(1000 BYTE), 
	"SPARE8" VARCHAR2(1000 BYTE), 
	"SPARE9" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION_ACTIONS$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" SHARING=METADATA 
   (	"FLAGSRUNTIME" NUMBER DEFAULT 0, 
	"DROPSCN" NUMBER, 
	"MODIFYTIME" TIMESTAMP (6), 
	"DISPATCHTIME" TIMESTAMP (6), 
	"DROPTIME" TIMESTAMP (6), 
	"LCRCOUNT" NUMBER DEFAULT 0, 
	"ACTIONNAME" VARCHAR2(30 BYTE), 
	"LOGMNRSESSION#" NUMBER, 
	"PROCESSROLE#" NUMBER, 
	"ACTIONTYPE#" NUMBER, 
	"FLAGSDEFINETIME" NUMBER, 
	"CREATETIME" TIMESTAMP (6), 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"THREAD#" NUMBER, 
	"STARTSCN" NUMBER, 
	"STARTSUBSCN" NUMBER, 
	"ENDSCN" NUMBER, 
	"ENDSUBSCN" NUMBER, 
	"RBASQN" NUMBER, 
	"RBABLK" NUMBER, 
	"RBABYTE" NUMBER, 
	"SESSION#" NUMBER, 
	"OBJ#" NUMBER, 
	"ATTR1" NUMBER, 
	"ATTR2" NUMBER, 
	"ATTR3" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" TIMESTAMP (6), 
	"SPARE4" VARCHAR2(2000 BYTE), 
	"PDBID" NUMBER, 
	"PDB_NAME" VARCHAR2(390 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_SESSION_EVOLVE$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_SESSION_EVOLVE$" SHARING=METADATA 
   (	"BRANCH_LEVEL" NUMBER, 
	"SESSION#" NUMBER, 
	"DB_ID" NUMBER, 
	"RESET_SCN" NUMBER, 
	"RESET_TIMESTAMP" NUMBER, 
	"PREV_RESET_SCN" NUMBER, 
	"PREV_RESET_TIMESTAMP" NUMBER, 
	"STATUS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_SHARD_TS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_SHARD_TS" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER, 
	"TABLESPACE_NAME" VARCHAR2(90 BYTE), 
	"CHUNK_NUMBER" NUMBER, 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_SPILL$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_SPILL$" SHARING=METADATA 
   (	"SESSION#" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"CHUNK" NUMBER, 
	"STARTIDX" NUMBER, 
	"ENDIDX" NUMBER, 
	"FLAG" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"SPILL_DATA" BLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"PDBID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("SPILL_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384 PCTVERSION 0
  CACHE 
  STORAGE(INITIAL 16384 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_SUBCOLTYPE$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" SHARING=METADATA 
   (	"INTCOL#" NUMBER, 
	"TOID" RAW(16), 
	"VERSION#" NUMBER, 
	"INTCOLS" NUMBER, 
	"INTCOL#S" RAW(2000), 
	"FLAGS" NUMBER, 
	"SYNOBJ#" NUMBER, 
	"OBJ#" NUMBER, 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_TAB$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_TAB$" SHARING=METADATA 
   (	"TS#" NUMBER(22,0), 
	"COLS" NUMBER(22,0), 
	"PROPERTY" NUMBER, 
	"INTCOLS" NUMBER(22,0), 
	"KERNELCOLS" NUMBER(22,0), 
	"BOBJ#" NUMBER(22,0), 
	"TRIGFLAG" NUMBER(22,0), 
	"FLAGS" NUMBER(22,0), 
	"OBJ#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"ACDRFLAGS" NUMBER, 
	"ACDRTSOBJ#" NUMBER, 
	"ACDRROWTSINTCOL#" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_TABCOMPART$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_TABCOMPART$" SHARING=METADATA 
   (	"OBJ#" NUMBER(22,0), 
	"BO#" NUMBER(22,0), 
	"PART#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_TABPART$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_TABPART$" SHARING=METADATA 
   (	"OBJ#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"PART#" NUMBER, 
	"BO#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_TABSUBPART$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_TABSUBPART$" SHARING=METADATA 
   (	"OBJ#" NUMBER(22,0), 
	"DATAOBJ#" NUMBER(22,0), 
	"POBJ#" NUMBER(22,0), 
	"SUBPART#" NUMBER(22,0), 
	"TS#" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_TS$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_TS$" SHARING=METADATA 
   (	"TS#" NUMBER(22,0), 
	"NAME" VARCHAR2(90 BYTE), 
	"OWNER#" NUMBER(22,0), 
	"BLOCKSIZE" NUMBER(22,0), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0), 
	"START_SCNBAS" NUMBER, 
	"START_SCNWRP" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_TYPE$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_TYPE$" SHARING=METADATA 
   (	"VERSION#" NUMBER, 
	"VERSION" VARCHAR2(384 BYTE), 
	"TVOID" RAW(16), 
	"TYPECODE" NUMBER, 
	"PROPERTIES" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"METHODS" NUMBER, 
	"HIDDENMETHODS" NUMBER, 
	"SUPERTYPES" NUMBER, 
	"SUBTYPES" NUMBER, 
	"EXTERNTYPE" NUMBER, 
	"EXTERNNAME" VARCHAR2(4000 BYTE), 
	"HELPERCLASSNAME" VARCHAR2(4000 BYTE), 
	"LOCAL_ATTRS" NUMBER, 
	"LOCAL_METHODS" NUMBER, 
	"TYPEID" RAW(16), 
	"ROOTTOID" RAW(16), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SUPERTOID" RAW(16), 
	"HASHCODE" RAW(17), 
	"TOID" RAW(16), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGMNR_UID$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_UID$" SHARING=METADATA 
   (	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_DID" NUMBER, 
	"LOGMNR_MDH" NUMBER, 
	"PDB_NAME" VARCHAR2(384 BYTE), 
	"PDB_ID" NUMBER, 
	"PDB_UID" NUMBER, 
	"START_SCN" NUMBER, 
	"END_SCN" NUMBER, 
	"FLAGS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(4000 BYTE), 
	"SPARE4" TIMESTAMP (6)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGMNR_USER$
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGMNR_USER$" SHARING=METADATA 
   (	"USER#" NUMBER(22,0), 
	"NAME" VARCHAR2(384 BYTE), 
	"LOGMNR_UID" NUMBER(22,0), 
	"LOGMNR_FLAGS" NUMBER(22,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("LOGMNR_UID") 
 (PARTITION "P_LESSTHAN100"  VALUES LESS THAN (100) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$APPLY_MILESTONE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" SHARING=METADATA 
   (	"SESSION_ID" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"COMMIT_TIME" DATE, 
	"SYNCH_SCN" NUMBER, 
	"EPOCH" NUMBER, 
	"PROCESSED_SCN" NUMBER, 
	"PROCESSED_TIME" DATE, 
	"FETCHLWM_SCN" NUMBER DEFAULT (0), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE), 
	"FLAGS" NUMBER, 
	"LWM_UPD_TIME" DATE, 
	"SPARE4" NUMBER, 
	"SPARE5" NUMBER, 
	"SPARE6" NUMBER, 
	"SPARE7" DATE, 
	"PTO_RECOVERY_SCN" NUMBER, 
	"PTO_RECOVERY_INCARNATION" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$APPLY_PROGRESS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$APPLY_PROGRESS" SHARING=METADATA 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"COMMIT_TIME" DATE, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
  PARTITION BY RANGE ("COMMIT_SCN") 
 (PARTITION "P0"  VALUES LESS THAN (0) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$EDS_TABLES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$EDS_TABLES" SHARING=METADATA 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"SHADOW_TABLE_NAME" VARCHAR2(128 BYTE), 
	"BASE_TRIGGER_NAME" VARCHAR2(128 BYTE), 
	"SHADOW_TRIGGER_NAME" VARCHAR2(128 BYTE), 
	"DBLINK" VARCHAR2(255 BYTE), 
	"FLAGS" NUMBER, 
	"STATE" VARCHAR2(255 BYTE), 
	"OBJV" NUMBER, 
	"OBJ#" NUMBER, 
	"SOBJ#" NUMBER, 
	"CTIME" TIMESTAMP (6), 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(255 BYTE), 
	"SPARE3" NUMBER, 
	"MVIEW_NAME" VARCHAR2(128 BYTE), 
	"MVIEW_LOG_NAME" VARCHAR2(128 BYTE), 
	"MVIEW_TRIGGER_NAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$EVENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$EVENTS" SHARING=METADATA 
   (	"EVENT_TIME" TIMESTAMP (6), 
	"CURRENT_SCN" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"ERRVAL" NUMBER, 
	"EVENT" VARCHAR2(2000 BYTE), 
	"FULL_EVENT" CLOB, 
	"ERROR" VARCHAR2(2000 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE), 
	"CON_NAME" VARCHAR2(30 BYTE), 
	"CON_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("FULL_EVENT") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 16384
  CACHE  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 16384 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$FLASHBACK_SCN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$FLASHBACK_SCN" SHARING=METADATA 
   (	"PRIMARY_SCN" NUMBER, 
	"PRIMARY_TIME" DATE, 
	"STANDBY_SCN" NUMBER, 
	"STANDBY_TIME" DATE, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$HISTORY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$HISTORY" SHARING=METADATA 
   (	"STREAM_SEQUENCE#" NUMBER, 
	"LMNR_SID" NUMBER, 
	"DBID" NUMBER, 
	"FIRST_CHANGE#" NUMBER, 
	"LAST_CHANGE#" NUMBER, 
	"SOURCE" NUMBER, 
	"STATUS" NUMBER, 
	"FIRST_TIME" DATE, 
	"LAST_TIME" DATE, 
	"DGNAME" VARCHAR2(255 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$PARAMETERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$PARAMETERS" SHARING=METADATA 
   (	"NAME" VARCHAR2(30 BYTE), 
	"VALUE" VARCHAR2(2000 BYTE), 
	"TYPE" NUMBER, 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  GRANT SELECT ON "SYSTEM"."LOGSTDBY$PARAMETERS" TO "SYSBACKUP";
  GRANT DELETE ON "SYSTEM"."LOGSTDBY$PARAMETERS" TO "SYSBACKUP";
  GRANT INSERT ON "SYSTEM"."LOGSTDBY$PARAMETERS" TO "SYSBACKUP";
--------------------------------------------------------
--  DDL for Table LOGSTDBY$PLSQL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$PLSQL" SHARING=METADATA 
   (	"SESSION_ID" NUMBER, 
	"START_FINISH" NUMBER, 
	"CALL_TEXT" CLOB, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" 
 LOB ("CALL_TEXT") STORE AS SECUREFILE (
  TABLESPACE "SYSAUX" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SCN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$SCN" SHARING=METADATA 
   (	"OBJ#" NUMBER, 
	"OBJNAME" VARCHAR2(4000 BYTE), 
	"SCHEMA" VARCHAR2(128 BYTE), 
	"TYPE" VARCHAR2(20 BYTE), 
	"SCN" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$SKIP" SHARING=METADATA 
   (	"ERROR" NUMBER, 
	"STATEMENT_OPT" VARCHAR2(128 BYTE), 
	"SCHEMA" VARCHAR2(128 BYTE), 
	"NAME" VARCHAR2(261 BYTE), 
	"USE_LIKE" NUMBER, 
	"ESC" VARCHAR2(1 BYTE), 
	"PROC" VARCHAR2(392 BYTE), 
	"ACTIVE" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP_SUPPORT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" SHARING=METADATA 
   (	"ACTION" NUMBER, 
	"NAME" VARCHAR2(128 BYTE), 
	"NAME2" VARCHAR2(128 BYTE), 
	"NAME3" VARCHAR2(128 BYTE), 
	"NAME4" VARCHAR2(128 BYTE), 
	"NAME5" VARCHAR2(128 BYTE), 
	"REG" NUMBER(*,0), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table LOGSTDBY$SKIP_TRANSACTION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOGSTDBY$SKIP_TRANSACTION" SHARING=METADATA 
   (	"XIDUSN" NUMBER, 
	"XIDSLT" NUMBER, 
	"XIDSQN" NUMBER, 
	"ACTIVE" NUMBER, 
	"COMMIT_SCN" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(2000 BYTE), 
	"CON_NAME" VARCHAR2(384 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_AJG" SHARING=METADATA 
   (	"AJGID#" NUMBER, 
	"RUNID#" NUMBER, 
	"AJGDESLEN" NUMBER, 
	"AJGDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_AJG"  IS 'Anchor-join graph representation';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" SHARING=METADATA 
   (	"COLLECTIONID#" NUMBER, 
	"QUERYID#" NUMBER, 
	"OWNER" VARCHAR2(128 BYTE), 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"TABLE_TYPE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE"  IS 'Base tables refered by a query';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" SHARING=METADATA 
   (	"CLIQUEID#" NUMBER, 
	"RUNID#" NUMBER, 
	"CLIQUEDESLEN" NUMBER, 
	"CLIQUEDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER, 
	"BYTECOST" NUMBER, 
	"ROWSIZE" NUMBER, 
	"NUMROWS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE"  IS 'Table for storing canonical form of Clique queries';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" SHARING=METADATA 
   (	"SUMOBJN#" NUMBER, 
	"RUNID#" NUMBER, 
	"BYTECOST" NUMBER, 
	"FLAGS" NUMBER, 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE"  IS 'Summary management rewrite eligibility information';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_EXCEPTIONS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS" SHARING=METADATA 
   (	"RUNID#" NUMBER, 
	"OWNER" VARCHAR2(128 BYTE), 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"DIMENSION_NAME" VARCHAR2(128 BYTE), 
	"RELATIONSHIP" VARCHAR2(11 BYTE), 
	"BAD_ROWID" ROWID
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS"  IS 'Output table for dimension validations';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FILTER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_FILTER" SHARING=METADATA 
   (	"FILTERID#" NUMBER, 
	"SUBFILTERNUM#" NUMBER, 
	"SUBFILTERTYPE" NUMBER, 
	"STR_VALUE" VARCHAR2(1028 BYTE), 
	"NUM_VALUE1" NUMBER, 
	"NUM_VALUE2" NUMBER, 
	"DATE_VALUE1" DATE, 
	"DATE_VALUE2" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_FILTER"  IS 'Table for workload filter definition';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" SHARING=METADATA 
   (	"RUNID#" NUMBER, 
	"FILTERID#" NUMBER, 
	"SUBFILTERNUM#" NUMBER, 
	"SUBFILTERTYPE" NUMBER, 
	"STR_VALUE" VARCHAR2(1028 BYTE), 
	"NUM_VALUE1" NUMBER, 
	"NUM_VALUE2" NUMBER, 
	"DATE_VALUE1" DATE, 
	"DATE_VALUE2" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE"  IS 'Table for workload filter instance definition';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_FJG" SHARING=METADATA 
   (	"FJGID#" NUMBER, 
	"AJGID#" NUMBER, 
	"FJGDESLEN" NUMBER, 
	"FJGDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_FJG"  IS 'Representation for query join sub-graph not in AJG ';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_GC
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_GC" SHARING=METADATA 
   (	"GCID#" NUMBER, 
	"FJGID#" NUMBER, 
	"GCDESLEN" NUMBER, 
	"GCDES" LONG RAW, 
	"HASHVALUE" NUMBER, 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_GC"  IS 'Group-by columns of a query';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_INFO" SHARING=METADATA 
   (	"RUNID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TYPE" NUMBER, 
	"INFOLEN" NUMBER, 
	"INFO" LONG RAW, 
	"STATUS" NUMBER, 
	"FLAG" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_INFO"  IS 'Internal table for passing information from the SQL analyzer';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" SHARING=METADATA 
   (	"RUNID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TIMESTAMP" DATE, 
	"FLAGS" NUMBER, 
	"NUM" NUMBER, 
	"TEXT" LONG, 
	"TEXTLEN" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL"  IS 'Summary advisor journal table for debugging and information';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" SHARING=METADATA 
   (	"RUNID#" NUMBER, 
	"LEVELID#" NUMBER, 
	"DIMOBJ#" NUMBER, 
	"FLAGS" NUMBER, 
	"TBLOBJ#" NUMBER, 
	"COLUMNLIST" RAW(70), 
	"LEVELNAME" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_LEVEL"  IS 'Level definition';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_LOG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_LOG" SHARING=METADATA 
   (	"RUNID#" NUMBER, 
	"FILTERID#" NUMBER, 
	"RUN_BEGIN" DATE, 
	"RUN_END" DATE, 
	"RUN_TYPE" NUMBER, 
	"UNAME" VARCHAR2(128 BYTE), 
	"STATUS" NUMBER, 
	"MESSAGE" VARCHAR2(2000 BYTE), 
	"COMPLETED" NUMBER, 
	"TOTAL" NUMBER, 
	"ERROR_CODE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_LOG"  IS 'Log all calls to summary advisory functions';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" SHARING=METADATA 
   (	"RUNID#" NUMBER, 
	"OUTPUT_TYPE" NUMBER, 
	"RANK#" NUMBER, 
	"ACTION_TYPE" VARCHAR2(6 BYTE), 
	"SUMMARY_OWNER" VARCHAR2(128 BYTE), 
	"SUMMARY_NAME" VARCHAR2(128 BYTE), 
	"GROUP_BY_COLUMNS" VARCHAR2(2000 BYTE), 
	"WHERE_CLAUSE" VARCHAR2(2000 BYTE), 
	"FROM_CLAUSE" VARCHAR2(2000 BYTE), 
	"MEASURES_LIST" VARCHAR2(2000 BYTE), 
	"FACT_TABLES" VARCHAR2(1000 BYTE), 
	"GROUPING_LEVELS" VARCHAR2(2000 BYTE), 
	"QUERYLEN" NUMBER, 
	"QUERY_TEXT" LONG, 
	"STORAGE_IN_BYTES" NUMBER, 
	"PCT_PERFORMANCE_GAIN" NUMBER, 
	"FREQUENCY" NUMBER, 
	"CUMULATIVE_BENEFIT" NUMBER, 
	"BENEFIT_TO_COST_RATIO" NUMBER, 
	"VALIDATED" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT"  IS 'Output table for summary recommendations and evaluations';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PARAMETERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" SHARING=METADATA 
   (	"PARAMETER_NAME" VARCHAR2(128 BYTE), 
	"PARAMETER_TYPE" NUMBER, 
	"STRING_VALUE" VARCHAR2(30 BYTE), 
	"DATE_VALUE" DATE, 
	"NUMERICAL_VALUE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS"  IS 'Summary advisor tuning parameters';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PLAN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_PLAN" SHARING=METADATA 
   (	"STATEMENT_ID" VARCHAR2(30 BYTE), 
	"TIMESTAMP" DATE, 
	"REMARKS" VARCHAR2(80 BYTE), 
	"OPERATION" VARCHAR2(30 BYTE), 
	"OPTIONS" VARCHAR2(255 BYTE), 
	"OBJECT_NODE" VARCHAR2(128 BYTE), 
	"OBJECT_OWNER" VARCHAR2(128 BYTE), 
	"OBJECT_NAME" VARCHAR2(128 BYTE), 
	"OBJECT_INSTANCE" NUMBER(*,0), 
	"OBJECT_TYPE" VARCHAR2(30 BYTE), 
	"OPTIMIZER" VARCHAR2(255 BYTE), 
	"SEARCH_COLUMNS" NUMBER, 
	"ID" NUMBER(*,0), 
	"PARENT_ID" NUMBER(*,0), 
	"POSITION" NUMBER(*,0), 
	"COST" NUMBER(*,0), 
	"CARDINALITY" NUMBER(*,0), 
	"BYTES" NUMBER(*,0), 
	"OTHER_TAG" VARCHAR2(255 BYTE), 
	"PARTITION_START" VARCHAR2(255 BYTE), 
	"PARTITION_STOP" VARCHAR2(255 BYTE), 
	"PARTITION_ID" NUMBER(*,0), 
	"OTHER" LONG, 
	"DISTRIBUTION" VARCHAR2(30 BYTE), 
	"CPU_COST" NUMBER(*,0), 
	"IO_COST" NUMBER(*,0), 
	"TEMP_SPACE" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_PLAN"  IS 'Private plan table for estimate_mview_size operations';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_PRETTY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_PRETTY" SHARING=METADATA 
   (	"QUERYID#" NUMBER, 
	"SQL_TEXT" LONG
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_PRETTY"  IS 'Table for sql parsing';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" SHARING=METADATA 
   (	"RUNID#" NUMBER, 
	"CLEVELID#" NUMBER, 
	"PLEVELID#" NUMBER, 
	"FLAGS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP"  IS 'Each row repesents either a functional dependency or join-key relationship';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_SQLDEPEND
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_SQLDEPEND" SHARING=METADATA 
   (	"COLLECTIONID#" NUMBER, 
	"INST_ID" NUMBER, 
	"FROM_ADDRESS" RAW(16), 
	"FROM_HASH" NUMBER, 
	"TO_OWNER" VARCHAR2(128 BYTE), 
	"TO_NAME" VARCHAR2(1000 BYTE), 
	"TO_TYPE" NUMBER, 
	"CARDINALITY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_SQLDEPEND"  IS 'Temporary table for workload collections';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_TEMP
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_TEMP" SHARING=METADATA 
   (	"ID#" NUMBER, 
	"SEQ#" NUMBER, 
	"TEXT" LONG
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_TEMP"  IS 'Table for temporary data';
--------------------------------------------------------
--  DDL for Table MVIEW$_ADV_WORKLOAD
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" SHARING=METADATA 
   (	"QUERYID#" NUMBER, 
	"COLLECTIONID#" NUMBER, 
	"COLLECTTIME" DATE, 
	"APPLICATION" VARCHAR2(128 BYTE), 
	"CARDINALITY" NUMBER, 
	"RESULTSIZE" NUMBER, 
	"UNAME" VARCHAR2(128 BYTE), 
	"QDATE" DATE, 
	"PRIORITY" NUMBER, 
	"EXEC_TIME" NUMBER, 
	"SQL_TEXT" LONG, 
	"SQL_TEXTLEN" NUMBER, 
	"SQL_HASH" NUMBER, 
	"SQL_ADDR" RAW(16), 
	"FREQUENCY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD"  IS 'Shared workload repository for DBA users of summary advisor';
--------------------------------------------------------
--  DDL for Table OL$
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"SQL_TEXT" LONG, 
	"TEXTLEN" NUMBER, 
	"SIGNATURE" RAW(16), 
	"HASH_VALUE" NUMBER, 
	"HASH_VALUE2" NUMBER, 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"VERSION" VARCHAR2(64 BYTE), 
	"CREATOR" VARCHAR2(128 BYTE), 
	"TIMESTAMP" DATE, 
	"FLAGS" NUMBER, 
	"HINTCOUNT" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" VARCHAR2(1000 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
  GRANT DELETE ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table OL$HINTS
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$HINTS" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"HINT#" NUMBER, 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"HINT_TYPE" NUMBER, 
	"HINT_TEXT" VARCHAR2(512 BYTE), 
	"STAGE#" NUMBER, 
	"NODE#" NUMBER, 
	"TABLE_NAME" VARCHAR2(128 BYTE), 
	"TABLE_TIN" NUMBER, 
	"TABLE_POS" NUMBER, 
	"REF_ID" NUMBER, 
	"USER_TABLE_NAME" VARCHAR2(260 BYTE), 
	"COST" FLOAT(126), 
	"CARDINALITY" FLOAT(126), 
	"BYTES" FLOAT(126), 
	"HINT_TEXTOFF" NUMBER, 
	"HINT_TEXTLEN" NUMBER, 
	"JOIN_PRED" VARCHAR2(2000 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"HINT_STRING" CLOB
   ) ON COMMIT PRESERVE ROWS 
 LOB ("HINT_STRING") STORE AS BASICFILE (
  ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE ) ;
  GRANT DELETE ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$HINTS" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$HINTS" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table OL$NODES
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "SYSTEM"."OL$NODES" SHARING=METADATA 
   (	"OL_NAME" VARCHAR2(128 BYTE), 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"NODE_ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"NODE_TYPE" NUMBER, 
	"NODE_TEXTLEN" NUMBER, 
	"NODE_TEXTOFF" NUMBER, 
	"NODE_NAME" VARCHAR2(64 BYTE)
   ) ON COMMIT PRESERVE ROWS ;
  GRANT DELETE ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT INSERT ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT SELECT ON "SYSTEM"."OL$NODES" TO PUBLIC;
  GRANT UPDATE ON "SYSTEM"."OL$NODES" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table OPENING_61
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."OPENING_61" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0), 
	"INVOICE_ID" VARCHAR2(200 BYTE) DEFAULT NULL, 
	"CLOSING_AMOUNT" NUMBER(10,0) DEFAULT NULL, 
	"CLOSING_QUANTITY" NUMBER(10,0) DEFAULT NULL, 
	"OPENING_RATE" NUMBER(20,0) DEFAULT NULL, 
	"CLOSING_DATE" DATE DEFAULT NULL, 
	"OPENING_DATE" DATE DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table OPENING_62
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."OPENING_62" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0) DEFAULT NULL, 
	"CLOSING_AMOUNT" NUMBER(10,0) DEFAULT NULL, 
	"CLOSING_QUANTITY" NUMBER(10,0) DEFAULT NULL, 
	"OPENING_RATE" NUMBER(10,0) DEFAULT NULL, 
	"CLOSING_DATE" DATE DEFAULT NULL, 
	"OPENING_DATE" DATE DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table OPENING_BALANCE_91
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."OPENING_BALANCE_91" 
   (	"ID" NUMBER(10,0), 
	"OPENING_VAT" NUMBER(20,0) DEFAULT NULL, 
	"OPENING_SD" NUMBER(20,0) DEFAULT NULL, 
	"CLOSING_DATE" DATE DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PAYBLE_MUSHAK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PAYBLE_MUSHAK" 
   (	"ID" NUMBER(10,0), 
	"PAY_AMOUNT" BINARY_DOUBLE, 
	"PAY_DATE" DATE, 
	"PAY_TYPE" VARCHAR2(255 BYTE) DEFAULT '0', 
	"BUSINESS_TYPE" NUMBER(3,0), 
	"CREATED_AT" TIMESTAMP (0) DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PAYBLE_VOUCHER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PAYBLE_VOUCHER" 
   (	"ID" NUMBER(10,0), 
	"PAYBLE_DESC" VARCHAR2(255 BYTE), 
	"CHALLAN_NO" VARCHAR2(255 BYTE), 
	"CHALLAN_DATE" DATE, 
	"EXECUTE_DATE" DATE, 
	"PAYBLE_AMOUNT" VARCHAR2(255 BYTE), 
	"VAT_AMOUNT" VARCHAR2(255 BYTE), 
	"BUSINESS_TYPE" NUMBER(3,0), 
	"USER_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PERMISSIONS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PERMISSIONS" 
   (	"ID" NUMBER(10,0), 
	"PERMISSION_NAME" VARCHAR2(255 BYTE), 
	"DISPLAY_NAME" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT 0, 
	"USER_ID" NUMBER(10,0), 
	"CREATED_AT" DATE DEFAULT NULL, 
	"UPDATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PERMISSION_ROLE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PERMISSION_ROLE" 
   (	"ID" NUMBER(10,0), 
	"PERMISSION_ID" NUMBER(10,0), 
	"USER_ROLE_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCTION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRODUCTION" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" VARCHAR2(255 BYTE), 
	"PRO_INVOICE_ID" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"ENTRY_DATE" DATE DEFAULT NULL, 
	"PROD_DATE" DATE DEFAULT NULL, 
	"PRO_QTY" NUMBER(10,0), 
	"NOTES" CLOB DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"CDATE" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("NOTES") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PRODUCTION_FINISHGOODS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRODUCTION_FINISHGOODS" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0) DEFAULT NULL, 
	"PRODUCTION_ID" NUMBER(10,0) DEFAULT NULL, 
	"PRODUCTION_QTY" NUMBER(10,0) DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"UPDATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCTION_ITEMS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRODUCTION_ITEMS" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0), 
	"PRODUCTION_ID" NUMBER(10,0), 
	"QTY" NUMBER(20,0) DEFAULT 0, 
	"TOTAL_PRO" NUMBER(20,0) DEFAULT NULL, 
	"WST_QTY" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_QTY_WST" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_PRO_QTY" NUMBER(20,0) DEFAULT NULL, 
	"PRODUCTION_DATE" DATE DEFAULT NULL, 
	"C_DATE" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PURCHASE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PURCHASE" 
   (	"ID" NUMBER(10,0), 
	"P_INVOICE_NO" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"PURCHASE_TYPE" NUMBER(10,0), 
	"PURCHASE_CATEGORY" NUMBER(3,0), 
	"SERVICE_CATEGORY" NUMBER(3,0) DEFAULT NULL, 
	"LC_DATE" DATE DEFAULT NULL, 
	"LC_NO" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"CHALAN_DATE" DATE DEFAULT NULL, 
	"TOTAL_VDS" NUMBER(20,0) DEFAULT NULL, 
	"GRAND_TOTAL" NUMBER(20,0), 
	"SUPPLIER_ID" NUMBER(10,0), 
	"TOTAL_TAX" NUMBER(20,0) DEFAULT NULL, 
	"VENDOR_INVOICE" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"ENTRY_DATE" DATE DEFAULT NULL, 
	"NOTES" VARCHAR2(200 BYTE) DEFAULT NULL, 
	"DELETE_STATUS" NUMBER(3,0) DEFAULT 0, 
	"DELETE_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"CUSTOM_HOUSE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"COUNTRY_ORIGIN" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"BOE_ITEM_NO" NUMBER(10,0) DEFAULT NULL, 
	"DATA_SOURCE" VARCHAR2(155 BYTE) DEFAULT NULL, 
	"CPC_CODE_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PURCHASE_ITEM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PURCHASE_ITEM" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0), 
	"PURCHASE_ID" NUMBER(10,0), 
	"QTY" NUMBER(20,0), 
	"BOE_ITEM_NO" NUMBER(10,0) DEFAULT NULL, 
	"HS_CODE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"HS_CODE_ID" NUMBER(10,0) DEFAULT NULL, 
	"SERVICE_CODE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"RATE" NUMBER(20,0), 
	"ITEM_TAX" NUMBER(20,0) DEFAULT NULL, 
	"TAX_AMOUNT" NUMBER(20,0), 
	"ITEM_CD" NUMBER(20,0) DEFAULT NULL, 
	"CD_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"ITEM_SD" NUMBER(20,0) DEFAULT NULL, 
	"SD_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"ITEM_RD" NUMBER(20,0) DEFAULT NULL, 
	"RD_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"ITEM_AT" NUMBER(20,0) DEFAULT NULL, 
	"ITEM_AIT" NUMBER(20,0) DEFAULT NULL, 
	"AT_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"AIT_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"ITEM_TTI" NUMBER(20,0) DEFAULT NULL, 
	"TTI_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"T_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"ACCESSAMOUNT" NUMBER(20,0), 
	"VATABLE_VALUE" NUMBER(20,0), 
	"VAT_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"PURCHASE_DATE" DATE DEFAULT NULL, 
	"ENTRY_DATE" DATE DEFAULT NULL, 
	"P_DATE" DATE DEFAULT NULL, 
	"VDS" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"REBATE" VARCHAR2(50 BYTE) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RECEIVABLE_VOUCHER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."RECEIVABLE_VOUCHER" 
   (	"ID" NUMBER(10,0), 
	"RECEIVABLE_DESC" VARCHAR2(255 BYTE), 
	"CHALLAN_NO" VARCHAR2(255 BYTE), 
	"CHALLAN_DATE" DATE, 
	"EXECUTE_DATE" DATE, 
	"RECEIVABLE_AMOUNT" VARCHAR2(255 BYTE), 
	"VAT_AMOUNT" VARCHAR2(255 BYTE), 
	"BUSINESS_TYPE" NUMBER(3,0), 
	"USER_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RECEIVE_VDS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."RECEIVE_VDS" 
   (	"ID" NUMBER(10,0), 
	"VDS_NO" VARCHAR2(255 BYTE), 
	"R_VDS_TYPE" NUMBER(10,0), 
	"ENTRY_DATE" DATE DEFAULT NULL, 
	"CUSTOMER_ID" NUMBER(10,0) DEFAULT 0, 
	"TOTAL_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_VAT" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_VDS" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_RECEIVE" NUMBER(20,0) DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RECEIVE_VDS_ITEM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."RECEIVE_VDS_ITEM" 
   (	"ID" NUMBER(10,0), 
	"VDS_ID" NUMBER(10,0) DEFAULT NULL, 
	"INVOICE_NO" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"INV_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"INV_DATE" DATE DEFAULT NULL, 
	"VAT_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"VDS_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"RECEIVE_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"BRANCH_NAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"BANK_NAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"ACCOUNT_CODE" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"DEPOSIT_SERIAL" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"ENTRY_DATE" DATE DEFAULT NULL, 
	"CUSTOMER_ID" NUMBER(10,0) DEFAULT NULL, 
	"DIPOSIT_DATE" DATE DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REDO_DB
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REDO_DB" SHARING=METADATA 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQNO_RCV_CUR" NUMBER, 
	"SEQNO_RCV_LO" NUMBER, 
	"SEQNO_RCV_HI" NUMBER, 
	"SEQNO_DONE_CUR" NUMBER, 
	"SEQNO_DONE_LO" NUMBER, 
	"SEQNO_DONE_HI" NUMBER, 
	"GAP_SEQNO" NUMBER, 
	"GAP_RET" NUMBER, 
	"GAP_DONE" NUMBER, 
	"APPLY_SEQNO" NUMBER, 
	"APPLY_DONE" NUMBER, 
	"PURGE_DONE" NUMBER, 
	"HAS_CHILD" NUMBER, 
	"ERROR1" NUMBER, 
	"STATUS" NUMBER, 
	"CREATE_DATE" DATE, 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"GAP_NEXT_SCN" NUMBER, 
	"GAP_NEXT_TIME" NUMBER, 
	"CURSCN_TIME" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"GAP_RET2" NUMBER, 
	"CURLOG" NUMBER, 
	"ENDIAN" NUMBER, 
	"ENQIDX" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"CURBLKNO" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"SPARE11" NUMBER, 
	"SPARE12" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table REDO_LOG
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REDO_LOG" SHARING=METADATA 
   (	"DBID" NUMBER, 
	"GLOBAL_DBNAME" VARCHAR2(129 BYTE), 
	"DBUNAME" VARCHAR2(32 BYTE), 
	"VERSION" VARCHAR2(32 BYTE), 
	"THREAD#" NUMBER, 
	"RESETLOGS_SCN_BAS" NUMBER, 
	"RESETLOGS_SCN_WRP" NUMBER, 
	"RESETLOGS_TIME" NUMBER, 
	"PRESETLOGS_SCN_BAS" NUMBER, 
	"PRESETLOGS_SCN_WRP" NUMBER, 
	"PRESETLOGS_TIME" NUMBER, 
	"SEQUENCE#" NUMBER, 
	"DUPID" NUMBER, 
	"STATUS1" NUMBER, 
	"STATUS2" NUMBER, 
	"CREATE_TIME" VARCHAR2(32 BYTE), 
	"CLOSE_TIME" VARCHAR2(32 BYTE), 
	"DONE_TIME" VARCHAR2(32 BYTE), 
	"FIRST_SCN_BAS" NUMBER, 
	"FIRST_SCN_WRP" NUMBER, 
	"FIRST_TIME" NUMBER, 
	"NEXT_SCN_BAS" NUMBER, 
	"NEXT_SCN_WRP" NUMBER, 
	"NEXT_TIME" NUMBER, 
	"FIRST_SCN" NUMBER, 
	"NEXT_SCN" NUMBER, 
	"RESETLOGS_SCN" NUMBER, 
	"BLOCKS" NUMBER, 
	"BLOCK_SIZE" NUMBER, 
	"OLD_BLOCKS" NUMBER, 
	"CREATE_DATE" DATE, 
	"ERROR1" NUMBER, 
	"ERROR2" NUMBER, 
	"FILENAME" VARCHAR2(513 BYTE), 
	"TS1" NUMBER, 
	"TS2" NUMBER, 
	"ENDIAN" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" NUMBER, 
	"SPARE4" NUMBER, 
	"SPARE5" DATE, 
	"SPARE6" VARCHAR2(65 BYTE), 
	"SPARE7" VARCHAR2(129 BYTE), 
	"TS3" NUMBER, 
	"PRESETLOGS_SCN" NUMBER, 
	"SPARE8" NUMBER, 
	"SPARE9" NUMBER, 
	"SPARE10" NUMBER, 
	"OLD_STATUS1" NUMBER, 
	"OLD_STATUS2" NUMBER, 
	"OLD_FILENAME" VARCHAR2(513 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table REPORT_61_SAVE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REPORT_61_SAVE" 
   (	"ID" NUMBER(10,0), 
	"ALL_DATA" CLOB DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"REPORT_DATE" DATE DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"ITEM_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("ALL_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table REPORT_62_SAVE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REPORT_62_SAVE" 
   (	"ID" NUMBER(10,0), 
	"REPORT_DATE" DATE DEFAULT NULL, 
	"ALL_DATA" CLOB DEFAULT NULL, 
	"USER_ID" NUMBER(10,0), 
	"CREATED_AT" DATE DEFAULT NULL, 
	"ITEM_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("ALL_DATA") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table REPORT_FINAL_91
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REPORT_FINAL_91" 
   (	"ID" NUMBER(10,0), 
	"PART_NO" NUMBER(10,0) DEFAULT 0, 
	"REPORT_DATE" TIMESTAMP (0), 
	"DATA" CLOB DEFAULT NULL, 
	"CDATE" TIMESTAMP (0) DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("DATA") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table ROLLING$CONNECTIONS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$CONNECTIONS" SHARING=METADATA 
   (	"SOURCE_RDBID" NUMBER, 
	"DEST_RDBID" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"SERVICE_NAME" VARCHAR2(256 BYTE), 
	"CONN_HANDLE" NUMBER, 
	"CONNECT_TIME" TIMESTAMP (6), 
	"SEND_TIME" TIMESTAMP (6), 
	"DISCONNECT_TIME" TIMESTAMP (6), 
	"UPDATE_TIME" TIMESTAMP (6), 
	"SOURCE_PID" NUMBER, 
	"DEST_PID" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROLLING$DATABASES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$DATABASES" SHARING=METADATA 
   (	"RDBID" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"ATTRIBUTES2" NUMBER, 
	"DBUN" VARCHAR2(128 BYTE), 
	"DBID" NUMBER, 
	"PROD_RSCN" NUMBER, 
	"PROD_RID" NUMBER, 
	"PROD_SCN" NUMBER, 
	"CONS_RSCN" NUMBER, 
	"CONS_RID" NUMBER, 
	"CONS_SCN" NUMBER, 
	"ENGINE_STATUS" NUMBER, 
	"VERSION" VARCHAR2(128 BYTE), 
	"REDO_SOURCE" NUMBER, 
	"UPDATE_TIME" TIMESTAMP (6), 
	"REVISION" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROLLING$DIRECTIVES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$DIRECTIVES" SHARING=METADATA 
   (	"DIRECTID" NUMBER, 
	"PHASE" NUMBER, 
	"TASKID" NUMBER, 
	"FEATURE" VARCHAR2(32 BYTE), 
	"DESCRIPTION" VARCHAR2(256 BYTE), 
	"TARGET" NUMBER, 
	"FLAGS" VARCHAR2(64 BYTE), 
	"OPCODE" NUMBER, 
	"P1" VARCHAR2(256 BYTE), 
	"P2" VARCHAR2(256 BYTE), 
	"P3" VARCHAR2(256 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(256 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROLLING$EVENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$EVENTS" SHARING=METADATA 
   (	"EVENTID" NUMBER, 
	"INSTID" NUMBER, 
	"REVISION" NUMBER, 
	"EVENT_TIME" TIMESTAMP (6), 
	"TYPE" VARCHAR2(16 BYTE), 
	"STATUS" NUMBER, 
	"MESSAGE" VARCHAR2(256 BYTE), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROLLING$PARAMETERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$PARAMETERS" SHARING=METADATA 
   (	"SCOPE" NUMBER, 
	"NAME" VARCHAR2(32 BYTE), 
	"ID" NUMBER, 
	"DESCRIP" VARCHAR2(256 BYTE), 
	"TYPE" NUMBER, 
	"DATATYPE" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"CURVAL" VARCHAR2(1024 BYTE), 
	"LSTVAL" VARCHAR2(1024 BYTE), 
	"DEFVAL" VARCHAR2(1024 BYTE), 
	"MINVAL" NUMBER, 
	"MAXVAL" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROLLING$PLAN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$PLAN" SHARING=METADATA 
   (	"INSTID" NUMBER, 
	"BATCHID" NUMBER, 
	"DIRECTID" NUMBER, 
	"TASKID" NUMBER, 
	"REVISION" NUMBER, 
	"PHASE" NUMBER, 
	"STATUS" NUMBER, 
	"PROGRESS" NUMBER, 
	"SOURCE" NUMBER, 
	"TARGET" NUMBER, 
	"RFLAGS" NUMBER, 
	"OPCODE" NUMBER, 
	"P1" VARCHAR2(256 BYTE), 
	"P2" VARCHAR2(256 BYTE), 
	"P3" VARCHAR2(256 BYTE), 
	"P4" VARCHAR2(256 BYTE), 
	"DESCRIPTION" VARCHAR2(256 BYTE), 
	"EXEC_STATUS" NUMBER, 
	"EXEC_INFO" VARCHAR2(256 BYTE), 
	"EXEC_TIME" TIMESTAMP (6), 
	"FINISH_TIME" TIMESTAMP (6), 
	"POST_STATUS" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(256 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROLLING$STATISTICS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$STATISTICS" SHARING=METADATA 
   (	"STATID" NUMBER, 
	"RDBID" NUMBER, 
	"ATTRIBUTES" NUMBER, 
	"TYPE" NUMBER, 
	"NAME" VARCHAR2(256 BYTE), 
	"VALUESTR" VARCHAR2(256 BYTE), 
	"VALUENUM" NUMBER, 
	"VALUETS" TIMESTAMP (6), 
	"VALUEINT" INTERVAL DAY (3) TO SECOND (2), 
	"UPDATE_TIME" TIMESTAMP (6), 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROLLING$STATUS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ROLLING$STATUS" SHARING=METADATA 
   (	"REVISION" NUMBER, 
	"PHASE" NUMBER, 
	"BATCHID" NUMBER, 
	"STATUS" NUMBER, 
	"COORDID" NUMBER, 
	"OPRIMARY" NUMBER, 
	"FPRIMARY" NUMBER, 
	"PID" NUMBER, 
	"INSTANCE" NUMBER, 
	"DBTOTAL" NUMBER, 
	"DBACTIVE" NUMBER, 
	"LOCATION" VARCHAR2(128 BYTE), 
	"INIT_TIME" TIMESTAMP (6), 
	"BUILD_TIME" TIMESTAMP (6), 
	"START_TIME" TIMESTAMP (6), 
	"SWITCH_TIME" TIMESTAMP (6), 
	"FINISH_TIME" TIMESTAMP (6), 
	"LAST_INSTID" NUMBER, 
	"LAST_BATCHID" NUMBER, 
	"SPARE1" NUMBER, 
	"SPARE2" NUMBER, 
	"SPARE3" VARCHAR2(128 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SALES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SALES" 
   (	"ID" NUMBER(10,0), 
	"CUSTOMER_ID" NUMBER(10,0) DEFAULT NULL, 
	"SALE_CENTER_ID" NUMBER(10,0) DEFAULT NULL, 
	"SALES_TRANSFER_ID" NUMBER(10,0) DEFAULT NULL, 
	"P_DATE" DATE DEFAULT NULL, 
	"TOTAL_SD" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_DISCOUNT" NUMBER(20,0) DEFAULT NULL, 
	"GRAND_TOTAL" NUMBER(20,0) DEFAULT NULL, 
	"SALES_INVOICE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"S_CHALLAN" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"CDATE" DATE DEFAULT NULL, 
	"LC_DATE" DATE DEFAULT NULL, 
	"SALES_TYPE" NUMBER(10,0) DEFAULT NULL, 
	"TRANS_TYPE" VARCHAR2(60 BYTE) DEFAULT NULL, 
	"SALES_CATEGORY" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"TOTAL_VAT" NUMBER(20,0) DEFAULT NULL, 
	"FOREIGN_SALES_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"LC_NO" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"CUSTOM_HOUSE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"COUNTRY" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"DESTINATION" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"VEHICLE_INFO" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"VEHICLE_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"BOE_ITEM_NO" NUMBER(10,0) DEFAULT NULL, 
	"DATA_SOURCE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"CPC_CODE_ID" NUMBER(10,0) DEFAULT NULL, 
	"BOE_NUMBER" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"BOE_DATE" DATE DEFAULT NULL, 
	"NOTES" VARCHAR2(200 BYTE) DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"DELETE_DATE" DATE DEFAULT NULL, 
	"DELETE_STATUS" NUMBER(3,0) DEFAULT 0
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SALES_ITEM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SALES_ITEM" 
   (	"ID" NUMBER(10,0), 
	"TRANS_TYPE" VARCHAR2(60 BYTE) DEFAULT NULL, 
	"ITEM_ID" NUMBER(10,0), 
	"SALES_ID" NUMBER(10,0), 
	"HSCODE_ID" NUMBER(10,0) DEFAULT NULL, 
	"RATE" NUMBER, 
	"QTY" NUMBER, 
	"VAT_AMOUNT" NUMBER DEFAULT NULL, 
	"SD_RATE" NUMBER(10,0) DEFAULT NULL, 
	"SD_AMOUNT" NUMBER DEFAULT NULL, 
	"VATABLE_VALUE" NUMBER DEFAULT NULL, 
	"AMOUNT" NUMBER, 
	"T_AMOUNT" NUMBER DEFAULT NULL, 
	"VAT_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"VAT_RATE" NUMBER DEFAULT 0, 
	"TRADE_CATEGORY" VARCHAR2(555 BYTE) DEFAULT NULL, 
	"SALES_DATE" DATE DEFAULT NULL, 
	"VDS" NUMBER(10,0) DEFAULT 0, 
	"DISCOUNT_RATE" NUMBER(10,0) DEFAULT 0, 
	"DISCOUNT_AMOUNT" NUMBER DEFAULT NULL, 
	"SPRICE_AFTER_DISCOUNT" NUMBER DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SALE_CENTER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SALE_CENTER" 
   (	"ID" NUMBER(10,0), 
	"SC_NAME" VARCHAR2(50 BYTE), 
	"SC_EMAIL" VARCHAR2(50 BYTE), 
	"SC_PHONE" VARCHAR2(15 BYTE), 
	"SC_ADDRESS" VARCHAR2(250 BYTE), 
	"STATUS" NUMBER(3,0) DEFAULT 1, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"UPDATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SCHEDULER_JOB_ARGS_TBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SCHEDULER_JOB_ARGS_TBL" SHARING=METADATA 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"JOB_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_POSITION" NUMBER, 
	"ARGUMENT_TYPE" VARCHAR2(257 BYTE), 
	"VALUE" VARCHAR2(4000 BYTE), 
	"ANYDATA_VALUE" "SYS"."ANYDATA" , 
	"OUT_ARGUMENT" VARCHAR2(5 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 OPAQUE TYPE ("ANYDATA_VALUE") STORE AS BASICFILE LOB (
  ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  CACHE 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_JOB_ARGS_TBL" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for Table SCHEDULER_PROGRAM_ARGS_TBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" SHARING=METADATA 
   (	"OWNER" VARCHAR2(128 BYTE), 
	"PROGRAM_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_NAME" VARCHAR2(128 BYTE), 
	"ARGUMENT_POSITION" NUMBER, 
	"ARGUMENT_TYPE" VARCHAR2(257 BYTE), 
	"METADATA_ATTRIBUTE" VARCHAR2(19 BYTE), 
	"DEFAULT_VALUE" VARCHAR2(4000 BYTE), 
	"DEFAULT_ANYDATA_VALUE" "SYS"."ANYDATA" , 
	"OUT_ARGUMENT" VARCHAR2(5 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 OPAQUE TYPE ("DEFAULT_ANYDATA_VALUE") STORE AS BASICFILE LOB (
  ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  CACHE 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for Table SC_INVENTORY_STOCK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SC_INVENTORY_STOCK" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0), 
	"SALE_CENTER_ID" NUMBER(10,0), 
	"SALES_ID" NUMBER(10,0) DEFAULT NULL, 
	"SC_TRANSFER_ID" NUMBER(10,0) DEFAULT NULL, 
	"DEBITNOTE_ID" NUMBER(10,0) DEFAULT NULL, 
	"CREDITNOTE_ID" NUMBER(10,0) DEFAULT NULL, 
	"DAMAGE_ID" NUMBER(10,0) DEFAULT NULL, 
	"UNUSED_ID" NUMBER(10,0) DEFAULT NULL, 
	"OPENING_STOCK_ID" NUMBER(10,0) DEFAULT NULL, 
	"SALES_OPENING_ID" NUMBER(10,0) DEFAULT NULL, 
	"PREV_STOCK" BINARY_DOUBLE DEFAULT NULL, 
	"QTY" BINARY_DOUBLE, 
	"CURRENT_STOCK" BINARY_DOUBLE, 
	"ACTION" VARCHAR2(255 BYTE), 
	"U_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SC_SALES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SC_SALES" 
   (	"ID" NUMBER(10,0), 
	"CUSTOMER_ID" NUMBER(10,0), 
	"SALE_CENTER_ID" NUMBER(10,0) DEFAULT NULL, 
	"P_DATE" DATE, 
	"TOTAL_SD" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_DISCOUNT" NUMBER(20,0) DEFAULT NULL, 
	"GRAND_TOTAL" NUMBER(20,0) DEFAULT NULL, 
	"SALES_INVOICE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"S_CHALLAN" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"CDATE" DATE DEFAULT NULL, 
	"LC_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"SALES_TYPE" NUMBER(10,0) DEFAULT NULL, 
	"SALES_CATEGORY" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"TRANS_TYPE" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"TOTAL_VAT" NUMBER(20,0) DEFAULT NULL, 
	"FOREIGN_SALES_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"LC_NO" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"CUSTOM_HOUSE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"COUNTRY" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"DESTINATION" VARCHAR2(255 BYTE), 
	"VEHICLE_INFO" VARCHAR2(255 BYTE), 
	"VEHICLE_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"BOE_ITEM_NO" NUMBER(10,0) DEFAULT NULL, 
	"DATA_SOURCE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"NOTES" VARCHAR2(200 BYTE) DEFAULT NULL, 
	"DELETE_DATE" DATE DEFAULT NULL, 
	"DELETE_STATUS" NUMBER(3,0) DEFAULT 0, 
	"CPC_CODE_ID" NUMBER(10,0) DEFAULT NULL, 
	"BOE_NUMBER" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"BOE_DATE" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SC_SALES_ITEM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SC_SALES_ITEM" 
   (	"ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0), 
	"SC_SALES_ID" NUMBER(10,0), 
	"HSCODE_ID" NUMBER(10,0) DEFAULT NULL, 
	"RATE" NUMBER(20,0), 
	"QTY" NUMBER(20,0), 
	"VAT_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"SD_RATE" NUMBER(10,0) DEFAULT NULL, 
	"SD_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"VATABLE_VALUE" NUMBER(20,0) DEFAULT NULL, 
	"AMOUNT" NUMBER(20,0), 
	"T_AMOUNT" NUMBER(20,0), 
	"VAT_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"VAT_RATE" NUMBER(20,0) DEFAULT 0, 
	"TRADE_CATEGORY" VARCHAR2(555 BYTE) DEFAULT NULL, 
	"SALES_DATE" DATE, 
	"VDS" NUMBER(10,0) DEFAULT 0, 
	"DISCOUNT_RATE" NUMBER(10,0) DEFAULT 0, 
	"DISCOUNT_AMOUNT" NUMBER(20,0), 
	"SPRICE_AFTER_DISCOUNT" NUMBER(20,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SC_TRANSFER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SC_TRANSFER" 
   (	"ID" NUMBER(10,0), 
	"SALE_CENTER_ID" NUMBER(10,0), 
	"ISSUE_DATE" DATE DEFAULT NULL, 
	"ISSUE_TIME" DATE DEFAULT NULL, 
	"S_CHALLAN" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"SALES_INVOICE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"VEHICLE_INFO" VARCHAR2(255 BYTE), 
	"GRAND_TOTAL" NUMBER(20,0) DEFAULT NULL, 
	"NOTES" VARCHAR2(200 BYTE) DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SC_TRANSFER_ITEM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SC_TRANSFER_ITEM" 
   (	"ID" NUMBER(10,0), 
	"SC_TRANSFER_ID" NUMBER(10,0), 
	"ITEM_ID" NUMBER(10,0), 
	"HS_CODE_ID" NUMBER(10,0) DEFAULT NULL, 
	"RATE" NUMBER(20,0), 
	"QTY" NUMBER(20,0), 
	"AMOUNT" NUMBER(20,0), 
	"ISSUE_DATE" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SQLPLUS_PRODUCT_PROFILE" SHARING=METADATA 
   (	"PRODUCT" VARCHAR2(30 BYTE), 
	"USERID" VARCHAR2(128 BYTE), 
	"ATTRIBUTE" VARCHAR2(240 BYTE), 
	"SCOPE" VARCHAR2(240 BYTE), 
	"NUMERIC_VALUE" NUMBER(15,2), 
	"CHAR_VALUE" VARCHAR2(240 BYTE), 
	"DATE_VALUE" DATE, 
	"LONG_VALUE" LONG
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."STUDENTS" 
   (	"ID" NUMBER(10,0), 
	"STUDENT_NAME" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"STUDENT_TYPE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT 0, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"UPDATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUPPLIER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SUPPLIER" 
   (	"ID" NUMBER(10,0), 
	"SUPPLIER_NAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"S_ADDRESS" VARCHAR2(255 BYTE), 
	"SUPPLIER_TYPE" VARCHAR2(50 BYTE), 
	"COUNTRY_ID" NUMBER(10,0), 
	"S_TIN" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"S_BIN_NID" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT 0, 
	"DELETE_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUPPLY_VDS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SUPPLY_VDS" 
   (	"ID" NUMBER(10,0), 
	"VDS_NO" VARCHAR2(255 BYTE), 
	"VDS_TYPE" NUMBER(10,0), 
	"ENTRY_DATE" DATE DEFAULT NULL, 
	"SUPPLIER_ID" NUMBER(10,0) DEFAULT 0, 
	"TOTAL_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_VAT" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_VDS" NUMBER(20,0) DEFAULT NULL, 
	"TOTAL_PAYMENT" NUMBER(20,0) DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUPPLY_VDS_ITEM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SUPPLY_VDS_ITEM" 
   (	"ID" NUMBER(10,0), 
	"VDS_ID" NUMBER(10,0) DEFAULT NULL, 
	"INVOICE_NO" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"INV_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"INV_DATE" DATE DEFAULT NULL, 
	"VAT_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"VDS_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"PAYMENT_AMOUNT" NUMBER(20,0) DEFAULT NULL, 
	"BRANCH_NAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"BANK_NAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"ACCOUNT_CODE" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"DEPOSIT_SERIAL" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"ENTRY_DATE" DATE DEFAULT NULL, 
	"SUPPLIER_ID" NUMBER(10,0) DEFAULT NULL, 
	"DIPOSIT_DATE" DATE DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TREASURRY_CHALLAN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TREASURRY_CHALLAN" 
   (	"ID" NUMBER(10,0), 
	"T_CHALLAN_NO" VARCHAR2(255 BYTE), 
	"T_BANK" VARCHAR2(255 BYTE), 
	"T_BRANCH" VARCHAR2(255 BYTE), 
	"T_ACCOUNT_CODE" VARCHAR2(255 BYTE), 
	"T_AMOUNT" NUMBER(20,0), 
	"T_DATE" DATE, 
	"EXECUTE_DATE" DATE DEFAULT NULL, 
	"T_TYPE" VARCHAR2(255 BYTE) DEFAULT '0', 
	"BUSINESS_TYPE" NUMBER(3,0), 
	"CREATED_AT" TIMESTAMP (0) DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table UNIT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."UNIT" 
   (	"ID" NUMBER(10,0), 
	"UNIT_NAME" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"ABBR" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT 0, 
	"UPDATED_AT" DATE DEFAULT NULL, 
	"CREATED_AT" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(10,0) DEFAULT NULL
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USERS" 
   (	"ID" NUMBER(10,0), 
	"SALE_CENTER_ID" NUMBER(10,0) DEFAULT NULL, 
	"USER_TYPE" VARCHAR2(60 BYTE) DEFAULT NULL, 
	"USER_NAME" VARCHAR2(150 BYTE), 
	"FIRST_NAME" VARCHAR2(150 BYTE), 
	"LAST_NAME" VARCHAR2(150 BYTE), 
	"EMAIL" VARCHAR2(150 BYTE), 
	"USER_NID" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"NID_SCAN" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"PRO_IMG" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"USER_PHONE" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"ROLE_ID" NUMBER(10,0) DEFAULT NULL, 
	"PASSWORD" VARCHAR2(255 BYTE), 
	"STATUS" NUMBER(3,0) DEFAULT NULL, 
	"TERMINATE_DATE" DATE DEFAULT NULL, 
	"TERMINATE_REASON" CLOB DEFAULT NULL, 
	"USER_ID" NUMBER(10,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("TERMINATE_REASON") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table USER_ROLE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USER_ROLE" 
   (	"ID" NUMBER(7,0), 
	"ROLE_NAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(100 BYTE), 
	"CREATED_AT" DATE DEFAULT NULL, 
	"STATUS" NUMBER(3,0) DEFAULT 0
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View MVIEW_EVALUATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_EVALUATIONS" ("RUNID", "MVIEW_OWNER", "MVIEW_NAME", "RANK", "STORAGE_IN_BYTES", "FREQUENCY", "CUMULATIVE_BENEFIT", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_EVALUATIONS"  IS 'This view gives DBA access to summary evaluation output'
;
--------------------------------------------------------
--  DDL for View MVIEW_EXCEPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_EXCEPTIONS" ("RUNID", "OWNER", "TABLE_NAME", "DIMENSION_NAME", "RELATIONSHIP", "BAD_ROWID") AS 
  select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_EXCEPTIONS"  IS 'This view gives DBA access to dimension validation results'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_FILTER" ("FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTER"  IS 'Workload filter records'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTERINSTANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_FILTERINSTANCE" ("RUNID", "FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTERINSTANCE"  IS 'Workload filter instance records'
;
--------------------------------------------------------
--  DDL for View MVIEW_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_LOG" ("ID", "FILTERID", "RUN_BEGIN", "RUN_END", "TYPE", "STATUS", "MESSAGE", "COMPLETED", "TOTAL", "ERROR_CODE") AS 
  select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_LOG"  IS 'Advisor session log'
;
--------------------------------------------------------
--  DDL for View MVIEW_RECOMMENDATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_RECOMMENDATIONS" ("RUNID", "ALL_TABLES", "FACT_TABLES", "GROUPING_LEVELS", "QUERY_TEXT", "RECOMMENDATION_NUMBER", "RECOMMENDED_ACTION", "MVIEW_OWNER", "MVIEW_NAME", "STORAGE_IN_BYTES", "PCT_PERFORMANCE_GAIN", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_RECOMMENDATIONS"  IS 'This view gives DBA access to summary recommendations'
;
--------------------------------------------------------
--  DDL for View MVIEW_WORKLOAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_WORKLOAD" ("WORKLOADID", "IMPORT_TIME", "QUERYID", "APPLICATION", "CARDINALITY", "RESULTSIZE", "LASTUSE", "FREQUENCY", "OWNER", "PRIORITY", "QUERY", "RESPONSETIME") AS 
  select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_WORKLOAD"  IS 'This view gives DBA access to shared workload'
;
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR
        USERID LIKE SYS_CONTEXT('USERENV','CURRENT_USER')
;
  GRANT READ ON "SYSTEM"."PRODUCT_PRIVS" TO PUBLIC;
--------------------------------------------------------
--  DDL for View SCHEDULER_JOB_ARGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."SCHEDULER_JOB_ARGS" ("OWNER", "JOB_NAME", "ARGUMENT_NAME", "ARGUMENT_POSITION", "ARGUMENT_TYPE", "VALUE", "ANYDATA_VALUE", "OUT_ARGUMENT") AS 
  SELECT "OWNER","JOB_NAME","ARGUMENT_NAME","ARGUMENT_POSITION","ARGUMENT_TYPE","VALUE","ANYDATA_VALUE","OUT_ARGUMENT" FROM sys.all_scheduler_job_args
;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_JOB_ARGS" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for View SCHEDULER_PROGRAM_ARGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."SCHEDULER_PROGRAM_ARGS" ("OWNER", "PROGRAM_NAME", "ARGUMENT_NAME", "ARGUMENT_POSITION", "ARGUMENT_TYPE", "METADATA_ATTRIBUTE", "DEFAULT_VALUE", "DEFAULT_ANYDATA_VALUE", "OUT_ARGUMENT") AS 
  SELECT "OWNER","PROGRAM_NAME","ARGUMENT_NAME","ARGUMENT_POSITION","ARGUMENT_TYPE","METADATA_ATTRIBUTE","DEFAULT_VALUE","DEFAULT_ANYDATA_VALUE","OUT_ARGUMENT" FROM sys.all_scheduler_program_args
;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_PROGRAM_ARGS" TO "SELECT_CATALOG_ROLE";
REM INSERTING into SYSTEM.AQ$_INTERNET_AGENTS
SET DEFINE OFF;
Insert into SYSTEM.AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SCHEDULER$_EVENT_AGENT',0,null);
Insert into SYSTEM.AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SCHEDULER$_REMDB_AGENT',0,null);
Insert into SYSTEM.AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SERVER_ALERT',0,null);
Insert into SYSTEM.AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('HAE_SUB',0,null);
Insert into SYSTEM.AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('ILM_AGENT',0,null);
Insert into SYSTEM.AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SCHEDULER$_LBAGT',0,null);
REM INSERTING into SYSTEM.AQ$_INTERNET_AGENT_PRIVS
SET DEFINE OFF;
Insert into SYSTEM.AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SCHEDULER$_EVENT_AGENT','SYS');
Insert into SYSTEM.AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SCHEDULER$_LBAGT','SYS');
Insert into SYSTEM.AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SCHEDULER$_REMDB_AGENT','SYS');
Insert into SYSTEM.AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SERVER_ALERT','SYS');
REM INSERTING into SYSTEM.AQ$_KEY_SHARD_MAP
SET DEFINE OFF;
REM INSERTING into SYSTEM.AQ$_QUEUES
SET DEFINE OFF;
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('A47690EB861F494FB3FF0BC72D746B17',19668,'AQ$_SCHEDULER$_EVENT_QTAB_E',19646,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('0CC5EF1FCF0C47B39567CAD19745BE54',19669,'SCHEDULER$_EVENT_QUEUE',19646,0,3,5,0,0,3600,'Scheduler event queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('621AF4E212CE4151B8966409A3B689B2',19702,'AQ$_SCHEDULER$_REMDB_JOBQTAB_E',19673,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('14332BFEA6EF4530BAAD1BAC657F52CC',19703,'SCHEDULER$_REMDB_JOBQ',19673,0,3,5,0,0,0,'Scheduler remote db job queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('D9F12FFF0D824947BCCF5BD90DEE0B2A',19732,'AQ$_SCHEDULER_FILEWATCHER_QT_E',19707,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('478442A86EF64D8FA6AC3AEED3603983',19733,'SCHEDULER_FILEWATCHER_Q',19707,0,3,5,0,0,0,'Scheduler file watcher results queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('96FE5D7AB7904DCD90DEB4497C337C20',19787,'AQ$_ALERT_QT_E',19765,1,2,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('418A1B69F4CA42EBAD0C30D3581F1AD7',19788,'ALERT_QUE',19765,0,3,5,0,0,0,'Server Generated Alert Queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('100C82BBF3D747D89D2AD003C73A829B',20088,'AQ$_ORA$PREPLUGIN_BACKUP_QTB_E',20066,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('1EE38090888B47DBA6B95BA53AE4D536',20089,'ORA$PREPLUGIN_BACKUP_QUE',20066,0,3,5,0,0,0,'SYS.ORA$PREPLUGIN_BACKUP_QUE',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('8A7759BC235F4A35B81E0FFC7150897B',20308,'AQ$_AQ$_MEM_MC_E',20284,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('4639C35722E04719BB27CB04E4AE52B3',20309,'SRVQUEUE',20284,2,3,0,0,0,0,null,null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('954AB41424C946E587976955AF6B2E14',20320,'AQ$_AQ_EVENT_TABLE_E',20310,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('EBB22C8AEC434E9BB1CF837B5B864F7A',20321,'AQ_EVENT_TABLE_Q',20310,0,3,5,0,0,0,'CREATING AQ_EVENT_TABLE_Q QUEUE',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('DFF4D9F355CD493D9D822C5E232E5D19',20344,'AQ$_AQ_PROP_TABLE_E',20322,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('453001AD73F040C79E9971211814B30C',20345,'AQ_PROP_NOTIFY',20322,0,3,5,0,0,0,'Queue for Notifying events in AQ Prop. Scheduling',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('BB20A76128B44CA29A196DF309AA9B01',20365,'AQ$_CQN_EVENT_TABLE_E',20355,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('51D0F599E4B34D4E8D018AF62082872B',20366,'CQN_EVENT_TABLE_Q',20355,0,3,5,0,0,0,'CREATING CQN_EVENT_TABLE_Q QUEUE',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('DAE87352078B4490BCFC97F743DC6D3B',20677,'AQ$_SYS$SERVICE_METRICS_TAB_E',20655,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('7812988458D24541920BA32844914254',20678,'SYS$SERVICE_METRICS',20655,0,3,5,0,0,3600,null,null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('7489C1D385814A88971C56ABA93F06A3',20846,'AQ$_PDB_MON_EVENT_QTABLE$_E',20822,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('46C265D9AF224F42BD207F6782528A44',20847,'PDB_MON_EVENT_QUEUE$',20822,0,3,5,0,0,86400,'Queue for raw pdb event information',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('A73405110A2F466D8D77097D03D23F1D',20988,'AQ$_CHANGE_LOG_QUEUE_TABLE_E',20966,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('99A7C9AB7B8149D0B2A6EB05CD425E7D',20989,'CHANGE_LOG_QUEUE',20966,0,3,5,0,0,0,'GSM Change Log Queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('BC2A1BEFA2F249C9A9B6B0CA5257C17A',22724,'AQ$_WM$EVENT_QUEUE_TABLE_E',22697,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into SYSTEM.AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('F208D58599E34D4684CA6F92B87E2F0D',22725,'WM$EVENT_QUEUE',22697,0,3,5,0,0,0,'OWM Events Queue',null,null,null,null,null,0,0);
REM INSERTING into SYSTEM.AQ$_QUEUE_TABLES
SET DEFINE OFF;
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER$_EVENT_QTAB',1,19646,16805897,2,'00:00','Scheduler event queue table');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER$_REMDB_JOBQTAB',1,19673,16801801,2,'00:00','Scheduler remote db job queue table');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER_FILEWATCHER_QT',1,19707,16805897,2,'00:00','Scheduler file watcher result queue table');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','ALERT_QT',1,19765,16805897,2,'00:00','Server Generated Alert Queue Table');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','ORA$PREPLUGIN_BACKUP_QTB',1,20066,16801801,2,'00:00','SYS.ORA$PREPLUGIN_BACKUP_QUE');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ$_MEM_MC',3,20284,16801801,2,'00:00','table for non_persistent queues');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ_EVENT_TABLE',1,20310,16793600,2,'00:00','CREATING AQ_EVENT_TABLE QUEUE TABLE');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ_PROP_TABLE',1,20322,16801801,2,'00:00','Queue Table for Notification in AQ Prop. Scheduling');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','CQN_EVENT_TABLE',1,20355,16793600,2,'00:00','CREATING CQN_EVENT_TABLE QUEUE TABLE');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SYS$SERVICE_METRICS_TAB',1,20655,16801801,2,'00:00',null);
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','PDB_MON_EVENT_QTABLE$',1,20822,16801801,2,'00:00','Raw queue table containing event information');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('GSMADMIN_INTERNAL','CHANGE_LOG_QUEUE_TABLE',1,20966,16801801,2,'00:00','Creating GSM change log queue table');
Insert into SYSTEM.AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('WMSYS','WM$EVENT_QUEUE_TABLE',1,22697,16801801,2,'00:00',null);
REM INSERTING into SYSTEM.AQ$_SCHEDULES
SET DEFINE OFF;
REM INSERTING into SYSTEM.BOM_VERSION
SET DEFINE OFF;
Insert into SYSTEM.BOM_VERSION (ID,BOM_ID,REMARKS,SALES_PRICE) values (81,81,'Add',955.06);
REM INSERTING into SYSTEM.COMPANY_SETTINGS
SET DEFINE OFF;
Insert into SYSTEM.COMPANY_SETTINGS (ID,COMPANY_NAME,SITE_SHORT_NAME,EMAIL,PHONE,STREET,CITY_ID,STATE_ID,ZIP_CODE,COUNTRY_ID,TIN,DEFAULT_LANGUAGE,DEFAULT_CURRENCY,LOGINPAGE_IMAGE,BANK_NAME,AC_NO,IFS_CODE,BIN,INVOICE_IMAGE,BUSINESS_NATURE,BUSINESS_ECONOMICS,SUBMISSION_PERSION,DESIGNATION_PERSION,DESIGNATION_PHONE,DESIGNATION_IMAGE,LAWYER_NID,COMPANY_VAT_TYPE,USER_ID,DESIGNATION_EMAIL) values (2,'ABC Trading LTD','ATL','info@ABC.com','01764250','LEVEL-11',7291,348,'1207',18,'12','english','1','113112015362d398d626a22.jpg','DBBL','ac-124773254524','AIBL-0011555','234546576899ED','210985601862d398bfad1ee.png','SUPPLY(TRADE),SERVICE RENDER ok','PROPRIETERSHIP','Ariful Islam','AIBL-22','0156576657','Ariful@abc.com','455657458','notdeduct',null,'arif@bmit.com');
REM INSERTING into SYSTEM.COSTING
SET DEFINE OFF;
Insert into SYSTEM.COSTING (ID,COSTING_NAME,COSTING_TYPE,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (2,'Other Cost','2',0,null,null,null,null);
Insert into SYSTEM.COSTING (ID,COSTING_NAME,COSTING_TYPE,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (3,'Other Cost','1',0,null,null,null,null);
Insert into SYSTEM.COSTING (ID,COSTING_NAME,COSTING_TYPE,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (4,'Transport','1',0,null,null,null,null);
Insert into SYSTEM.COSTING (ID,COSTING_NAME,COSTING_TYPE,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (5,'Bank Chalan','1',0,null,null,null,null);
Insert into SYSTEM.COSTING (ID,COSTING_NAME,COSTING_TYPE,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (6,'Other Costs','1',0,null,null,null,null);
Insert into SYSTEM.COSTING (ID,COSTING_NAME,COSTING_TYPE,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (7,'Other Costsss','1',0,null,null,null,null);
Insert into SYSTEM.COSTING (ID,COSTING_NAME,COSTING_TYPE,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (8,'Other CostA','1',0,null,null,null,null);
Insert into SYSTEM.COSTING (ID,COSTING_NAME,COSTING_TYPE,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (9,'Other CostW','1',0,null,21,null,null);
REM INSERTING into SYSTEM.COUNTRIES
SET DEFINE OFF;
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (1,'AF','Afghanistan',93);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (2,'AL','Albania',355);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (3,'DZ','Algeria',213);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (4,'AS','American Samoa',1684);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (5,'AD','Andorra',376);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (6,'AO','Angola',244);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (7,'AI','Anguilla',1264);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (8,'AQ','Antarctica',0);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (9,'AG','Antigua And Barbuda',1268);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (10,'AR','Argentina',54);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (11,'AM','Armenia',374);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (12,'AW','Aruba',297);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (13,'AU','Australia',61);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (14,'AT','Austria',43);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (15,'AZ','Azerbaijan',994);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (16,'BS','Bahamas The',1242);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (17,'BH','Bahrain',973);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (18,'BD','Bangladesh',880);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (19,'BB','Barbados',1246);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (20,'BY','Belarus',375);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (21,'BE','Belgium',32);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (22,'BZ','Belize',501);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (23,'BJ','Benin',229);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (24,'BM','Bermuda',1441);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (25,'BT','Bhutan',975);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (26,'BO','Bolivia',591);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (27,'BA','Bosnia and Herzegovina',387);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (28,'BW','Botswana',267);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (29,'BV','Bouvet Island',0);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (30,'BR','Brazil',55);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (31,'IO','British Indian Ocean Territory',246);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (32,'BN','Brunei',673);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (33,'BG','Bulgaria',359);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (34,'BF','Burkina Faso',226);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (35,'BI','Burundi',257);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (36,'KH','Cambodia',855);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (37,'CM','Cameroon',237);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (38,'CA','Canada',1);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (39,'CV','Cape Verde',238);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (40,'KY','Cayman Islands',1345);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (41,'CF','Central African Republic',236);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (42,'TD','Chad',235);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (43,'CL','Chile',56);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (44,'CN','China',86);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (45,'CX','Christmas Island',61);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (46,'CC','Cocos Keeling Islands',672);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (47,'CO','Colombia',57);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (48,'KM','Comoros',269);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (49,'CG','Congo',242);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (50,'CD','Congo The Democratic Republic Of The',242);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (51,'CK','Cook Islands',682);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (52,'CR','Costa Rica',506);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (53,'CI','Cote D Ivoire Ivory Coast',225);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (54,'HR','Croatia Hrvatska',385);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (55,'CU','Cuba',53);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (56,'CY','Cyprus',357);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (57,'CZ','Czech Republic',420);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (58,'DK','Denmark',45);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (59,'DJ','Djibouti',253);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (60,'DM','Dominica',1767);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (61,'DO','Dominican Republic',1809);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (62,'TP','East Timor',670);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (63,'EC','Ecuador',593);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (64,'EG','Egypt',20);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (65,'SV','El Salvador',503);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (66,'GQ','Equatorial Guinea',240);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (67,'ER','Eritrea',291);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (68,'EE','Estonia',372);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (69,'ET','Ethiopia',251);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (70,'XA','External Territories of Australia',61);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (71,'FK','Falkland Islands',500);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (72,'FO','Faroe Islands',298);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (73,'FJ','Fiji Islands',679);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (74,'FI','Finland',358);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (75,'FR','France',33);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (76,'GF','French Guiana',594);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (77,'PF','French Polynesia',689);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (78,'TF','French Southern Territories',0);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (79,'GA','Gabon',241);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (80,'GM','Gambia The',220);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (81,'GE','Georgia',995);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (82,'DE','Germany',49);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (83,'GH','Ghana',233);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (84,'GI','Gibraltar',350);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (85,'GR','Greece',30);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (86,'GL','Greenland',299);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (87,'GD','Grenada',1473);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (88,'GP','Guadeloupe',590);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (89,'GU','Guam',1671);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (90,'GT','Guatemala',502);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (91,'XU','Guernsey and Alderney',44);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (92,'GN','Guinea',224);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (93,'GW','Guinea-Bissau',245);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (94,'GY','Guyana',592);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (95,'HT','Haiti',509);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (96,'HM','Heard and McDonald Islands',0);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (97,'HN','Honduras',504);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (98,'HK','Hong Kong S.A.R.',852);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (99,'HU','Hungary',36);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (100,'IS','Iceland',354);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (101,'IN','India',91);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (102,'ID','Indonesia',62);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (103,'IR','Iran',98);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (104,'IQ','Iraq',964);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (105,'IE','Ireland',353);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (106,'IL','Israel',972);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (107,'IT','Italy',39);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (108,'JM','Jamaica',1876);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (109,'JP','Japan',81);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (110,'XJ','Jersey',44);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (111,'JO','Jordan',962);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (112,'KZ','Kazakhstan',7);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (113,'KE','Kenya',254);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (114,'KI','Kiribati',686);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (115,'KP','Korea North',850);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (116,'KR','Korea South',82);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (117,'KW','Kuwait',965);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (118,'KG','Kyrgyzstan',996);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (119,'LA','Laos',856);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (120,'LV','Latvia',371);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (121,'LB','Lebanon',961);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (122,'LS','Lesotho',266);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (123,'LR','Liberia',231);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (124,'LY','Libya',218);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (125,'LI','Liechtenstein',423);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (126,'LT','Lithuania',370);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (127,'LU','Luxembourg',352);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (128,'MO','Macau S.A.R.',853);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (129,'MK','Macedonia',389);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (130,'MG','Madagascar',261);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (131,'MW','Malawi',265);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (132,'MY','Malaysia',60);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (133,'MV','Maldives',960);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (134,'ML','Mali',223);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (135,'MT','Malta',356);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (136,'XM','Man (Isle of)',44);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (137,'MH','Marshall Islands',692);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (138,'MQ','Martinique',596);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (139,'MR','Mauritania',222);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (140,'MU','Mauritius',230);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (141,'YT','Mayotte',269);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (142,'MX','Mexico',52);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (143,'FM','Micronesia',691);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (144,'MD','Moldova',373);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (145,'MC','Monaco',377);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (146,'MN','Mongolia',976);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (147,'MS','Montserrat',1664);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (148,'MA','Morocco',212);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (149,'MZ','Mozambique',258);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (150,'MM','Myanmar',95);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (151,'NA','Namibia',264);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (152,'NR','Nauru',674);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (153,'NP','Nepal',977);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (154,'AN','Netherlands Antilles',599);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (155,'NL','Netherlands The',31);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (156,'NC','New Caledonia',687);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (157,'NZ','New Zealand',64);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (158,'NI','Nicaragua',505);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (159,'NE','Niger',227);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (160,'NG','Nigeria',234);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (161,'NU','Niue',683);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (162,'NF','Norfolk Island',672);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (163,'MP','Northern Mariana Islands',1670);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (164,'NO','Norway',47);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (165,'OM','Oman',968);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (166,'PK','Pakistan',92);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (167,'PW','Palau',680);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (168,'PS','Palestinian Territory Occupied',970);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (169,'PA','Panama',507);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (170,'PG','Papua new Guinea',675);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (171,'PY','Paraguay',595);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (172,'PE','Peru',51);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (173,'PH','Philippines',63);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (174,'PN','Pitcairn Island',0);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (175,'PL','Poland',48);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (176,'PT','Portugal',351);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (177,'PR','Puerto Rico',1787);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (178,'QA','Qatar',974);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (179,'RE','Reunion',262);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (180,'RO','Romania',40);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (181,'RU','Russia',70);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (182,'RW','Rwanda',250);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (183,'SH','Saint Helena',290);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (184,'KN','Saint Kitts And Nevis',1869);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (185,'LC','Saint Lucia',1758);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (186,'PM','Saint Pierre and Miquelon',508);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (187,'VC','Saint Vincent And The Grenadines',1784);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (188,'WS','Samoa',684);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (189,'SM','San Marino',378);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (190,'ST','Sao Tome and Principe',239);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (191,'SA','Saudi Arabia',966);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (192,'SN','Senegal',221);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (193,'RS','Serbia',381);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (194,'SC','Seychelles',248);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (195,'SL','Sierra Leone',232);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (196,'SG','Singapore',65);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (197,'SK','Slovakia',421);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (198,'SI','Slovenia',386);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (199,'XG','Smaller Territories of the UK',44);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (200,'SB','Solomon Islands',677);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (201,'SO','Somalia',252);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (202,'ZA','South Africa',27);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (203,'GS','South Georgia',0);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (204,'SS','South Sudan',211);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (205,'ES','Spain',34);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (206,'LK','Sri Lanka',94);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (207,'SD','Sudan',249);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (208,'SR','Suriname',597);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (209,'SJ','Svalbard And Jan Mayen Islands',47);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (210,'SZ','Swaziland',268);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (211,'SE','Sweden',46);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (212,'CH','Switzerland',41);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (213,'SY','Syria',963);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (214,'TW','Taiwan',886);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (215,'TJ','Tajikistan',992);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (216,'TZ','Tanzania',255);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (217,'TH','Thailand',66);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (218,'TG','Togo',228);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (219,'TK','Tokelau',690);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (220,'TO','Tonga',676);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (221,'TT','Trinidad And Tobago',1868);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (222,'TN','Tunisia',216);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (223,'TR','Turkey',90);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (224,'TM','Turkmenistan',7370);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (225,'TC','Turks And Caicos Islands',1649);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (226,'TV','Tuvalu',688);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (227,'UG','Uganda',256);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (228,'UA','Ukraine',380);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (229,'AE','United Arab Emirates',971);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (230,'GB','United Kingdom',44);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (231,'US','United States',1);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (232,'UM','United States Minor Outlying Islands',1);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (233,'UY','Uruguay',598);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (234,'UZ','Uzbekistan',998);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (235,'VU','Vanuatu',678);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (236,'VA','Vatican City State (Holy See)',39);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (237,'VE','Venezuela',58);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (238,'VN','Vietnam',84);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (239,'VG','Virgin Islands (British)',1284);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (240,'VI','Virgin Islands (US)',1340);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (241,'WF','Wallis And Futuna Islands',681);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (242,'EH','Western Sahara',212);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (243,'YE','Yemen',967);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (244,'YU','Yugoslavia',38);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (245,'ZM','Zambia',260);
Insert into SYSTEM.COUNTRIES (ID,SORTNAME,COUNTRY_NAME,PHONECODE) values (246,'ZW','Zimbabwe',263);
REM INSERTING into SYSTEM.CPC_CODE
SET DEFINE OFF;
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (1,'4000-Direct Entry for Home Consumption',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (2,'4052-Entry for Home Use after teporary import procedure',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (3,'4053-Entry for home use after T for return in unatered state',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (4,'4071-Entry for home use after customs warehousing procedure',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (5,'4072-Entry for Home Consumpion after warehousing-No stock control (SBW)',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (6,'4073-Entry for Home Use after customs warehousing procedure - EPZ',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (7,'4074-Home Consumpion after warehousing',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (8,'4091-Entry for Home Use after provisional import',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (9,'4092-Entry for Home Consumpion after perishible import',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (10,'4100-Direct Import under drawback procedure',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (11,'5200-Temporary Import for customs inward processing procedure',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (12,'5300-Temporary Import for return of goods in unaltered state',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (13,'5371-Temporary Import of goods for return in unaltered after warehousing',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (14,'5372-Temporary Import for return in unaltered state after warehousing -No stock control',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (15,'5373-Temporary Import for return in unaltered state after warehousing - EPZ',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (16,'6021-Re import after temporary export for repair and process',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (17,'6022-Re import after temporary export for return of goods in unaltered state',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (18,' new cpc',null);
Insert into SYSTEM.CPC_CODE (ID,CPC_DESCRIPTION,CREATED_AT) values (19,'all new cpcC',null);
REM INSERTING into SYSTEM.CREDIT_NOTE
SET DEFINE OFF;
REM INSERTING into SYSTEM.CREDIT_NOTE_ITEM
SET DEFINE OFF;
REM INSERTING into SYSTEM.CURRENCY
SET DEFINE OFF;
Insert into SYSTEM.CURRENCY (ID,CURRENCY_NAME,SYMBOL,STATUS,DELETE_DATE,CREATED_AT,UPDATED_AT,USER_ID) values (1,'Doller','$',0,null,null,to_date('14-09-2022','DD-MM-YYYY'),null);
REM INSERTING into SYSTEM.CUSTOMERS
SET DEFINE OFF;
Insert into SYSTEM.CUSTOMERS (ID,CUSTOMER_NAME,EMAIL,PHONE,COUNTRY_ID,CUSTOMER_TYPE,C_ADDRESS,SHIPPING_ADDRESS,SHIPPING_COUNTRY_ID,C_BIN_NID,C_TIN,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (1,'Banani, Dhaka','ranabiswas@bmitsolutionsltd.com','01681081476','82','1','Banani, Dhaka','Banani, Dhaka','0','23211','bd2211',0,null,null,null,null);
Insert into SYSTEM.CUSTOMERS (ID,CUSTOMER_NAME,EMAIL,PHONE,COUNTRY_ID,CUSTOMER_TYPE,C_ADDRESS,SHIPPING_ADDRESS,SHIPPING_COUNTRY_ID,C_BIN_NID,C_TIN,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (21,'BMW Corporation ','bmw@bmw.com','543432223','82','2','Berlin, Germany','Chittagong & Mongla Port','18','11292bf22','w2324',0,null,null,null,null);
Insert into SYSTEM.CUSTOMERS (ID,CUSTOMER_NAME,EMAIL,PHONE,COUNTRY_ID,CUSTOMER_TYPE,C_ADDRESS,SHIPPING_ADDRESS,SHIPPING_COUNTRY_ID,C_BIN_NID,C_TIN,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (41,'ABC Group','abc@abc.com','01681081476',null,'1','Banani, Dhaka','Banani, Dhaka',null,'11292bf22','w2324',0,null,null,null,null);
Insert into SYSTEM.CUSTOMERS (ID,CUSTOMER_NAME,EMAIL,PHONE,COUNTRY_ID,CUSTOMER_TYPE,C_ADDRESS,SHIPPING_ADDRESS,SHIPPING_COUNTRY_ID,C_BIN_NID,C_TIN,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (42,'Bosundhara Group','abc@abc.com','01681081476',null,'1','Banani, Dhaka','Banani, Dhaka',null,'11292bf22','w2324',0,null,null,null,null);
Insert into SYSTEM.CUSTOMERS (ID,CUSTOMER_NAME,EMAIL,PHONE,COUNTRY_ID,CUSTOMER_TYPE,C_ADDRESS,SHIPPING_ADDRESS,SHIPPING_COUNTRY_ID,C_BIN_NID,C_TIN,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (43,'Northern Group','abc@abc.com','01681081476',null,'1','Banani, Dhaka','Banani, Dhaka',null,'11292bf22','w2324',0,null,null,null,null);
Insert into SYSTEM.CUSTOMERS (ID,CUSTOMER_NAME,EMAIL,PHONE,COUNTRY_ID,CUSTOMER_TYPE,C_ADDRESS,SHIPPING_ADDRESS,SHIPPING_COUNTRY_ID,C_BIN_NID,C_TIN,STATUS,DELETE_DATE,USER_ID,CREATED_AT,UPDATED_AT) values (44,'ADANI Group','adani@adani.com','9302828392','101','2','Gujrat, India','Mumbai, India','101','11292bf22','afdsf',0,null,null,null,null);
REM INSERTING into SYSTEM.CUSTOM_HOUSE
SET DEFINE OFF;
Insert into SYSTEM.CUSTOM_HOUSE (ID,HOUSE_NAME,HOUSE_CODE,USER_ID,ADDRESS) values (1,'Mongla Port','304',null,'MONGLA');
Insert into SYSTEM.CUSTOM_HOUSE (ID,HOUSE_NAME,HOUSE_CODE,USER_ID,ADDRESS) values (2,'Chittagong Custom House','306',null,'Chittagong');
Insert into SYSTEM.CUSTOM_HOUSE (ID,HOUSE_NAME,HOUSE_CODE,USER_ID,ADDRESS) values (21,'Benapol Custom House','303',21,'Benapol Jessore');
REM INSERTING into SYSTEM.DEBIT_NOTE
SET DEFINE OFF;
REM INSERTING into SYSTEM.DEBIT_NOTE_ITEM
SET DEFINE OFF;
REM INSERTING into SYSTEM.HELP
SET DEFINE OFF;
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',2,' @ ("at" sign)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',3,' -------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',4,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',5,' called from the local file system or a web server.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',7,' @ {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',9,' where url supports HTTP and FTP protocols in the form:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',11,'    http://host.domain/script.sql');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',2,' @@ (double "at" sign)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',3,' ---------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',5,' Runs the specified script. This command is almost identical to');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',6,' the @ command. It is useful for running nested scripts because it');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',7,' has the additional functionality of looking for the nested script');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',8,' in the same url or path as the calling script.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',10,' @@ {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('@@',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',2,' / (slash)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',5,' Executes the most recently executed SQL command or PL/SQL block');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',6,' which is stored in the SQL buffer. Use slash (/) at the command');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',7,' prompt or line number prompt in SQL*Plus command line. The buffer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',8,' has no command history and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',10,' /');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('/',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',2,' ACCEPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',5,' Reads a line of input and stores it in a given substitution variable.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',7,' ACC[EPT] variable [NUM[BER] | CHAR | DATE | BINARY_FLOAT | BINARY_DOUBLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',8,' [FOR[MAT] format] [DEF[AULT] default] [PROMPT text | NOPR[OMPT]] [HIDE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ACCEPT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',2,' APPEND');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',5,' Adds text to the end of the current line in the SQL buffer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',7,' A[PPEND] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('APPEND',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',2,' ARCHIVE LOG');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',3,' -----------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',5,' Displays information about redo log files.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',7,' ARCHIVE LOG LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',2,' ATTRIBUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',5,' Specifies display characteristics for a given attribute of an Object Type');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',6,' column, such as the format of NUMBER data. Columns and attributes should');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',7,' not have the same names as they share a common namespace. Lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',8,' current display characteristics for a single attribute or all attributes.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',10,' ATTRIBUTE [type_name.attribute_name [option ... ]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',12,' where option represents one of the following terms or clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',13,'     ALI[AS] alias');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',14,'     CLE[AR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',15,'     FOR[MAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',16,'     LIKE {type_name.attribute_name | alias}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',17,'     ON|OFF');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',2,' BREAK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',5,' Specifies where changes occur in a report and the formatting');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',6,' action to perform, such as:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',7,' - suppressing display of duplicate values for a given column');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',8,' - skipping a line each time a given column value changes');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',9,' - printing computed figures each time a given column value');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',10,'   changes or at the end of the report.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',11,' Enter BREAK with no clauses to list the current BREAK definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',13,' BRE[AK] [ON report_element [action [action]]] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',15,' where report_element has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',16,'     {column | expression | ROW | REPORT}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',18,' and where action has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',19,'     [SKI[P] n | [SKI[P]] PAGE] [NODUP[LICATES] | DUP[LICATES]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BREAK',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',2,' BTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',5,' Places and formats a specified title at the bottom of each report');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',6,' page, or lists the current BTITLE definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',8,' BTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',12,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',13,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',14,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('BTITLE',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',2,' CHANGE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',5,' Changes the first occurrence of the specified text on the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',6,' line of the SQL buffer. The buffer has no command history list and');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',7,' does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',9,' C[HANGE] sepchar old [sepchar [new[sepchar]]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CHANGE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',2,' CLEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',5,' Resets or erases the current value or setting for the specified option.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',7,' CL[EAR] option ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',9,' where option represents one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',10,'     BRE[AKS]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',11,'     BUFF[ER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',12,'     COL[UMNS]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',13,'     COMP[UTES]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',14,'     SCR[EEN]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',15,'     SQL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',16,'     TIMI[NG]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CLEAR',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',2,' COLUMN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',5,' Specifies display attributes for a given column, such as:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',6,'     - text for the column heading');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',7,'     - alignment for the column heading');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',8,'     - format for NUMBER data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',9,'     - wrapping of column data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',10,' Also lists the current display attributes for a single column');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',11,' or all columns.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',13,' COL[UMN] [{column | expr} [option ...] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',15,' where option represents one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',16,'     ALI[AS] alias');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',17,'     CLE[AR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',18,'     ENTMAP {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',19,'     FOLD_A[FTER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',20,'     FOLD_B[EFORE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',21,'     FOR[MAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',22,'     HEA[DING] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',23,'     JUS[TIFY] {L[EFT] | C[ENTER] | R[IGHT]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',24,'     LIKE {expr | alias}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',25,'     NEWL[INE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',26,'     NEW_V[ALUE] variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',27,'     NOPRI[NT] | PRI[NT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',28,'     NUL[L] text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',29,'     OLD_V[ALUE] variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',30,'     ON|OFF');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',31,'     WRA[PPED] | WOR[D_WRAPPED] | TRU[NCATED]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COLUMN',32,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',2,' COMPUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',5,' In combination with the BREAK command, calculates and prints');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',6,' summary lines using various standard computations. Also lists');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',7,' all COMPUTE definitions.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',9,' COMP[UTE] [function [LAB[EL] text] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',10,'   OF {expr|column|alias} ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',11,'   ON {expr|column|alias|REPORT|ROW} ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COMPUTE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',2,' CONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',5,' Connects a given username to the Oracle Database. When you run a');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',6,' CONNECT command, the site profile, glogin.sql, and the user profile,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',7,' login.sql, are processed in that order. CONNECT does not reprompt');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',8,' for username or password if the initial connection does not succeed.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',10,' CONN[ECT] [{logon|/|proxy}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',11,' [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',12,' [edition=value]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',14,' where logon has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',15,'     username[/password][@connect_identifier]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',16,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',17,' where proxy has the syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',18,'     proxyuser[username][/password][@connect_identifier]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',19,' NOTE: Brackets around username in proxy are required syntax');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('CONNECT',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',2,' COPY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',5,' Copies data from a query to a table in the same or another');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',6,' database. COPY supports CHAR, DATE, LONG, NUMBER and VARCHAR2.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',8,' COPY {FROM database | TO database | FROM database TO database}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',9,'            {APPEND|CREATE|INSERT|REPLACE} destination_table');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',10,'            [(column, column, column, ...)] USING query');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',12,' where database has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',13,'     username[/password]@connect_identifier');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('COPY',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',2,' DEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',5,' Specifies a substitution variable and assigns a CHAR value to it, or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',6,' lists the value and variable type of a single variable or all variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',8,' DEF[INE] [variable] | [variable = text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEFINE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',2,' DEL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',5,' Deletes one or more lines of the SQL buffer. The buffer has no');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',6,' command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',8,' DEL [n | n m | n * | n LAST | * | * n | * LAST | LAST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DEL',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',2,' DESCRIBE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',5,' Lists the column definitions for a table, view, or synonym,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',6,' or the specifications for a function or procedure.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',8,' DESC[RIBE] {[schema.]object[@connect_identifier]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',2,' DISCONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',3,' ----------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',5,' Commits pending changes to the database and logs the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',6,' user out of Oracle, but does not exit SQL*Plus.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',7,' In SQL*Plus command line, use EXIT or QUIT to log out of Oracle');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',8,' and return control to your computer''s operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',10,' DISC[ONNECT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',2,' EDIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',5,' Invokes an operating system text editor on the contents of the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',6,' specified file or on the contents of the SQL buffer. The buffer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',7,' has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',9,' ED[IT] [file_name[.ext]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EDIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',2,' EXECUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',5,' Executes a single PL/SQL statement or runs a stored procedure.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',7,' EXEC[UTE] statement');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXECUTE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',2,' EXIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',8,' {EXIT|QUIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',9,'   [COMMIT|ROLLBACK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('EXIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',2,' GET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',5,' Loads a SQL statement or PL/SQL block from a script into the SQL buffer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',6,' The buffer has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',8,' GET [FILE] file_name[.ext] [LIST | NOLIST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('GET',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',2,' HELP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',5,' Accesses this command line help system. Enter HELP INDEX or ? INDEX');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',6,' for a list of topics.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',8,' You can view SQL*Plus resources at');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',9,'     http://www.oracle.com/technology/documentation/');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',11,' ******************************************************************************');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',12,' **  Top 12.2 features:                                                      **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',13,' **    - Fast retrieval of data as CSV for use in applications like          **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',14,' **      SQL*Loader. Use SQLPLUS -M "CSV ON" or SET MARKUP CSV ON            **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',15,' **    - Improved defaults and optimizations for reports. Use SQLPLUS -F     **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',16,' **    - Command recall. Use SET HISTORY ON and HISTORY to list previous     **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',17,' **      commands.                                                           **');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',18,' ******************************************************************************');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',19,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',20,' HELP|? [topic]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HELP',21,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',2,' HISTORY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',5,' Stores, lists, executes, edits of the commands');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',6,' entered during the current SQL*Plus session.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',8,' HIST[ORY] [N {RUN | EDIT | DEL[ETE]}] | [CLEAR]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',10,' N is the entry number listed in the history list.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',11,' Use this number to recall, edit or delete the command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',13,' Example:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',14,' HIST 3 RUN - will run the 3rd entry from the list.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',16,' HIST[ORY] without any option will list all entries in the list.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HISTORY',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',2,' HOST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',5,' Executes an operating system command without leaving SQL*Plus.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',6,' Enter HOST without command to display an operating system prompt.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',7,' You can then enter multiple operating system commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',9,' HO[ST] [command]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('HOST',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',2,'Enter Help [topic] for help.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',3,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',4,' @             COPY         PASSWORD                 SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',5,' @@            DEFINE       PAUSE                    SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',6,' /             DEL          PRINT                    SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',7,' ACCEPT        DESCRIBE     PROMPT                   SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',8,' APPEND        DISCONNECT   QUIT                     START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',9,' ARCHIVE LOG   EDIT         RECOVER                  STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',10,' ATTRIBUTE     EXECUTE      REMARK                   STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',11,' BREAK         EXIT         REPFOOTER                TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',12,' BTITLE        GET          REPHEADER                TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',13,' CHANGE        HELP         RESERVED WORDS (SQL)     UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',14,' CLEAR         HISTORY      RESERVED WORDS (PL/SQL)  VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',15,' COLUMN        HOST         RUN                      WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',16,' COMPUTE       INPUT        SAVE                     WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',17,' CONNECT       LIST         SET                      XQUERY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INDEX',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',2,' INPUT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',5,' Adds one or more new lines of text after the current line in the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',6,' SQL buffer. The buffer has no command history list and does not');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',7,' record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',9,' I[NPUT] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('INPUT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',2,' LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',5,' Lists one or more lines of the most recently executed SQL command');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',6,' or PL/SQL block which is stored in the SQL buffer. Enter LIST with');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',7,' no clauses to list all lines. In SQL*Plus command-line you can also');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',8,' use ";" to list all the lines in the SQL buffer. The buffer has no');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',9,' command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',11,' L[IST] [n | n m | n  * | n LAST | * | * n | * LAST | LAST]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('LIST',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',2,' Menu');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',5,' Enter HELP INDEX for a list of help topics.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('MENU',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',2,' PASSWORD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',5,' Allows you to change a password without displaying it on an input device.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',7,' PASSW[ORD] [username]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PASSWORD',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',2,' PAUSE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',5,' Displays the specified text then waits for the user to press RETURN.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',7,' PAU[SE] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PAUSE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',2,' PRINT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',5,' Displays the current values of bind variables, or lists all bind');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',6,' variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',8,' PRINT [variable ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PRINT',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',2,' PROMPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',5,' Sends the specified message or a blank line to the user''s screen.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',7,' PRO[MPT] [text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('PROMPT',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',2,' QUIT (Identical to EXIT)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',8,' {QUIT|EXIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',9,'   [COMMIT|ROLLBACK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('QUIT',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',2,' RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',5,' Performs media recovery on one or more tablespaces, one or more');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',6,' datafiles, or the entire database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',8,' RECOVER {general | managed} | BEGIN BACKUP | END BACKUP}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',10,' where the general clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',11,'   [AUTOMATIC] [FROM location]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',12,'   { {full_database_recovery | partial_database_recovery |LOGFILE filename}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',13,'   [ {TEST | ALLOW integer CORRUPTION | parallel_clause}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',14,'   [TEST | ALLOW integer CORRUPTION | parallel_clause] ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',15,'   |CONTINUE [DEFAULT]|CANCEL}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',16,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',17,'   where the full_database_recovery clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',18,'     [STANDBY] DATABASE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',19,'     [{ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',20,'      | USING BACKUP CONTROLFILE}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',21,'      [ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',22,'      | USING BACKUP CONTROLFILE] ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',23,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',24,'   where the partial_database_recovery clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',25,'     {TABLESPACE tablespace [, tablespace] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',26,'      | DATAFILE filename | filenumber} [,filename | filenumber] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',27,'      | STANDBY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',28,'       {TABLESPACE tablespace [, tablespace] ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',29,'       | DATAFILE filename | filenumber} [,filename | filenumber] ...}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',30,'     UNTIL [CONSISTENT WITH] CONTROLFILE }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',31,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',32,' where the parallel clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',33,'   {NOPARALLEL | PARALLEL [integer]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',34,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',35,' where the managed clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',36,'   MANAGED STANDBY DATABASE recover_clause | cancel_clause | finish_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',37,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',38,' where the recover_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',39,'   {{DISCONNECT [FROM SESSION] | {TIMEOUT integer | NOTIMEOUT} }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',40,'    |{NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',41,'    |{EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',42,'    | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',43,'    | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',44,'              | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',45,'      [DISCONNECT [FROM SESSION ]  | {TIMEOUT integer | NOTIMEOUT}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',46,'       | {NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',47,'       | {EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',48,'       | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',49,'       | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',50,'                 | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} ]...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',51,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',52,' where the cancel_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',53,'   CANCEL [IMMEDIATE] [WAIT | NOWAIT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',54,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',55,' where the finish_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',56,'   [DISCONNECT [FROM SESSION]] [parallel_clause]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',57,'   FINISH [SKIP [STANDBY LOGFILE]] [WAIT | NOWAIT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',58,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',59,' where the parallel_clause has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',60,'   {NOPARALLEL | PARALLEL [integer] }');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RECOVER',61,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',2,' REMARK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',5,' Begins a comment in a script. SQL*Plus does not interpret the comment');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',6,' as a command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',8,' REM[ARK]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REMARK',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',2,' REPFOOTER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',5,' Places and formats a footer at the bottom of a report, or lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',6,' REPFOOTER definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',8,' REPF[OOTER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',11,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',13,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',2,' REPHEADER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',3,' ---------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',5,' Places and formats a header at the top of a report, or lists the');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',6,' REPHEADER definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',8,' REPH[EADER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',10,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',11,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',13,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('REPHEADER',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',2,' RESERVED WORDS (SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',3,' --------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',5,' SQL Reserved Words have special meaning in SQL, and may not be used for');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',6,' identifier names unless enclosed in "quotes".');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',8,' An asterisk (*) indicates words are also ANSI Reserved Words.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',10,' Oracle prefixes implicitly generated schema object and subobject names');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',11,' with "SYS_". To avoid name resolution conflict, Oracle discourages you');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',12,' from prefixing your schema object and subobject names with "SYS_".');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',14,' ACCESS          DEFAULT*         INTEGER*        ONLINE          START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',15,' ADD*            DELETE*          INTERSECT*      OPTION*         SUCCESSFUL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',16,' ALL*            DESC*            INTO*           OR*             SYNONYM');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',17,' ALTER*          DISTINCT*        IS*             ORDER*          SYSDATE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',18,' AND*            DROP*            LEVEL*          PCTFREE         TABLE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',19,' ANY*            ELSE*            LIKE*           PRIOR*          THEN*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',20,' AS*             EXCLUSIVE        LOCK            PRIVILEGES*     TO*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',21,' ASC*            EXISTS           LONG            PUBLIC*         TRIGGER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',22,' AUDIT           FILE             MAXEXTENTS      RAW             UID');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',23,' BETWEEN*        FLOAT*           MINUS           RENAME          UNION*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',24,' BY*             FOR*             MLSLABEL        RESOURCE        UNIQUE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',25,' CHAR*           FROM*            MODE            REVOKE*         UPDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',26,' CHECK*          GRANT*           MODIFY          ROW             USER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',27,' CLUSTER         GROUP*           NOAUDIT         ROWID           VALIDATE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',28,' COLUMN          HAVING*          NOCOMPRESS      ROWNUM          VALUES*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',29,' COMMENT         IDENTIFIED       NOT*            ROWS*           VARCHAR*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',30,' COMPRESS        IMMEDIATE*       NOWAIT          SELECT*         VARCHAR2');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',31,' CONNECT*        IN*              NULL*           SESSION*        VIEW*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',32,' CREATE*         INCREMENT        NUMBER          SET*            WHENEVER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',33,' CURRENT*        INDEX            OF*             SHARE           WHERE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',34,' DATE*           INITIAL          OFFLINE         SIZE*           WITH*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',35,' DECIMAL*        INSERT*          ON*             SMALLINT*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',36,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',2,' RESERVED WORDS (PL/SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',3,' -----------------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',5,' PL/SQL Reserved Words have special meaning in PL/SQL, and may not be used');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',6,' for identifier names (unless enclosed in "quotes").');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',8,' An asterisk (*) indicates words are also SQL Reserved Words.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',10,' ALL*            DESC*           JAVA            PACKAGE         SUBTYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',11,' ALTER*          DISTINCT*       LEVEL*          PARTITION       SUCCESSFUL*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',12,' AND*            DO              LIKE*           PCTFREE*        SUM');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',13,' ANY*            DROP*           LIMITED         PLS_INTEGER     SYNONYM*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',14,' ARRAY           ELSE*           LOCK*           POSITIVE        SYSDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',15,' AS*             ELSIF           LONG*           POSITIVEN       TABLE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',16,' ASC*            END             LOOP            PRAGMA          THEN*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',17,' AT              EXCEPTION       MAX             PRIOR*          TIME');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',18,' AUTHID          EXCLUSIVE*      MIN             PRIVATE         TIMESTAMP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',19,' AVG             EXECUTE         MINUS*          PROCEDURE       TIMEZONE_ABBR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',20,' BEGIN           EXISTS*         MINUTE          PUBLIC*         TIMEZONE_HOUR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',21,' BETWEEN*        EXIT            MLSLABEL*       RAISE           TIMEZONE_MINUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',22,' BINARY_INTEGER  EXTENDS         MOD             RANGE           TIMEZONE_REGION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',23,' BODY            EXTRACT         MODE*           RAW*            TO*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',24,' BOOLEAN         FALSE           MONTH           REAL            TRIGGER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',25,' BULK            FETCH           NATURAL         RECORD          TRUE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',26,' BY*             FLOAT*          NATURALN        REF             TYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',27,' CHAR*           FOR*            NEW             RELEASE         UI');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',28,' CHAR_BASE       FORALL          NEXTVAL         RETURN          UNION*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',29,' CHECK*          FROM*           NOCOPY          REVERSE         UNIQUE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',30,' CLOSE           FUNCTION        NOT*            ROLLBACK        UPDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',31,' CLUSTER*        GOTO            NOWAIT*         ROW*            USE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',32,' COALESCE        GROUP*          NULL*           ROWID*          USER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',33,' COLLECT         HAVING*         NULLIF          ROWNUM*         VALIDATE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',34,' COMMENT*        HEAP            NUMBER*         ROWTYPE         VALUES*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',35,' COMMIT          HOUR            NUMBER_BASE     SAVEPOINT       VARCHAR*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',36,' COMPRESS*       IF              OCIROWID        SECOND          VARCHAR2*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',37,' CONNECT*        IMMEDIATE*      OF*             SELECT*         VARIANCE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',38,' CONSTANT        IN*             ON*             SEPERATE        VIEW*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',39,' CREATE*         INDEX*          OPAQUE          SET*            WHEN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',40,' CURRENT*        INDICATOR       OPEN            SHARE*          WHENEVER*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',41,' CURRVAL         INSERT*         OPERATOR        SMALLINT*       WHERE*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',42,' CURSOR          INTEGER*        OPTION*         SPACE           WHILE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',43,' DATE*           INTERFACE       OR*             SQL             WITH*');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',44,' DAY             INTERSECT*      ORDER*          SQLCODE         WORK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',45,' DECIMAL*        INTERVAL        ORGANIZATION    SQLERRM         WRITE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',46,' DECLARE         INTO*           OTHERS          START*          YEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',47,' DEFAULT*        IS*             OUT             STDDEV          ZONE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',48,' DELETE*         ISOLATION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',49,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',2,' RUN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',5,' Lists and executes the most recently executed SQL command or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',6,' PL/SQL block which is stored in the SQL buffer. The buffer has');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',7,' no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',9,' R[UN]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('RUN',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',2,' SAVE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',5,' Saves the contents of the SQL buffer in a script. The');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',6,' buffer has no command history list and does not record SQL*Plus commands.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',8,' SAV[E] [FILE] file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SAVE',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',2,' SET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',3,' ---');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',5,' Sets a system variable to alter the SQL*Plus environment settings');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',6,' for your current session. For example, to:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',7,'     -   set the display width for data');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',8,'     -   customize HTML formatting');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',9,'     -   enable or disable printing of column headings');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',10,'     -   set the number of lines per page');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',12,' SET system_variable value');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',14,' where system_variable and value represent one of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',16,'   APPI[NFO]{OFF|ON|text}                   NEWP[AGE] {1|n|NONE}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',17,'   ARRAY[SIZE] {15|n}                       NULL text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',18,'   AUTO[COMMIT] {OFF|ON|IMM[EDIATE]|n}      NUMF[ORMAT] format');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',19,'   AUTOP[RINT] {OFF|ON}                     NUM[WIDTH] {10|n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',20,'   AUTORECOVERY {OFF|ON}                    PAGES[IZE] {14|n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',21,'   AUTOT[RACE] {OFF|ON|TRACE[ONLY]}         PAU[SE] {OFF|ON|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',22,'     [EXP[LAIN]] [STAT[ISTICS]]             RECSEP {WR[APPED]|EA[CH]|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',23,'   BLO[CKTERMINATOR] {.|c|ON|OFF}           RECSEPCHAR {_|c}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',24,'   CMDS[EP] {;|c|OFF|ON}                    ROWPREF[ETCH] {n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',25,'   COLINVI[SIBLE] {OFF|ON}                  SERVEROUT[PUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',26,'   COLSEP {_|text}                            [SIZE {n | UNLIMITED}]|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',27,'   CON[CAT] {.|c|ON|OFF}                      [FOR[MAT]  {WRA[PPED]|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',28,'   COPYC[OMMIT] {0|n}                          WOR[D_WRAPPED]|TRU[NCATED]}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',29,'   COPYTYPECHECK {ON|OFF}                   SHIFT[INOUT] {VIS[IBLE] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',30,'   DEF[INE] {&|c|ON|OFF}                      INV[ISIBLE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',31,'   DESCRIBE [DEPTH {1|n|ALL}]               SHOW[MODE] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',32,'     [LINENUM {OFF|ON}] [INDENT {OFF|ON}]   SQLBL[ANKLINES] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',33,'   ECHO {OFF|ON}                            SQLC[ASE] {MIX[ED] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',34,'   EDITF[ILE] file_name[.ext]                 LO[WER] | UP[PER]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',35,'   EMB[EDDED] {OFF|ON}                      SQLCO[NTINUE] {> | text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',36,'   ERRORL[OGGING] {ON|OFF}                  SQLN[UMBER] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',37,'     [TABLE [schema.]tablename]             SQLPLUSCOMPAT[IBILITY] {x.y[.z]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',38,'     [TRUNCATE] [IDENTIFIER identifier]     SQLPRE[FIX] {#|c}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',39,'   ESC[APE] {\|c|OFF|ON}                    SQLP[ROMPT] {SQL>|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',40,'   ESCCHAR {@|?|%|$|OFF}                    SQLT[ERMINATOR] {;|c|ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',41,'   EXITC[OMMIT] {ON|OFF}                    STATEMENTC[ACHE] {n}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',42,'   FEED[BACK] {6|n|ON|OFF|ONLY}[SQL_ID]     SUF[FIX] {SQL|text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',43,'   FLAGGER {OFF|ENTRY|INTERMED[IATE]|FULL}  TAB {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',44,'   FLU[SH] {ON|OFF}                         TERM[OUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',45,'   HEA[DING] {ON|OFF}                       TI[ME] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',46,'   HEADS[EP] {||c|ON|OFF}                   TIMI[NG] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',47,'   HIST[ORY] {ON|OFF|N}                     TRIM[OUT] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',48,'   INSTANCE [instance_path|LOCAL]           TRIMS[POOL] {OFF|ON}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',49,'   LIN[ESIZE] {80|n|WINDOW}                 UND[ERLINE] {-|c|ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',50,'   LOBOF[FSET] {1|n}                        VER[IFY] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',51,'   LOBPREF[ETCH] {n}                        WRA[P] {ON|OFF}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',52,'   LOGSOURCE [pathname]                     XQUERY {BASEURI text|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',53,'   LONG {80|n}                                ORDERING{UNORDERED|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',54,'   LONGC[HUNKSIZE] {80|n}                     ORDERED|DEFAULT}|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',55,'   MARK[UP] {HTML html_option|CSV csv_option} NODE{BYVALUE|BYREFERENCE|');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',56,'     html_option;                             DEFAULT}|CONTEXT text}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',57,'       {ON|OFF} [HEAD text] [BODY text]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',58,'       [TABLE {ON|OFF}] [ENTMAP {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',59,'       [SPOOL {ON|OFF}] [PRE[FORMAT] {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',60,'     csv_option:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',61,'       {ON|OFF} [DELIM[ITER] {c}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',62,'       [QUOTE {ON|OFF}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SET',63,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',2,' SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',3,' ----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',5,' Shows the value of a SQL*Plus system variable, or the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',6,' SQL*Plus environment. SHOW SGA requires a DBA privileged login.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',8,' SHO[W] option');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',10,' where option represents one of the following terms or clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',11,'     system_variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',12,'     ALL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',13,'     BTI[TLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',14,'     CON_ID');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',15,'     CON_NAME');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',16,'     EDITION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',17,'     ERR[ORS] [{ANALYTIC VIEW | ATTRIBUTE DIMENSION | HIERARCHY | FUNCTION');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',18,'        | PROCEDURE | PACKAGE | PACKAGE BODY | TRIGGER | VIEW | TYPE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',19,'        | TYPE BODY | DIMENSION | JAVA CLASS} [schema.]name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',20,'     LNO');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',21,'     PARAMETERS [parameter_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',22,'     PDBS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',23,'     PNO');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',24,'     RECYC[LEBIN] [original_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',25,'     REL[EASE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',26,'     REPF[OOTER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',27,'     REPH[EADER]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',28,'     SGA');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',29,'     SPOO[L]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',30,'     SPPARAMETERS [parameter_name]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',31,'     SQLCODE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',32,'     TTI[TLE]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',33,'     USER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHOW',34,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',2,' SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',5,' Shuts down a currently running Oracle Database instance, optionally');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',6,' closing and dismounting a database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',8,' SHUTDOWN [ABORT|IMMEDIATE|NORMAL|TRANSACTIONAL [LOCAL]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',2,' SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',5,' Stores query results in a file, or optionally sends the file to a printer.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',7,' SPO[OL] [file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]] | OFF | OUT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SPOOL',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',2,' SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',5,' Starts SQL*Plus from the operating system prompt.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',7,' SQLPLUS [ [option] [logon|/NOLOG] [start] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',9,' where option has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',10,'     -H[ELP]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',11,'     | -V[ERSION]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',12,'     | [[-C[OMPATIBILITY] x.y[.z]] [-L[OGON]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',13,'        [-M[ARKUP] markup_option] [-NOLOGINTIME] [-R[ESTRICT] {1|2|3}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',14,'	[-S[ILENT]] ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',15,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',16,' and where markup_option has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',17,'     {HTML html_options|CSV csv_options}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',18,'     See SET MARKUP command for detailed HTML and CSV options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',19,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',20,' and where logon has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',21,'     {username[/password][@connect_identifier] | /}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',22,'     [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',23,'     [edition=value]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',24,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',25,' and where start has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',26,'     @{url|filename[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',27,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',2,' START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',5,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',6,' called from the local file system or a web server.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',8,' STA[RT] {url|file_name[.ext]} [arg ...]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',10,' where url supports HTTP and FTP protocols in the form:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',11,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',12,'    http://host.domain/script.sql');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('START',13,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',2,' STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',3,' -------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',5,' Starts an Oracle instance with several options, including mounting,');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',6,' and opening a database.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',8,' STARTUP db_options | cdb_options | upgrade_options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',10,' where db_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',11,'    [FORCE] [RESTRICT] [PFILE=filename] [QUIET] [ MOUNT [dbname] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',12,'    [ OPEN [open_db_options] [dbname] ] |');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',13,'    NOMOUNT ]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',15,'    where open_db_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',16,'       READ {ONLY | WRITE [RECOVER]} | RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',18,' where cdb_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',19,'    root_connection_options | pdb_connection_options');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',20,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',21,' where root_connection_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',22,'    PLUGGABLE DATABASE pdbname');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',23,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',24,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',25,' where pdb_connection_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',26,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',27,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',28,'    where open_pdb_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',29,'       READ WRITE | READ ONLY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',30,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',31,' and where upgrade_options has the following syntax:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',32,'    [PFILE=filename] {UPGRADE | DOWNGRADE} [QUIET]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STARTUP',33,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',2,' STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',3,' -----');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',5,' Saves attributes of the current SQL*Plus environment in a script.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',6,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',7,' STORE {SET} file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('STORE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',2,' TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',5,' Records timing data for an elapsed time period, lists the current');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',6,' timer''s name and timing data, or lists the number of active timers.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',8,' TIMI[NG] [START text|SHOW|STOP]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TIMING',9,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',2,' TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',5,' Places and formats a title at the top of each report page.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',6,' Enter TTITLE with no clause to list its current definition.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',8,' The old form of TTITLE is used if only a single word or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',9,' a string in quotes follows the TTITLE command.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',11,' TTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',13,' where printspec represents one or more of the following clauses:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',14,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',15,'     COL n          LE[FT]        BOLD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',16,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',17,'     TAB n          R[IGHT]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TTITLE',18,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',2,' UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',5,' Deletes one or more substitution variables that you defined either');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',6,' explicitly (with the DEFINE command), or implicitly (with a START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',7,' command argument).');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',9,' UNDEF[INE] variable ...');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',2,' VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',3,' --------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',5,' Declares a bind variable that can be referenced in PL/SQL, or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',6,' lists the current display characteristics for a single variable');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',7,' or all variables.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',9,' VAR[IABLE] [<variable> [type][=value]]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',11,' where type represents one of the following:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',12,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',13,'     NUMBER         CHAR          CHAR (n [CHAR|BYTE])');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',14,'     NCHAR          NCHAR (n)     VARCHAR2 (n [CHAR|BYTE])');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',15,'     NVARCHAR2 (n)  CLOB          NCLOB');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',16,'     REFCURSOR      BINARY_FLOAT  BINARY_DOUBLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',17,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',18,' One can assign value to a variable for input with the new syntax');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',19,' Example:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',20,'   VARIABLE tmp_var VAHRCHAR2(10)=Smith');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',21,'   or');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',22,'   VARIABLE tmp_var VAHRCHAR2(10)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',23,'   VARIABLE tmp_var=Smith');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',24,'   EXECUTE DBMS_OUTPUT.PUT_LINE(:tmp_var)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('VARIABLE',25,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',2,' WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',3,' ----------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',5,' Performs the specified action (exits SQL*Plus by default) if an');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',6,' operating system error occurs (such as a file writing error).');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',8,' WHENEVER OSERROR {EXIT [SUCCESS|FAILURE|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',9,'                   [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',2,' WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',3,' -----------------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',5,' Performs the specified action (exits SQL*Plus by default) if a');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',6,' SQL command or PL/SQL block generates an error.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',7,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',8,' WHENEVER SQLERROR {EXIT [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',9,'                    [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',2,' XQUERY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',3,' ------');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',4,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',5,' Performs an XQuery 1.0 query on a specified database. Attempting to use');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',6,' XQUERY on a database earlier than Oracle Database 10g (Release 2) generates');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',7,' an error.');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',8,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',9,' XQUERY xquery_statement');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('XQUERY',10,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',1,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',2,' Help is available on the following topics:');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',3,null);
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',11,'/');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',12,'@');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',13,'@@');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',14,'ACCEPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',15,'APPEND');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',16,'ARCHIVE LOG');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',17,'ATTRIBUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',18,'BREAK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',19,'BTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',20,'CHANGE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',21,'CLEAR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',22,'COLUMN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',23,'COMPUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',24,'CONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',25,'COPY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',26,'DEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',27,'DEL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',28,'DESCRIBE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',29,'DISCONNECT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',30,'EDIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',31,'EXECUTE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',32,'EXIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',33,'GET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',34,'HELP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',35,'HISTORY');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',36,'HOST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',37,'INDEX');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',38,'INPUT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',39,'LIST');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',40,'MENU');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',41,'PASSWORD');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',42,'PAUSE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',43,'PRINT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',44,'PROMPT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',45,'QUIT');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',46,'RECOVER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',47,'REMARK');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',48,'REPFOOTER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',49,'REPHEADER');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',50,'RESERVED WORDS (PL/SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',51,'RESERVED WORDS (SQL)');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',52,'RUN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',53,'SAVE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',54,'SET');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',55,'SHOW');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',56,'SHUTDOWN');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',57,'SPOOL');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',58,'SQLPLUS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',59,'START');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',60,'STARTUP');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',61,'STORE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',62,'TIMING');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',63,'TOPICS');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',64,'TTITLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',65,'UNDEFINE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',66,'VARIABLE');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',67,'WHENEVER OSERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',68,'WHENEVER SQLERROR');
Insert into SYSTEM.HELP (TOPIC,SEQ,INFO) values ('TOPICS',69,'XQUERY');
REM INSERTING into SYSTEM.HS_CODE
SET DEFINE OFF;
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (1,'01012100','Pure-bred breeding animals of horses..',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (2,'01012900','Other horses',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (3,'01013000','Asses',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (4,'01019000','LIVE HORSES,ASSES,MULES AND HINNIES,NES',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (5,'01022100','Pure-bred breeding animals of cattle',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (6,'01022900','Other cattle',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (7,'01023100','Pure-bred breeding animals of buffalo',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (8,'01023900','Other buffalo',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (9,'01029010','Other pure-bred breeding animals',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (10,'01029090','Other live bovine animal',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (11,'01031000','Live Pure-Bred Breeding Swine',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (12,'01039100','Live Swine Weighing <50kg (Excl. Pure-Bred Breeding)',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (13,'01039200','Live Swine Weighing >=50kg (Excl. Pure-Bred Breeding)',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (14,'01041000','Live sheep',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (15,'01042000','Live Goats',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (16,'01051110','Fowls Of The Species Gallus Domestic(Parent Stock One Day Chick)',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (17,'01051190','Live Fowls Gallus,Domesticus<=185g, Excl.Parent Stock Of One Day Chick',25,0,0,5,3,0,33,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (18,'01051210','Live Turkeys Weighing <=185g, (Parent Stock Of One Day Chick)',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (19,'01051290','Live Turkeys Weighing <=185g, (Excl.Parent Stock Of One Day Chick)',25,0,0,5,3,0,33,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (20,'01051310','Parent stock of one day chick of ducks',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (21,'01051390','Other ducks',25,0,0,5,3,0,33,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (22,'01051410','Parent stock of one day chick of geese',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (23,'01051490','Other Geese',25,0,0,5,3,0,33,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (24,'01051510','Parent stock of one day chick of guinea  fowls',0,0,0,0,0,0,0,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (25,'01051590','Other fowls',25,0,0,5,3,0,33,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (26,'01059400','Fowls of the species Gallus domesticus',25,0,0,5,3,0,33,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (27,'01059900','Live Ducks, Geese, Turkeys And Guinea Fowls Weighing >185g',25,0,0,5,3,0,33,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (28,'01061100','MAMMALS, PRIMATES',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (29,'01061200','WHALES,DOLPHINS &...;SEALS,SEA LIONS ok(MAMMALS OF THE S',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (30,'01061300','Camels and other camelids ( Camelidae)',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (31,'01061400','Rabbits and hares',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (32,'01061900','MAMMALS, NES',5,0,0,5,0,0,10,'cust_tarrif',null,null,'2022');
Insert into SYSTEM.HS_CODE (ID,HS_CODE,DESCRIPTION,CD,SD,VAT,AIT,RD,AT,TTI,SCHEDULE,YEAR_START,YEAR_END,CALCULATE_YEAR) values (33,'01012100','Pure-bred breeding animals of horses..',5,0,0,5,0,0,10,'cust_tarrif',to_date('01-07-2021','DD-MM-YYYY'),to_date('30-06-2022','DD-MM-YYYY'),'2022');
REM INSERTING into SYSTEM.INVENTORY_STOCK
SET DEFINE OFF;
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (202,22,null,null,null,null,null,null,null,null,141,null,null,0,0,'increment',to_date('01-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (203,24,null,null,null,null,null,null,null,null,142,null,null,0,0,'increment',to_date('01-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (204,23,null,null,null,null,null,null,null,null,null,102,null,0,0,'increment',to_date('01-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (205,22,181,null,null,null,null,null,null,null,null,null,0,1000,1000,'increment',to_date('17-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (206,24,182,null,null,null,null,null,null,null,null,null,0,6000,6000,'increment',to_date('17-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (207,62,null,null,null,null,null,null,null,null,143,null,null,300,300,'increment',to_date('01-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (208,61,null,null,null,null,null,null,null,null,null,103,null,0,0,'increment',to_date('01-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (209,62,183,null,null,null,null,null,null,null,null,null,300,4440,4740,'increment',to_date('17-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (210,63,null,null,null,null,null,null,null,null,144,null,null,0,0,'increment',to_date('01-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (211,63,184,null,null,null,null,null,null,null,null,null,0,2342,2342,'increment',to_date('17-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (212,61,null,81,null,null,null,null,null,null,null,null,0,100,100,'increment',to_date('18-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (213,63,null,81,null,null,null,null,null,null,null,null,2342,600,1742,'decrement',to_date('18-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (214,22,null,81,null,null,null,null,null,null,null,null,1000,400,600,'decrement',to_date('18-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (215,61,null,null,121,null,null,null,null,null,null,null,100,15,85,'decrement',to_date('18-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (216,61,null,null,122,null,null,null,null,null,null,null,0,5,80,'decrement',to_date('18-09-2022','DD-MM-YYYY'),21);
Insert into SYSTEM.INVENTORY_STOCK (ID,ITEM_ID,PURCHASE_ID,PRODUCTION_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID) values (217,61,null,null,null,41,null,null,null,null,null,null,80,4,76,'decrement',to_date('18-09-2022','DD-MM-YYYY'),21);
REM INSERTING into SYSTEM.INVOICE
SET DEFINE OFF;
Insert into SYSTEM.INVOICE (ID,INVOICE_NO,SALES_ID,SC_SALES_ID,SALES_AMOUNT,INVOICE_DATE,USER_ID) values (101,'SO-20220918-0001',121,null,15246,to_date('18-09-2022','DD-MM-YYYY'),null);
Insert into SYSTEM.INVOICE (ID,INVOICE_NO,SALES_ID,SC_SALES_ID,SALES_AMOUNT,INVOICE_DATE,USER_ID) values (102,'SO-20220918-0102',122,null,4728,to_date('18-09-2022','DD-MM-YYYY'),null);
REM INSERTING into SYSTEM.ITEMS
SET DEFINE OFF;
Insert into SYSTEM.ITEMS (ID,ITEM_NAME,ITEM_TYPE,HS_CODE,HS_CODE_ID,CALCULATE_YEAR,UNIT_ID,STOCK_STATUS,STATUS,USER_ID) values (22,'Test Item','raw_materials','01012100',1,'2022',1,2,0,21);
Insert into SYSTEM.ITEMS (ID,ITEM_NAME,ITEM_TYPE,HS_CODE,HS_CODE_ID,CALCULATE_YEAR,UNIT_ID,STOCK_STATUS,STATUS,USER_ID) values (23,'Test Finish Goods','finish_goods','01012900',2,'2022',3,2,0,21);
Insert into SYSTEM.ITEMS (ID,ITEM_NAME,ITEM_TYPE,HS_CODE,HS_CODE_ID,CALCULATE_YEAR,UNIT_ID,STOCK_STATUS,STATUS,USER_ID) values (24,'Test Item 1','raw_materials','01019000',4,'2022',1,2,0,21);
Insert into SYSTEM.ITEMS (ID,ITEM_NAME,ITEM_TYPE,HS_CODE,HS_CODE_ID,CALCULATE_YEAR,UNIT_ID,STOCK_STATUS,STATUS,USER_ID) values (41,'Service Item','service','01061400',31,'2022',1,1,0,21);
Insert into SYSTEM.ITEMS (ID,ITEM_NAME,ITEM_TYPE,HS_CODE,HS_CODE_ID,CALCULATE_YEAR,UNIT_ID,STOCK_STATUS,STATUS,USER_ID) values (61,'SQ Cables','finish_goods','01022100',5,'2022',1,2,0,21);
Insert into SYSTEM.ITEMS (ID,ITEM_NAME,ITEM_TYPE,HS_CODE,HS_CODE_ID,CALCULATE_YEAR,UNIT_ID,STOCK_STATUS,STATUS,USER_ID) values (62,'Silver Wire','raw_materials','01061900',32,'2022',2,2,0,21);
Insert into SYSTEM.ITEMS (ID,ITEM_NAME,ITEM_TYPE,HS_CODE,HS_CODE_ID,CALCULATE_YEAR,UNIT_ID,STOCK_STATUS,STATUS,USER_ID) values (63,'Carbon Coated FR','raw_materials','01061400',31,'2022',1,2,0,21);
REM INSERTING into SYSTEM.ITEM_BOM_TABLE
SET DEFINE OFF;
Insert into SYSTEM.ITEM_BOM_TABLE (ID,ITEM_SKU,BOM_NO,SUBMISSION_DATE,EFFECTIVE_DATE,ITEM_VAT,PRODUCT_CODE,ITEM_ID,UNIT_ID,ITEM_DESCRIPTION,REMARKS,REFERENCE,WEIGHT,SALES_PRICE,HS_CODE_ID,SERVICE_CODE,STATUS,DELETE_STATUS,DELETE_DATE,USER_ID,MRP_TYPE,BOM_TYPE) values (81,'03048590','bom-20220917-0001',to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),null,null,61,null,null,'Add',null,null,955.06,null,null,1,0,null,21,0,1);
REM INSERTING into SYSTEM.ITEM_COSTING
SET DEFINE OFF;
Insert into SYSTEM.ITEM_COSTING (ID,ITEM_ID,BOM_ID,COSTING_ID,COST_AMOUNT,C_DATE,U_DATE,USER_ID) values (81,61,81,4,40,null,null,21);
REM INSERTING into SYSTEM.ITEM_RAW_MATERIALS
SET DEFINE OFF;
Insert into SYSTEM.ITEM_RAW_MATERIALS (ID,BOM_ID,MATERIAL_ID,MATERIAL_WASTAGE,UNIT_ADD,MATERIAL_QTY,MATERIAL_PRICE,WASTAGE_QTY,WASTAGE_AMOUNT,MATERIAL_RATE,TOTAL_AMOUNT,C_DATE,U_DATE,USER_ID) values (81,81,63,1,null,6,510,0,5,85,515,null,null,21);
Insert into SYSTEM.ITEM_RAW_MATERIALS (ID,BOM_ID,MATERIAL_ID,MATERIAL_WASTAGE,UNIT_ADD,MATERIAL_QTY,MATERIAL_PRICE,WASTAGE_QTY,WASTAGE_AMOUNT,MATERIAL_RATE,TOTAL_AMOUNT,C_DATE,U_DATE,USER_ID) values (82,81,22,1,null,4,396,0,4,99,400,null,null,21);
REM INSERTING into SYSTEM.LOG
SET DEFINE OFF;
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (282,to_date('17-09-2022','DD-MM-YYYY'),21,'local purchse invoice no-');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (283,to_date('17-09-2022','DD-MM-YYYY'),21,'local purchse invoice no-');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (284,to_date('17-09-2022','DD-MM-YYYY'),21,'Add Item');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (285,to_date('17-09-2022','DD-MM-YYYY'),21,'Add Item');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (286,to_date('17-09-2022','DD-MM-YYYY'),21,'local purchse invoice no-');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (287,to_date('17-09-2022','DD-MM-YYYY'),21,'Add Item');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (288,to_date('17-09-2022','DD-MM-YYYY'),21,'Foreign purchase invoice no-PO-20220917-0184');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (289,to_date('17-09-2022','DD-MM-YYYY'),21,'Add BOM,BOM no-bom-20220917-0001');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (290,to_date('17-09-2022','DD-MM-YYYY'),21,'Edit Settings');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (291,to_date('17-09-2022','DD-MM-YYYY'),21,'Edit Settings');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (292,to_date('17-09-2022','DD-MM-YYYY'),21,'Edit Settings');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (293,to_date('17-09-2022','DD-MM-YYYY'),21,'Edit Settings');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (294,to_date('17-09-2022','DD-MM-YYYY'),21,'Edit Settings');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (295,to_date('18-09-2022','DD-MM-YYYY'),21,'Add Production, production invoice no-WPO-20220918-0001');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (296,to_date('18-09-2022','DD-MM-YYYY'),21,'Add local sales, sales invoice no-SO-20220918-0001');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (297,to_date('18-09-2022','DD-MM-YYYY'),21,'Add Foreign Sales, sales invoice no-SO-20220918-0102');
Insert into SYSTEM.LOG (ID,LOG_DATE,USER_ID,MSG) values (298,to_date('18-09-2022','DD-MM-YYYY'),21,'Add local sales, sales invoice no-SO-20220918-0103');
REM INSERTING into SYSTEM.LOGMNRC_CONCOL_GG
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_CON_GG
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_DBNAME_UID_MAP
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_GSBA
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_GSII
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_GTCS
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_GTLO
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_INDCOL_GG
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_IND_GG
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_SEQ_GG
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_SHARD_TS
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_TS
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRC_TSPART
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRGGC_GTCS
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRGGC_GTLO
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRP_CTAS_PART_MAP
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNRT_MDDL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_AGE_SPILL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_ATTRCOL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_ATTRIBUTE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_CCOL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_CDEF$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_COL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_COLTYPE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_CON$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_CONTAINER$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_DICTIONARY$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_DICTSTATE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_DID$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_ENC$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_ERROR$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_FILTER$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_GLOBAL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_GT_TAB_INCLUDE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_GT_USER_INCLUDE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_GT_XID_INCLUDE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_ICOL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_IDNSEQ$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_IND$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_INDCOMPART$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_INDPART$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_INDSUBPART$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_KOPM$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_LOB$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_LOBFRAG$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_LOG$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_LOGMNR_BUILDLOG
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_NTAB$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_OBJ$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_OPQTYPE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_PARAMETER$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_PARTOBJ$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_PDB_INFO$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_PROCESSED_LOG$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_PROFILE_PLSQL_STATS$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_PROFILE_TABLE_STATS$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_PROPS$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_REFCON$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_RESTART_CKPT$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_RESTART_CKPT_TXINFO$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_SEED$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_SESSION$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_SESSION_ACTIONS$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_SESSION_EVOLVE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_SHARD_TS
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_SPILL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_SUBCOLTYPE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_TAB$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_TABCOMPART$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_TABPART$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_TABSUBPART$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_TS$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_TYPE$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_UID$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGMNR_USER$
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$APPLY_MILESTONE
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$APPLY_PROGRESS
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$EDS_TABLES
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$EVENTS
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$FLASHBACK_SCN
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$HISTORY
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$PARAMETERS
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$PLSQL
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$SCN
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$SKIP
SET DEFINE OFF;
REM INSERTING into SYSTEM.LOGSTDBY$SKIP_SUPPORT
SET DEFINE OFF;
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOP_SECTION','DRVLSB','ADD_STOP_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ATTR_SECTION','DRVLSB','ADD_ATTR_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ATTR_SECTION','DRVLSB','ADD_ATTR_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_XML_SECTION','DRVLSB','ADD_XML_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_XML_SECTION','DRVLSB','ADD_XML_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_SECTION','DRVLSB','ADD_MDATA_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_SECTION','DRVLSB','ADD_MDATA_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_NDATA_SECTION','DRVLSB','ADD_NDATA_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_NDATA_SECTION','DRVLSB','ADD_NDATA_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MVDATA_SECTION','DRVLSB','ADD_MVDATA_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MVDATA_SECTION','DRVLSB','ADD_MVDATA_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_SECTION','DRVLSB','ADD_SDATA_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_SECTION','DRVLSB','ADD_SDATA_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_COLUMN','DRVLSB','ADD_SDATA_COLUMN_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_COLUMN','DRVLSB','ADD_SDATA_COLUMN_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_COLUMN','DRVLSB','ADD_MDATA_COLUMN_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_COLUMN','DRVLSB','ADD_MDATA_COLUMN_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SECTION','DRVLSB','REMOVE_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SECTION','DRVLSB','REMOVE_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_STOPLIST','DRVLSB','CREATE_STOPLIST_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_STOPLIST','DRVLSB','CREATE_STOPLIST_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_STOPLIST','DRVLSB','DROP_STOPLIST_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_STOPLIST','DRVLSB','DROP_STOPLIST_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPWORD','DRVLSB','ADD_STOPWORD_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPWORD','DRVLSB','ADD_STOPWORD_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPTHEME','DRVLSB','ADD_STOPTHEME_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPTHEME','DRVLSB','ADD_STOPTHEME_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPCLASS','DRVLSB','ADD_STOPCLASS_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPCLASS','DRVLSB','ADD_STOPCLASS_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_INDEX','DRVLSB','ADD_INDEX_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_INDEX','DRVLSB','ADD_INDEX_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_INDEX_SET','DRVLSB','CREATE_INDEX_SET_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_INDEX_SET','DRVLSB','CREATE_INDEX_SET_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_INDEX','DRVLSB','REMOVE_INDEX_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_INDEX','DRVLSB','REMOVE_INDEX_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SUB_LEXER','DRVLSB','ADD_SUB_LEXER_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SUB_LEXER','DRVLSB','ADD_SUB_LEXER_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SUB_LEXER','DRVLSB','REMOVE_SUB_LEXER_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SUB_LEXER','DRVLSB','REMOVE_SUB_LEXER_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SUB_LEXER','DRVLSB','UPDATE_SUB_LEXER_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SUB_LEXER','DRVLSB','UPDATE_SUB_LEXER_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SECTION_ATTRIBUTE','DRVLSB','SET_SECTION_ATTRIBUTE_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SECTION_ATTRIBUTE','DRVLSB','SET_SECTION_ATTRIBUTE_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_SECTION_ATTRIBUTE','DRVLSB','UNSET_SECTION_ATTRIBUTE_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_SECTION_ATTRIBUTE','DRVLSB','UNSET_SECTION_ATTRIBUTE_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA','DRVLSB','ADD_MDATA',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_MDATA','DRVLSB','REMOVE_MDATA',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','INSERT_MVDATA_VALUES','DRVLSB','INSERT_MVDATA_VALUES',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DELETE_MVDATA_VALUES','DRVLSB','DELETE_MVDATA_VALUES',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA','DRVLSB','ADD_SDATA',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SDATA','DRVLSB','REMOVE_SDATA',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATA_MVDATA_SET','DRVLSB','UPDATA_MVDATA_SET',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SDATA','DRVLSB','UPDATE_SDATA',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','POPULATE_PENDING','DRVLSB','POPULATE_PENDING',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','RECREATE_INDEX_ONLINE','DRVLSB','RECREATE_INDEX_ONLINE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SHADOW_INDEX','DRVLSB','CREATE_SHADOW_INDEX',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','EXCHANGE_SHADOW_INDEX','DRVLSB','EXCHANGE_SHADOW_INDEX',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SHADOW_INDEX','DRVLSB','DROP_SHADOW_INDEX',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SYNC_INDEX','DRVLSB','SYNC_INDEX',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','OPTIMIZE_INDEX','DRVLSB','OPTIMIZE_INDEX',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','FILTER','DRVLSB','FILTER',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','GIST','DRVLSB','GIST',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','MARKUP','DRVLSB','MARKUP',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','TOKENS','DRVLSB','TOKENS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','THEMES','DRVLSB','THEMES',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','HIGHLIGHT','DRVLSB','HIGHLIGHT',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','MARKUP_CLOB_QUERY','DRVLSB','MARKUP_CLOB_QUERY',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','HIGHLIGHT_CLOB_QUERY','DRVLSB','HIGHLIGHT_CLOB_QUERY',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','ADD_DICTIONARY','DRVLSB','ADD_DICTIONARY_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','ADD_DICTIONARY','DRVLSB','ADD_DICTIONARY_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','DROP_DICTIONARY','DRVLSB','DROP_DICTIONARY_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','DROP_DICTIONARY','DRVLSB','DROP_DICTIONARY_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SEC_GRP_ATTR','DRVLSB','SET_SEC_GRP_ATTR_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SEC_GRP_ATTR','DRVLSB','SET_SEC_GRP_ATTR_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SEC_GRP_ATTR_VAL','DRVLSB','ADD_SEC_GRP_ATTR_VAL_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SEC_GRP_ATTR_VAL','DRVLSB','ADD_SEC_GRP_ATTR_VAL_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_THESAURUS','DRITHSC','CREATE_THESAURUS_LSB',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_PHRASE','DRITHSC','CREATE_PHRASE_LSB',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','ALTER_PHRASE','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_PHRASE','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','HAS_RELATION','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','SYN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','SN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','PT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','RT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTP','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTI','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTG','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTP','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTI','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTG','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TRSYN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TR','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_RLS',null,'DBMS_RLS_INT',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB',null,'DBMS_XLSB',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB_CONFIG',null,'DBMS_XLSB',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB_REPOS',null,'DBMS_XLSB',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDBRESOURCE',null,'DBMS_XLSB',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQ_IMP_INTERNAL',null,'DBMS_AQ_SYS_IMP_INTERNAL',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_RULE_ADM',null,'DBMS_RULEADM_INTERNAL',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQADM',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQADM',null,'DBMS_AQADM_SYS',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQJMS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_PRVTAQIS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','XS_PRINCIPAL',null,'XS_PRINCIPAL_INT',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','LBAC_EVENTS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_AUDIT_ADMIN',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_COMPONENTS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_LABEL_ADMIN',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_POLICY_ADMIN',null,'LBAC_POLICY_ADMIN',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_SESSION',null,'LBAC_LGSTNDBY_UTIL',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_SYSDBA',null,'LBAC_LGSTNDBY_UTIL',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_USER_ADMIN',null,'LBAC_LGSTNDBY_UTIL',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-5,'MDSYS','SDO_GEORASTER',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-5,'MDSYS','SDO_TOPO_GEOMETRY',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-11,'MDSYS','SDO_RDF_TRIPLE_S',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_RLS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_RLS_INT',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_FGA',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'XDB','DBMS_XMLSCHEMA',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'XDB','DBMS_XMLSCHEMA_LSB',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'XDB','DBMS_XMLINDEX',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'XDB','DBMS_XDBZ0',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_RESCONFIG',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDBZ',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_VERSION',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'XDB','DBMS_XLSB',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_CONFIG',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_REPOS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDBRESOURCE',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_XDS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_SCHEDULER',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_ISCHED',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_AQADM_SYS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_AQ_SYS_IMP_INTERNAL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQADM',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQELM',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_RULE_ADM',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_RULEADM_INTERNAL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_PRVTAQIS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQ',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQJMS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_CONTENT_ADMIN',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_SFS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_SFS_ADMIN',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_PRINCIPAL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','XS_PRINCIPAL_INT',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_ACL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_ROLESET',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_SECURITY_CLASS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_DATA_SECURITY',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_DATA_SECURITY_UTIL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_NAMESPACE',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_ADMIN_UTIL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ANL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_DDL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_TREE',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ENTITY',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHSL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHSC',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRIENTL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ADM',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_QUERY',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_CLS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_THES',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_OUTPUT',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_DOC',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRVXMD',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRVLSB',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','DRIIMP',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_DDL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_REDEFINITION',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_SQL_TRANSLATOR',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','LOGSTDBY_INTERNAL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_INTERNAL_LOGSTDBY',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_INTERNAL_ROLLING',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_REDACT',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'MDSYS','SDO_META',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'MDSYS','SDO_META_USER',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'MDSYS','SDO_RDF_INTERNAL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'MDSYS','RDF_APIS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'MDSYS','SDO_RDF',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'MDSYS','SDO_SEM_PERF',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'LBACSYS','LBAC_EVENTS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'LBACSYS','LBAC_LGSTNDBY_UTIL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'LBACSYS','LBAC_POLICY_ADMIN',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_AUDIT_ADMIN',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_COMPONENTS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_LABEL_ADMIN',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_SYSDBA',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_USER_ADMIN',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACOUT',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACUTL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'DVSYS','DBMS_MACADM',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'DVSYS','DBMS_MACAUD',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','EVENT',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACSEC_RULES',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACSEC',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'DVSYS','DBMS_MACOLS',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACSEC_ROLES',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACOLS_SESSION',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'DVSYS','CONFIGURE_DV_INTERNAL',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'AUDSYS','DBMS_AUDIT_MGMT_LSBY',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_IJOB',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'DVF','DBMS_MACSEC_FUNCTION',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (2,'DML',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (6,'DML',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (7,'DML',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (4,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (5,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (8,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (86,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (177,'CONTEXT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (178,'CONTEXT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (32,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (33,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (225,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (174,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (175,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (176,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (157,'DIRECTORY',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (158,'DIRECTORY',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (9,'INDEX',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (11,'INDEX',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (10,'INDEX',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (24,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (25,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (68,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (91,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (92,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (93,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (94,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (95,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (96,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (97,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (98,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (99,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (159,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (196,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (84,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (65,'PROFILE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (67,'PROFILE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (66,'PROFILE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (52,'ROLE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (79,'ROLE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (54,'ROLE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (55,'ROLE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (36,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (37,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (38,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (13,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (14,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (16,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (19,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (20,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (110,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (111,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1,'TABLE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (15,'TABLE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (12,'TABLE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (85,'TABLE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (39,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (40,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (41,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (59,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (60,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (61,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (118,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (119,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (120,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (121,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (77,'TYPE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (78,'TYPE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (80,'TYPE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (81,'TYPE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (82,'TYPE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (83,'TYPE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (51,'USER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (43,'USER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (53,'USER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (21,'VIEW',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (22,'VIEW',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (17,'GRANT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (18,'REVOKE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (30,'AUDIT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (31,'AUDIT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (212,'EDITION',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (213,'EDITION',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (214,'EDITION',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (160,'JAVA',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (161,'JAVA',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (162,'JAVA',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1000000,'PL/SQL',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1000001,'PL/SQL_DDL',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'ADAMS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ANONYMOUS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'APPQOSSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'AUDSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'BI',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'BLAKE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'CLARK',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'CTXSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DBSFWUSER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DIP',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DBSNMP',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DMSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DVSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DVF',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'EXDSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'EXFSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GGSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMCATUSER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMROOTUSER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMUSER',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMADMIN_INTERNAL',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'HR',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'IX',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'JONES',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'LBACSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'MDDATA',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MDSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MGMT_VIEW',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MTSSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ODM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ODM_MTR',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'OE',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OJVMSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OLAPSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORACLE_OCM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDDATA',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDPLUGINS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OUTLN',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'PM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'REMOTE_SCHEDULER_AGENT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'SCOTT',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SI_INFORMTN_SCHEMA',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'SH',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_CSW_ADMIN',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_CSW_ADMIN_USR',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_WFS_ADMIN',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_WFS_ADMIN_USR',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSBACKUP',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSDG',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSKM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSRAC',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYS$UMF',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSTEM',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSMAN',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'TSMSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WKPROXY',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WKSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WK_TEST',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WMSYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XDB',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XS$NULL',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XTISYS',null,null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYS','SCHEDULER$_INSTANCE_S',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYS','SCHEDULER$_JOBSUFFIX_S',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYSTEM','ROLLING_EVENT_SEQ$',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'LBACSYS','OLS$LAB_SEQUENCE',null,null,null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_AQ_IMP_INTERNAL',null,'DBMS_AQ_SYS_IMP_INTERNAL',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_AQADM',null,'DBMS_AQADM_SYS',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_RULE_ADM',null,'DBMS_RULEADM_INTERNAL',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_STR',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_OID',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_BLOB',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_XML',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','COMPILESCHEMA','DBMS_XMLSCHEMA_LSB','COMPILESCHEMA',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','COPYEVOLVE','DBMS_XMLSCHEMA_LSB','COPYEVOLVE',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_SYSDBA','CREATE_POLICY','LBAC_LGSTNDBY_UTIL','CREATE_POLICY',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_USER_LABELS','LBAC_LGSTNDBY_UTIL','SET_USER_LABELS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_SESSION','SAVE_DEFAULT_LABELS','LBAC_LGSTNDBY_UTIL','SAVE_DEFAULT_LABELS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_POLICY_ADMIN',null,'LBAC_POLICY_ADMIN',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_LEVELS','LBAC_LGSTNDBY_UTIL','SET_LEVELS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','SET_COMPARTMENTS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','ALTER_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','ALTER_COMPARTMENTS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_GROUPS','LBAC_LGSTNDBY_UTIL','SET_GROUPS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','ALTER_GROUPS','LBAC_LGSTNDBY_UTIL','ALTER_GROUPS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','ADD_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','ADD_COMPARTMENTS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','DROP_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','DROP_COMPARTMENTS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','DROP_ALL_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','DROP_ALL_COMPARTMENTS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','ADD_GROUPS','LBAC_LGSTNDBY_UTIL','ADD_GROUPS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','DROP_GROUPS','LBAC_LGSTNDBY_UTIL','DROP_GROUPS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','DROP_ALL_GROUPS','LBAC_LGSTNDBY_UTIL','DROP_ALL_GROUPS',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_DEFAULT_LABEL','LBAC_LGSTNDBY_UTIL','SET_DEFAULT_LABEL',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_ROW_LABEL','LBAC_LGSTNDBY_UTIL','SET_ROW_LABEL',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB',null,'DBMS_XLSB',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB_CONFIG',null,'DBMS_XLSB',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB_REPOS',null,'DBMS_XLSB',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDBRESOURCE',null,'DBMS_XLSB',null,0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','XS_PRINCIPAL','SET_PASSWORD','XS_PRINCIPAL_INT','SET_VERIFIER_HELPER',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','XS_PRINCIPAL','SET_VERIFIER','XS_PRINCIPAL_INT','SET_VERIFIER_HELPER',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_PREFERENCE','DRVLSB','CREATE_PREFERENCE_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_PREFERENCE','DRVLSB','CREATE_PREFERENCE_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_PREFERENCE','DRVLSB','DROP_PREFERENCE_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_PREFERENCE','DRVLSB','DROP_PREFERENCE_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_ATTRIBUTE','DRVLSB','SET_ATTRIBUTE_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_ATTRIBUTE','DRVLSB','SET_ATTRIBUTE_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_ATTRIBUTE','DRVLSB','UNSET_ATTRIBUTE_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_ATTRIBUTE','DRVLSB','UNSET_ATTRIBUTE_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SECTION_GROUP','DRVLSB','CREATE_SECTION_GROUP_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SECTION_GROUP','DRVLSB','CREATE_SECTION_GROUP_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SECTION_GROUP','DRVLSB','DROP_SECTION_GROUP_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SECTION_GROUP','DRVLSB','DROP_SECTION_GROUP_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ZONE_SECTION','DRVLSB','ADD_ZONE_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ZONE_SECTION','DRVLSB','ADD_ZONE_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_FIELD_SECTION','DRVLSB','ADD_FIELD_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_FIELD_SECTION','DRVLSB','ADD_FIELD_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SPECIAL_SECTION','DRVLSB','ADD_SPECIAL_SECTION_C',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SPECIAL_SECTION','DRVLSB','ADD_SPECIAL_SECTION_NC',0,null,null,null);
Insert into SYSTEM.LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOP_SECTION','DRVLSB','ADD_STOP_SECTION_C',0,null,null,null);
REM INSERTING into SYSTEM.LOGSTDBY$SKIP_TRANSACTION
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_AJG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_BASETABLE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_CLIQUE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_ELIGIBLE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_EXCEPTIONS
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FILTER
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FILTERINSTANCE
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_FJG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_GC
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_INFO
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_JOURNAL
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_LEVEL
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_LOG
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_OUTPUT
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_PARAMETERS
SET DEFINE OFF;
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_BUCKETS',0,null,null,1000);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_BUCKETS',0,null,null,1000);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_BUCKETS',0,null,null,100);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_FJG_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_GC_DELETE',0,null,null,0.02);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_MEA_DELETE',0,null,null,0.05);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_TRACE_LEVEL',0,null,null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_REWRITE_NRF',0,null,null,10);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.console_output',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.wip_interval',0,null,null,250);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.commit_interval',0,null,null,100);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.sql_exclusions',1,'SYSTEM.%',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.pretty',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_names',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_keywords',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.add_alias',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_ambig',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_alias',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.optimize',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_columns',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_schema',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.remove_optional_keywords',1,'False',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.dump_tree',1,'True',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.debug_flags',1,null,null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.datetime_mask',1,'dd/MM/yyyy HH:mm',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_CLQ_MF_RATIO',0,null,null,0.05);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_SUM_BC_RATIO',0,null,null,0.05);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MAX_GCS',0,null,null,1000);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_PCT_COMPL_POLL_INTL',0,null,null,10);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_TRACE_LEVEL',0,null,null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_LAT_SIZE',0,null,null,1024);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_FACT_TABLES',0,null,null,10);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color1',1,'#FFFFDE',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color2',1,'#336699',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color3',1,'#FFCC60',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color4',1,'white',null,0);
Insert into SYSTEM.MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.include_unused',1,'False',null,0);
REM INSERTING into SYSTEM.MVIEW$_ADV_PLAN
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_PRETTY
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_ROLLUP
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_SQLDEPEND
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_TEMP
SET DEFINE OFF;
REM INSERTING into SYSTEM.MVIEW$_ADV_WORKLOAD
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$HINTS
SET DEFINE OFF;
REM INSERTING into SYSTEM.OL$NODES
SET DEFINE OFF;
REM INSERTING into SYSTEM.OPENING_61
SET DEFINE OFF;
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (141,22,'63258f68c5f21',0,0,0,to_date('31-08-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (142,24,'63258f70bd347',0,0,0,to_date('31-08-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (143,62,'63259bb1657f2',15000,300,50,to_date('31-08-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (144,63,'6325b2a335a13',0,0,0,to_date('31-08-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (145,63,null,210000,2342,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (146,63,null,210000,2342,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (147,63,null,210000,2342,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (148,63,null,210000,2342,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (149,63,null,210000,2342,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (150,22,null,99000,600,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (151,22,null,99000,600,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (152,24,null,240000,6000,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_61 (ID,ITEM_ID,INVOICE_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (153,22,null,99000,600,null,to_date('30-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
REM INSERTING into SYSTEM.OPENING_62
SET DEFINE OFF;
Insert into SYSTEM.OPENING_62 (ID,ITEM_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (102,23,0,0,0,to_date('31-08-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_62 (ID,ITEM_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (103,61,0,0,0,to_date('31-08-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'),to_date('01-09-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_62 (ID,ITEM_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (121,61,68764,72,null,to_date('19-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
Insert into SYSTEM.OPENING_62 (ID,ITEM_ID,CLOSING_AMOUNT,CLOSING_QUANTITY,OPENING_RATE,CLOSING_DATE,OPENING_DATE,CREATED_AT) values (122,61,68764,72,null,to_date('19-09-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'),to_date('01-10-2022','DD-MM-YYYY'));
REM INSERTING into SYSTEM.OPENING_BALANCE_91
SET DEFINE OFF;
Insert into SYSTEM.OPENING_BALANCE_91 (ID,OPENING_VAT,OPENING_SD,CLOSING_DATE,CREATED_AT) values (4,40426,0,to_date('19-10-2022','DD-MM-YYYY'),to_date('19-10-2022','DD-MM-YYYY'));
REM INSERTING into SYSTEM.PAYBLE_MUSHAK
SET DEFINE OFF;
REM INSERTING into SYSTEM.PAYBLE_VOUCHER
SET DEFINE OFF;
REM INSERTING into SYSTEM.PERMISSIONS
SET DEFINE OFF;
Insert into SYSTEM.PERMISSIONS (ID,PERMISSION_NAME,DISPLAY_NAME,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (1,'Company Settings','company_settings',0,21,null,to_date('10-09-2022','DD-MM-YYYY'));
REM INSERTING into SYSTEM.PERMISSION_ROLE
SET DEFINE OFF;
Insert into SYSTEM.PERMISSION_ROLE (ID,PERMISSION_ID,USER_ROLE_ID) values (1,1,1);
REM INSERTING into SYSTEM.PRODUCTION
SET DEFINE OFF;
Insert into SYSTEM.PRODUCTION (ID,ITEM_ID,PRO_INVOICE_ID,ENTRY_DATE,PROD_DATE,PRO_QTY,USER_ID,CDATE) values (81,'61','WPO-20220918-0001',to_date('18-09-2022','DD-MM-YYYY'),to_date('18-09-2022','DD-MM-YYYY'),100,21,null);
REM INSERTING into SYSTEM.PRODUCTION_FINISHGOODS
SET DEFINE OFF;
Insert into SYSTEM.PRODUCTION_FINISHGOODS (ID,ITEM_ID,PRODUCTION_ID,PRODUCTION_QTY,CREATED_AT,UPDATED_AT) values (81,61,81,100,to_date('18-09-2022','DD-MM-YYYY'),null);
REM INSERTING into SYSTEM.PRODUCTION_ITEMS
SET DEFINE OFF;
Insert into SYSTEM.PRODUCTION_ITEMS (ID,ITEM_ID,PRODUCTION_ID,QTY,TOTAL_PRO,WST_QTY,TOTAL_QTY_WST,TOTAL_PRO_QTY,PRODUCTION_DATE,C_DATE) values (81,63,81,6,600,0,0,600,to_date('18-09-2022','DD-MM-YYYY'),to_date('18-09-2022','DD-MM-YYYY'));
Insert into SYSTEM.PRODUCTION_ITEMS (ID,ITEM_ID,PRODUCTION_ID,QTY,TOTAL_PRO,WST_QTY,TOTAL_QTY_WST,TOTAL_PRO_QTY,PRODUCTION_DATE,C_DATE) values (82,63,81,6,600,0,0,600,to_date('18-09-2022','DD-MM-YYYY'),to_date('18-09-2022','DD-MM-YYYY'));
Insert into SYSTEM.PRODUCTION_ITEMS (ID,ITEM_ID,PRODUCTION_ID,QTY,TOTAL_PRO,WST_QTY,TOTAL_QTY_WST,TOTAL_PRO_QTY,PRODUCTION_DATE,C_DATE) values (83,22,81,4,400,0,0,400,to_date('18-09-2022','DD-MM-YYYY'),to_date('18-09-2022','DD-MM-YYYY'));
REM INSERTING into SYSTEM.PURCHASE
SET DEFINE OFF;
Insert into SYSTEM.PURCHASE (ID,P_INVOICE_NO,PURCHASE_TYPE,PURCHASE_CATEGORY,SERVICE_CATEGORY,LC_DATE,LC_NO,CHALAN_DATE,TOTAL_VDS,GRAND_TOTAL,SUPPLIER_ID,TOTAL_TAX,VENDOR_INVOICE,ENTRY_DATE,NOTES,DELETE_STATUS,DELETE_DATE,USER_ID,CUSTOM_HOUSE,COUNTRY_ORIGIN,BOE_ITEM_NO,DATA_SOURCE,CPC_CODE_ID) values (181,'PO-20220917-0001',1,1,null,null,null,to_date('17-09-2022','DD-MM-YYYY'),null,113850,1,14850,'bl2122s',to_date('17-09-2022','DD-MM-YYYY'),'Okay',0,null,21,null,null,null,null,null);
Insert into SYSTEM.PURCHASE (ID,P_INVOICE_NO,PURCHASE_TYPE,PURCHASE_CATEGORY,SERVICE_CATEGORY,LC_DATE,LC_NO,CHALAN_DATE,TOTAL_VDS,GRAND_TOTAL,SUPPLIER_ID,TOTAL_TAX,VENDOR_INVOICE,ENTRY_DATE,NOTES,DELETE_STATUS,DELETE_DATE,USER_ID,CUSTOM_HOUSE,COUNTRY_ORIGIN,BOE_ITEM_NO,DATA_SOURCE,CPC_CODE_ID) values (182,'PO-20220917-0182',1,1,null,null,null,to_date('17-09-2022','DD-MM-YYYY'),null,240000,2,0,'54231',to_date('17-09-2022','DD-MM-YYYY'),'Okay',0,null,21,null,null,null,null,null);
Insert into SYSTEM.PURCHASE (ID,P_INVOICE_NO,PURCHASE_TYPE,PURCHASE_CATEGORY,SERVICE_CATEGORY,LC_DATE,LC_NO,CHALAN_DATE,TOTAL_VDS,GRAND_TOTAL,SUPPLIER_ID,TOTAL_TAX,VENDOR_INVOICE,ENTRY_DATE,NOTES,DELETE_STATUS,DELETE_DATE,USER_ID,CUSTOM_HOUSE,COUNTRY_ORIGIN,BOE_ITEM_NO,DATA_SOURCE,CPC_CODE_ID) values (183,'PO-20220917-0183',1,1,null,null,null,to_date('17-09-2022','DD-MM-YYYY'),null,124320,3,26640,'S2321',to_date('17-09-2022','DD-MM-YYYY'),'Go',0,null,21,null,null,null,null,null);
Insert into SYSTEM.PURCHASE (ID,P_INVOICE_NO,PURCHASE_TYPE,PURCHASE_CATEGORY,SERVICE_CATEGORY,LC_DATE,LC_NO,CHALAN_DATE,TOTAL_VDS,GRAND_TOTAL,SUPPLIER_ID,TOTAL_TAX,VENDOR_INVOICE,ENTRY_DATE,NOTES,DELETE_STATUS,DELETE_DATE,USER_ID,CUSTOM_HOUSE,COUNTRY_ORIGIN,BOE_ITEM_NO,DATA_SOURCE,CPC_CODE_ID) values (184,'PO-20220917-0184',1,2,null,to_date('17-09-2022','DD-MM-YYYY'),'lC4433',to_date('17-09-2022','DD-MM-YYYY'),null,220000,4,0,'be2122',to_date('17-09-2022','DD-MM-YYYY'),'Okay',0,null,21,'1','2',null,'Boe Data',1);
REM INSERTING into SYSTEM.PURCHASE_ITEM
SET DEFINE OFF;
Insert into SYSTEM.PURCHASE_ITEM (ID,ITEM_ID,PURCHASE_ID,QTY,BOE_ITEM_NO,HS_CODE,HS_CODE_ID,SERVICE_CODE,RATE,ITEM_TAX,TAX_AMOUNT,ITEM_CD,CD_AMOUNT,ITEM_SD,SD_AMOUNT,ITEM_RD,RD_AMOUNT,ITEM_AT,ITEM_AIT,AT_AMOUNT,AIT_AMOUNT,ITEM_TTI,TTI_AMOUNT,AMOUNT,T_AMOUNT,ACCESSAMOUNT,VATABLE_VALUE,VAT_TYPE,PURCHASE_DATE,ENTRY_DATE,P_DATE,VDS,REBATE) values (161,22,181,1000,null,'1012100',1,null,99,15,14850,null,null,0,0,null,null,null,null,null,null,null,null,null,113850,99000,99000,'1',to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),'0','1');
Insert into SYSTEM.PURCHASE_ITEM (ID,ITEM_ID,PURCHASE_ID,QTY,BOE_ITEM_NO,HS_CODE,HS_CODE_ID,SERVICE_CODE,RATE,ITEM_TAX,TAX_AMOUNT,ITEM_CD,CD_AMOUNT,ITEM_SD,SD_AMOUNT,ITEM_RD,RD_AMOUNT,ITEM_AT,ITEM_AIT,AT_AMOUNT,AIT_AMOUNT,ITEM_TTI,TTI_AMOUNT,AMOUNT,T_AMOUNT,ACCESSAMOUNT,VATABLE_VALUE,VAT_TYPE,PURCHASE_DATE,ENTRY_DATE,P_DATE,VDS,REBATE) values (162,24,182,6000,null,'1019000',4,null,40,0,0,null,null,0,0,null,null,null,null,null,null,null,null,null,240000,240000,240000,'5',to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),'1','1');
Insert into SYSTEM.PURCHASE_ITEM (ID,ITEM_ID,PURCHASE_ID,QTY,BOE_ITEM_NO,HS_CODE,HS_CODE_ID,SERVICE_CODE,RATE,ITEM_TAX,TAX_AMOUNT,ITEM_CD,CD_AMOUNT,ITEM_SD,SD_AMOUNT,ITEM_RD,RD_AMOUNT,ITEM_AT,ITEM_AIT,AT_AMOUNT,AIT_AMOUNT,ITEM_TTI,TTI_AMOUNT,AMOUNT,T_AMOUNT,ACCESSAMOUNT,VATABLE_VALUE,VAT_TYPE,PURCHASE_DATE,ENTRY_DATE,P_DATE,VDS,REBATE) values (163,62,183,4440,null,'1061900',32,null,22,6,26640,null,null,0,0,null,null,null,null,null,null,null,null,null,124320,97680,97680,'4',to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),'1','1');
Insert into SYSTEM.PURCHASE_ITEM (ID,ITEM_ID,PURCHASE_ID,QTY,BOE_ITEM_NO,HS_CODE,HS_CODE_ID,SERVICE_CODE,RATE,ITEM_TAX,TAX_AMOUNT,ITEM_CD,CD_AMOUNT,ITEM_SD,SD_AMOUNT,ITEM_RD,RD_AMOUNT,ITEM_AT,ITEM_AIT,AT_AMOUNT,AIT_AMOUNT,ITEM_TTI,TTI_AMOUNT,AMOUNT,T_AMOUNT,ACCESSAMOUNT,VATABLE_VALUE,VAT_TYPE,PURCHASE_DATE,ENTRY_DATE,P_DATE,VDS,REBATE) values (164,63,184,2342,34,'1061400',31,null,85,0,0,5,10000,0,0,0,0,0,5,0,10000,null,null,null,220000,200000,210000,'1',to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),to_date('17-09-2022','DD-MM-YYYY'),'0','1');
REM INSERTING into SYSTEM.RECEIVABLE_VOUCHER
SET DEFINE OFF;
REM INSERTING into SYSTEM.RECEIVE_VDS
SET DEFINE OFF;
REM INSERTING into SYSTEM.RECEIVE_VDS_ITEM
SET DEFINE OFF;
REM INSERTING into SYSTEM.REDO_DB
SET DEFINE OFF;
Insert into SYSTEM.REDO_DB (DBID,GLOBAL_DBNAME,DBUNAME,VERSION,THREAD#,RESETLOGS_SCN_BAS,RESETLOGS_SCN_WRP,RESETLOGS_TIME,PRESETLOGS_SCN_BAS,PRESETLOGS_SCN_WRP,PRESETLOGS_TIME,SEQNO_RCV_CUR,SEQNO_RCV_LO,SEQNO_RCV_HI,SEQNO_DONE_CUR,SEQNO_DONE_LO,SEQNO_DONE_HI,GAP_SEQNO,GAP_RET,GAP_DONE,APPLY_SEQNO,APPLY_DONE,PURGE_DONE,HAS_CHILD,ERROR1,STATUS,CREATE_DATE,TS1,TS2,GAP_NEXT_SCN,GAP_NEXT_TIME,CURSCN_TIME,RESETLOGS_SCN,PRESETLOGS_SCN,GAP_RET2,CURLOG,ENDIAN,ENQIDX,SPARE4,SPARE5,SPARE6,SPARE7,TS3,CURBLKNO,SPARE8,SPARE9,SPARE10,SPARE11,SPARE12) values (0,null,null,null,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,null,0,0,0,0,0,0,0,0,0,0,0,0,null,null,null,0,0,0,0,0,0,0);
REM INSERTING into SYSTEM.REDO_LOG
SET DEFINE OFF;
REM INSERTING into SYSTEM.REPORT_61_SAVE
SET DEFINE OFF;
Insert into SYSTEM.REPORT_61_SAVE (ID,USER_ID,REPORT_DATE,CREATED_AT,ITEM_ID) values (33,21,to_date('18-09-2022','DD-MM-YYYY'),to_date('18-09-2022','DD-MM-YYYY'),24);
Insert into SYSTEM.REPORT_61_SAVE (ID,USER_ID,REPORT_DATE,CREATED_AT,ITEM_ID) values (34,21,to_date('18-09-2022','DD-MM-YYYY'),to_date('18-09-2022','DD-MM-YYYY'),22);
REM INSERTING into SYSTEM.REPORT_62_SAVE
SET DEFINE OFF;
Insert into SYSTEM.REPORT_62_SAVE (ID,REPORT_DATE,USER_ID,CREATED_AT,ITEM_ID) values (42,to_date('19-09-2022','DD-MM-YYYY'),21,to_date('19-09-2022','DD-MM-YYYY'),61);
REM INSERTING into SYSTEM.REPORT_FINAL_91
SET DEFINE OFF;
REM INSERTING into SYSTEM.ROLLING$CONNECTIONS
SET DEFINE OFF;
REM INSERTING into SYSTEM.ROLLING$DATABASES
SET DEFINE OFF;
REM INSERTING into SYSTEM.ROLLING$DIRECTIVES
SET DEFINE OFF;
REM INSERTING into SYSTEM.ROLLING$EVENTS
SET DEFINE OFF;
REM INSERTING into SYSTEM.ROLLING$PARAMETERS
SET DEFINE OFF;
REM INSERTING into SYSTEM.ROLLING$PLAN
SET DEFINE OFF;
REM INSERTING into SYSTEM.ROLLING$STATISTICS
SET DEFINE OFF;
REM INSERTING into SYSTEM.ROLLING$STATUS
SET DEFINE OFF;
REM INSERTING into SYSTEM.SALES
SET DEFINE OFF;
Insert into SYSTEM.SALES (ID,CUSTOMER_ID,SALE_CENTER_ID,SALES_TRANSFER_ID,P_DATE,TOTAL_SD,TOTAL_DISCOUNT,GRAND_TOTAL,SALES_INVOICE,S_CHALLAN,CDATE,LC_DATE,SALES_TYPE,TRANS_TYPE,SALES_CATEGORY,TOTAL_VAT,FOREIGN_SALES_TYPE,LC_NO,CUSTOM_HOUSE,COUNTRY,DESTINATION,VEHICLE_INFO,VEHICLE_TYPE,BOE_ITEM_NO,DATA_SOURCE,CPC_CODE_ID,BOE_NUMBER,BOE_DATE,NOTES,USER_ID,DELETE_DATE,DELETE_STATUS) values (121,21,null,null,to_date('18-09-2022','DD-MM-YYYY'),0,143,15246,'SO-20220918-0001','SC-20220918-0001',null,null,1,null,'1',1064,null,null,null,null,'Canada','Ship',null,null,null,null,null,null,'Okay',21,null,0);
Insert into SYSTEM.SALES (ID,CUSTOMER_ID,SALE_CENTER_ID,SALES_TRANSFER_ID,P_DATE,TOTAL_SD,TOTAL_DISCOUNT,GRAND_TOTAL,SALES_INVOICE,S_CHALLAN,CDATE,LC_DATE,SALES_TYPE,TRANS_TYPE,SALES_CATEGORY,TOTAL_VAT,FOREIGN_SALES_TYPE,LC_NO,CUSTOM_HOUSE,COUNTRY,DESTINATION,VEHICLE_INFO,VEHICLE_TYPE,BOE_ITEM_NO,DATA_SOURCE,CPC_CODE_ID,BOE_NUMBER,BOE_DATE,NOTES,USER_ID,DELETE_DATE,DELETE_STATUS) values (122,21,null,null,to_date('18-09-2022','DD-MM-YYYY'),null,null,4728,'SO-20220918-0102','SFC-20220918-0102',to_date('18-09-2022','DD-MM-YYYY'),to_date('18-09-2022','DD-MM-YYYY'),1,null,'2',null,'Direct','344333','1','73','Canada','Ship','Car',34323,'Boe Data',1,'213',to_date('18-09-2022','DD-MM-YYYY'),'Okay',21,null,0);
Insert into SYSTEM.SALES (ID,CUSTOMER_ID,SALE_CENTER_ID,SALES_TRANSFER_ID,P_DATE,TOTAL_SD,TOTAL_DISCOUNT,GRAND_TOTAL,SALES_INVOICE,S_CHALLAN,CDATE,LC_DATE,SALES_TYPE,TRANS_TYPE,SALES_CATEGORY,TOTAL_VAT,FOREIGN_SALES_TYPE,LC_NO,CUSTOM_HOUSE,COUNTRY,DESTINATION,VEHICLE_INFO,VEHICLE_TYPE,BOE_ITEM_NO,DATA_SOURCE,CPC_CODE_ID,BOE_NUMBER,BOE_DATE,NOTES,USER_ID,DELETE_DATE,DELETE_STATUS) values (123,null,10,41,to_date('18-09-2022','DD-MM-YYYY'),null,null,3820,'SO-20220918-0103','SC-20220918-0001',null,null,null,'transfer',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0);
REM INSERTING into SYSTEM.SALES_ITEM
SET DEFINE OFF;
Insert into SYSTEM.SALES_ITEM (ID,TRANS_TYPE,ITEM_ID,SALES_ID,HSCODE_ID,RATE,QTY,VAT_AMOUNT,SD_RATE,SD_AMOUNT,VATABLE_VALUE,AMOUNT,T_AMOUNT,VAT_TYPE,VAT_RATE,TRADE_CATEGORY,SALES_DATE,VDS,DISCOUNT_RATE,DISCOUNT_AMOUNT,SPRICE_AFTER_DISCOUNT) values (121,null,61,121,5,955.06,15,1063.7,0,0,14182.64,14325.9,15246.34,'5',null,null,to_date('18-09-2022','DD-MM-YYYY'),1,1,143.26,14182.64);
Insert into SYSTEM.SALES_ITEM (ID,TRANS_TYPE,ITEM_ID,SALES_ID,HSCODE_ID,RATE,QTY,VAT_AMOUNT,SD_RATE,SD_AMOUNT,VATABLE_VALUE,AMOUNT,T_AMOUNT,VAT_TYPE,VAT_RATE,TRADE_CATEGORY,SALES_DATE,VDS,DISCOUNT_RATE,DISCOUNT_AMOUNT,SPRICE_AFTER_DISCOUNT) values (122,null,61,122,5,955.06,5,0,null,0,4775.3,4775.3,4727.55,null,0,null,to_date('18-09-2022','DD-MM-YYYY'),0,1,47.75,null);
Insert into SYSTEM.SALES_ITEM (ID,TRANS_TYPE,ITEM_ID,SALES_ID,HSCODE_ID,RATE,QTY,VAT_AMOUNT,SD_RATE,SD_AMOUNT,VATABLE_VALUE,AMOUNT,T_AMOUNT,VAT_TYPE,VAT_RATE,TRADE_CATEGORY,SALES_DATE,VDS,DISCOUNT_RATE,DISCOUNT_AMOUNT,SPRICE_AFTER_DISCOUNT) values (123,'transfer',61,123,5,955.06,4,null,null,null,null,3820.24,null,null,0,null,to_date('18-09-2022','DD-MM-YYYY'),0,0,null,null);
REM INSERTING into SYSTEM.SALE_CENTER
SET DEFINE OFF;
Insert into SYSTEM.SALE_CENTER (ID,SC_NAME,SC_EMAIL,SC_PHONE,SC_ADDRESS,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (10,'Khulna Sales Center','khulnasales@gmail.com','01681081476','Shiv Bari, Khulna',1,21,null,null);
Insert into SYSTEM.SALE_CENTER (ID,SC_NAME,SC_EMAIL,SC_PHONE,SC_ADDRESS,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (21,'Banani Sales-Center','banani@sales.com','02323432233','Banani, Dhaka',1,21,null,null);
REM INSERTING into SYSTEM.SCHEDULER_JOB_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SYSTEM.SCHEDULER_PROGRAM_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SYSTEM.SC_INVENTORY_STOCK
SET DEFINE OFF;
Insert into SYSTEM.SC_INVENTORY_STOCK (ID,ITEM_ID,SALE_CENTER_ID,SALES_ID,SC_TRANSFER_ID,DEBITNOTE_ID,CREDITNOTE_ID,DAMAGE_ID,UNUSED_ID,OPENING_STOCK_ID,SALES_OPENING_ID,PREV_STOCK,QTY,CURRENT_STOCK,ACTION,U_DATE,USER_ID,STATUS) values (41,61,10,null,41,null,null,null,null,null,null,'0.0','4.0','4.0','increment',to_date('18-09-2022','DD-MM-YYYY'),21,0);
REM INSERTING into SYSTEM.SC_SALES
SET DEFINE OFF;
REM INSERTING into SYSTEM.SC_SALES_ITEM
SET DEFINE OFF;
REM INSERTING into SYSTEM.SC_TRANSFER
SET DEFINE OFF;
Insert into SYSTEM.SC_TRANSFER (ID,SALE_CENTER_ID,ISSUE_DATE,ISSUE_TIME,S_CHALLAN,SALES_INVOICE,VEHICLE_INFO,GRAND_TOTAL,NOTES,USER_ID,STATUS) values (41,10,to_date('18-09-2022','DD-MM-YYYY'),to_date('09-12-0001','DD-MM-YYYY'),'SC-20220918-0001','SO-20220918-0103','Ship',3820,'Okay',21,null);
REM INSERTING into SYSTEM.SC_TRANSFER_ITEM
SET DEFINE OFF;
Insert into SYSTEM.SC_TRANSFER_ITEM (ID,SC_TRANSFER_ID,ITEM_ID,HS_CODE_ID,RATE,QTY,AMOUNT,ISSUE_DATE) values (41,41,61,5,955,4,3820,to_date('18-09-2022','DD-MM-YYYY'));
REM INSERTING into SYSTEM.SQLPLUS_PRODUCT_PROFILE
SET DEFINE OFF;
REM INSERTING into SYSTEM.STUDENTS
SET DEFINE OFF;
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (1,'RANA BISWAS','REGULAR',1,2,null,null);
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (2,'ARNAB BISWAS','REGULAR',1,2,null,null);
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (3,'ARNAB BISWAS','REGULAR',1,2,null,null);
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (4,'RANA BISWAS ARNAB','REGULAR',1,2,null,null);
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (5,'RANA BISWAS ARNAB','REGULAR',1,2,null,null);
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (6,'PEULI BISWAS ARNAB','REGULAR',1,2,null,null);
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (7,'PEULI BISWAS ARNAB','REGULAR',1,2,null,null);
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (10,'PEULI BISWAS ARNAB','REGULAR',1,2,null,null);
Insert into SYSTEM.STUDENTS (ID,STUDENT_NAME,STUDENT_TYPE,STATUS,USER_ID,CREATED_AT,UPDATED_AT) values (11,'PEULI BISWAS ARNAB','REGULAR',1,2,null,null);
REM INSERTING into SYSTEM.SUPPLIER
SET DEFINE OFF;
Insert into SYSTEM.SUPPLIER (ID,SUPPLIER_NAME,EMAIL,PHONE,S_ADDRESS,SUPPLIER_TYPE,COUNTRY_ID,S_TIN,S_BIN_NID,STATUS,DELETE_DATE,USER_ID) values (1,'BMIT Solutions LTD','bmit@bmitsolutionsltd.com','01681081476','Banani, Dhaka','1',18,'adfa1211','add131',0,null,21);
Insert into SYSTEM.SUPPLIER (ID,SUPPLIER_NAME,EMAIL,PHONE,S_ADDRESS,SUPPLIER_TYPE,COUNTRY_ID,S_TIN,S_BIN_NID,STATUS,DELETE_DATE,USER_ID) values (2,'BMW Corporation','bmw@bmw.com','01681081476','Banani, Dhaka','1',82,'adfa1211','add131',0,null,21);
Insert into SYSTEM.SUPPLIER (ID,SUPPLIER_NAME,EMAIL,PHONE,S_ADDRESS,SUPPLIER_TYPE,COUNTRY_ID,S_TIN,S_BIN_NID,STATUS,DELETE_DATE,USER_ID) values (3,'Gazi Group','gazi@gazi.com','01681081476','Banani, Dhaka','1',18,'4321','add3',0,null,21);
Insert into SYSTEM.SUPPLIER (ID,SUPPLIER_NAME,EMAIL,PHONE,S_ADDRESS,SUPPLIER_TYPE,COUNTRY_ID,S_TIN,S_BIN_NID,STATUS,DELETE_DATE,USER_ID) values (4,'SQ Group','sq@bmitsolutionsltd.com','01681081476','Banani, Dhaka','1',18,'4321','add3',0,null,21);
REM INSERTING into SYSTEM.SUPPLY_VDS
SET DEFINE OFF;
REM INSERTING into SYSTEM.SUPPLY_VDS_ITEM
SET DEFINE OFF;
REM INSERTING into SYSTEM.TREASURRY_CHALLAN
SET DEFINE OFF;
REM INSERTING into SYSTEM.UNIT
SET DEFINE OFF;
Insert into SYSTEM.UNIT (ID,UNIT_NAME,ABBR,STATUS,UPDATED_AT,CREATED_AT,USER_ID) values (1,'Meter','Meter',0,null,null,21);
Insert into SYSTEM.UNIT (ID,UNIT_NAME,ABBR,STATUS,UPDATED_AT,CREATED_AT,USER_ID) values (2,'Kilo Gram','KG',0,null,null,21);
Insert into SYSTEM.UNIT (ID,UNIT_NAME,ABBR,STATUS,UPDATED_AT,CREATED_AT,USER_ID) values (3,'Piece','Pic',0,to_date('14-09-2022','DD-MM-YYYY'),null,21);
REM INSERTING into SYSTEM.USERS
SET DEFINE OFF;
Insert into SYSTEM.USERS (ID,SALE_CENTER_ID,USER_TYPE,USER_NAME,FIRST_NAME,LAST_NAME,EMAIL,USER_NID,NID_SCAN,PRO_IMG,USER_PHONE,ROLE_ID,PASSWORD,STATUS,TERMINATE_DATE,USER_ID) values (21,1,null,'superadmin','arif ','islam','arifulislamfiverr007@gmail.com','01856478962',null,'15764039536331644a7b6be.png','0176428212',1,'d4e22790856eef5e3c3bd43c63a6ab9e',0,to_date('28-08-2022','DD-MM-YYYY'),1);
Insert into SYSTEM.USERS (ID,SALE_CENTER_ID,USER_TYPE,USER_NAME,FIRST_NAME,LAST_NAME,EMAIL,USER_NID,NID_SCAN,PRO_IMG,USER_PHONE,ROLE_ID,PASSWORD,STATUS,TERMINATE_DATE,USER_ID) values (41,1,null,'superadmin1','arif','islam','arifulislamfiverr006@gmail.com','01856478965','1425298636625f7543e79c0.jpg','970321816625f7543e7aa7.png','0176428212',1,'d4e22790856eef5e3c3bd43c63a6ab9e',0,to_date('28-08-2022','DD-MM-YYYY'),1);
Insert into SYSTEM.USERS (ID,SALE_CENTER_ID,USER_TYPE,USER_NAME,FIRST_NAME,LAST_NAME,EMAIL,USER_NID,NID_SCAN,PRO_IMG,USER_PHONE,ROLE_ID,PASSWORD,STATUS,TERMINATE_DATE,USER_ID) values (42,1,null,'superadmin2','arif','islam','arifulislamfiverr008@gmail.com','01856478965','1425298636625f7543e79c0.jpg','970321816625f7543e7aa7.png','0176428212',1,'d4e22790856eef5e3c3bd43c63a6ab9e',0,to_date('28-08-2022','DD-MM-YYYY'),1);
REM INSERTING into SYSTEM.USER_ROLE
SET DEFINE OFF;
Insert into SYSTEM.USER_ROLE (ID,ROLE_NAME,DESCRIPTION,CREATED_AT,STATUS) values (1,'Sales Center','Sales Center ',null,0);
--------------------------------------------------------
--  DDL for Index LOGMNRT_MDDL$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRT_MDDL$_PK" ON "SYSTEM"."LOGMNRT_MDDL$" ("SOURCE_OBJ#", "SOURCE_ROWID") ;
--------------------------------------------------------
--  DDL for Index LOGMNR_AGE_SPILL$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_AGE_SPILL$_PK" ON "SYSTEM"."LOGMNR_AGE_SPILL$" ("SESSION#", "PDBID", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "SEQUENCE#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_DID$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_DID$_PK" ON "SYSTEM"."LOGMNR_DID$" ("SESSION#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_PARAMETERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_PARAMETERS_PK" ON "SYSTEM"."MVIEW$_ADV_PARAMETERS" ("PARAMETER_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_ROLLUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_ROLLUP_PK" ON "SYSTEM"."MVIEW$_ADV_ROLLUP" ("RUNID#", "CLEVELID#", "PLEVELID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_WORKLOAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_WORKLOAD_PK" ON "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index OB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OB_PK" ON "SYSTEM"."OPENING_BALANCE_91" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index OPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OPE_PK" ON "SYSTEM"."OPENING_61" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index OP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OP_PK" ON "SYSTEM"."OPENING_62" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PER_PK" ON "SYSTEM"."PERMISSION_ROLE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PF_PK" ON "SYSTEM"."PRODUCTION_FINISHGOODS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PI_PK" ON "SYSTEM"."PURCHASE_ITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PM_PK" ON "SYSTEM"."PAYBLE_MUSHAK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PRI_PK" ON "SYSTEM"."PRODUCTION_ITEMS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PRO_PK" ON "SYSTEM"."PRODUCTION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PR_PK" ON "SYSTEM"."PERMISSIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PUR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PUR_PK" ON "SYSTEM"."PURCHASE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PV_PK" ON "SYSTEM"."PAYBLE_VOUCHER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."RES_PK" ON "SYSTEM"."REPORT_62_SAVE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."REV_PK" ON "SYSTEM"."RECEIVABLE_VOUCHER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RPF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."RPF_PK" ON "SYSTEM"."REPORT_FINAL_91" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."RS_PK" ON "SYSTEM"."REPORT_61_SAVE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RVI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."RVI_PK" ON "SYSTEM"."RECEIVE_VDS_ITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."RV_PK" ON "SYSTEM"."RECEIVE_VDS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SCS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SCS_PK" ON "SYSTEM"."SC_SALES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_LOG$_PK" ON "SYSTEM"."LOGMNR_LOG$" ("SESSION#", "THREAD#", "SEQUENCE#", "FIRST_CHANGE#", "DB_ID", "RESETLOGS_CHANGE#", "RESET_TIMESTAMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_PDB_INFO$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_PDB_INFO$_PK" ON "SYSTEM"."LOGMNR_PDB_INFO$" ("LOGMNR_DID", "LOGMNR_MDH", "PLUGIN_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_PROCESSED_LOG$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_PROCESSED_LOG$_PK" ON "SYSTEM"."LOGMNR_PROCESSED_LOG$" ("SESSION#", "THREAD#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_PROFILE_PLSQL$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_PROFILE_PLSQL$_PK" ON "SYSTEM"."LOGMNR_PROFILE_PLSQL_STATS$" ("PKGOWNER", "PKGNAME", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_PROFILE_TABLE$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_PROFILE_TABLE$_PK" ON "SYSTEM"."LOGMNR_PROFILE_TABLE_STATS$" ("OBJID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_RESTART_CKPT$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_RESTART_CKPT$_PK" ON "SYSTEM"."LOGMNR_RESTART_CKPT$" ("SESSION#", "CKPT_SCN", "XIDUSN", "XIDSLT", "XIDSQN", "PDBID", "SESSION_NUM", "SERIAL_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_RESTART_CKPT_TXINFO$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$_PK" ON "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$" ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM", "EFFECTIVE_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_SESSION_ACTION$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_SESSION_ACTION$_PK" ON "SYSTEM"."LOGMNR_SESSION_ACTIONS$" ("LOGMNRSESSION#", "ACTIONNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_SESSION_EVOLVE$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_SESSION_EVOLVE$_PK" ON "SYSTEM"."LOGMNR_SESSION_EVOLVE$" ("SESSION#", "DB_ID", "RESET_SCN", "RESET_TIMESTAMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_SESSION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_SESSION_PK" ON "SYSTEM"."LOGMNR_SESSION$" ("SESSION#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_SESSION_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_SESSION_UK1" ON "SYSTEM"."LOGMNR_SESSION$" ("SESSION_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_SPILL$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_SPILL$_PK" ON "SYSTEM"."LOGMNR_SPILL$" ("SESSION#", "PDBID", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "STARTIDX", "ENDIDX", "FLAG", "SEQUENCE#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_UID$_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNR_UID$_PK" ON "SYSTEM"."LOGMNR_UID$" ("LOGMNR_UID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGSTDBY$EDS_TABLES_PKEY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGSTDBY$EDS_TABLES_PKEY" ON "SYSTEM"."LOGSTDBY$EDS_TABLES" ("OWNER", "TABLE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOG_PK" ON "SYSTEM"."LOG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_AJG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_AJG_PK" ON "SYSTEM"."MVIEW$_ADV_AJG" ("AJGID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_CLIQUE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_CLIQUE_PK" ON "SYSTEM"."MVIEW$_ADV_CLIQUE" ("CLIQUEID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_ELIGIBLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_ELIGIBLE_PK" ON "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ("SUMOBJN#", "RUNID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_FILTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_FILTER_PK" ON "SYSTEM"."MVIEW$_ADV_FILTER" ("FILTERID#", "SUBFILTERNUM#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_FJG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_FJG_PK" ON "SYSTEM"."MVIEW$_ADV_FJG" ("FJGID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_GC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_GC_PK" ON "SYSTEM"."MVIEW$_ADV_GC" ("GCID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_INFO_PK" ON "SYSTEM"."MVIEW$_ADV_INFO" ("RUNID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_JOURNAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_JOURNAL_PK" ON "SYSTEM"."MVIEW$_ADV_JOURNAL" ("RUNID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_LEVEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_LEVEL_PK" ON "SYSTEM"."MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_LOG_PK" ON "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_OUTPUT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MVIEW$_ADV_OUTPUT_PK" ON "SYSTEM"."MVIEW$_ADV_OUTPUT" ("RUNID#", "RANK#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_GSBA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_GSBA_PK" ON "SYSTEM"."LOGMNRC_GSBA" ("LOGMNR_UID", "AS_OF_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_GSII_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_GSII_PK" ON "SYSTEM"."LOGMNRC_GSII" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_GTCS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_GTCS_PK" ON "SYSTEM"."LOGMNRC_GTCS" ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_GTLO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_GTLO_PK" ON "SYSTEM"."LOGMNRC_GTLO" ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_INDCOL_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_INDCOL_GG_PK" ON "SYSTEM"."LOGMNRC_INDCOL_GG" ("LOGMNR_UID", "OBJ#", "COMMIT_SCN", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_IND_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_IND_GG_PK" ON "SYSTEM"."LOGMNRC_IND_GG" ("LOGMNR_UID", "OBJ#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_SEQ_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_SEQ_GG_PK" ON "SYSTEM"."LOGMNRC_SEQ_GG" ("LOGMNR_UID", "OBJ#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_SHARD_TS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_SHARD_TS_PK" ON "SYSTEM"."LOGMNRC_SHARD_TS" ("LOGMNR_UID", "TABLESPACE_NAME", "START_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_TSPART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_TSPART_PK" ON "SYSTEM"."LOGMNRC_TSPART" ("LOGMNR_UID", "OBJ#", "START_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_TS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_TS_PK" ON "SYSTEM"."LOGMNRC_TS" ("LOGMNR_UID", "TS#", "START_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_GTCS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRGGC_GTCS_PK" ON "SYSTEM"."LOGMNRGGC_GTCS" ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_GTLO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRGGC_GTLO_PK" ON "SYSTEM"."LOGMNRGGC_GTLO" ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNRP_CTAS_PART_MAP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRP_CTAS_PART_MAP_PK" ON "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ("LOGMNR_UID", "BASEOBJV#", "KEYOBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index BOM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."BOM_PK" ON "SYSTEM"."BOM_VERSION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CH_PK" ON "SYSTEM"."CUSTOM_HOUSE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CNI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CNI_PK" ON "SYSTEM"."CREDIT_NOTE_ITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CN_PK" ON "SYSTEM"."CREDIT_NOTE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMPANY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."COMPANY_PK" ON "SYSTEM"."COMPANY_SETTINGS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COSTING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."COSTING_PK" ON "SYSTEM"."COSTING" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."COUNTRY_PK" ON "SYSTEM"."COUNTRIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CPC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CPC_PK" ON "SYSTEM"."CPC_CODE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CURR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CURR_PK" ON "SYSTEM"."CURRENCY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CUST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CUST_PK" ON "SYSTEM"."CUSTOMERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DBI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."DBI_PK" ON "SYSTEM"."DEBIT_NOTE_ITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."DN_PK" ON "SYSTEM"."DEBIT_NOTE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HELP_TOPIC_SEQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."HELP_TOPIC_SEQ" ON "SYSTEM"."HELP" ("TOPIC", "SEQ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 16384 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."HS_PK" ON "SYSTEM"."HS_CODE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IBT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."IBT_PK" ON "SYSTEM"."ITEM_BOM_TABLE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."IC_PK" ON "SYSTEM"."ITEM_COSTING" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."INS_PK" ON "SYSTEM"."INVENTORY_STOCK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."INV_PK" ON "SYSTEM"."INVOICE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IRM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."IRM_PK" ON "SYSTEM"."ITEM_RAW_MATERIALS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ITM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."ITM_PK" ON "SYSTEM"."ITEMS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_CONCOL_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_CONCOL_GG_PK" ON "SYSTEM"."LOGMNRC_CONCOL_GG" ("LOGMNR_UID", "CON#", "COMMIT_SCN", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_CON_GG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_CON_GG_PK" ON "SYSTEM"."LOGMNRC_CON_GG" ("LOGMNR_UID", "CON#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_DBNAME_UID_MAP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."LOGMNRC_DBNAME_UID_MAP_PK" ON "SYSTEM"."LOGMNRC_DBNAME_UID_MAP" ("GLOBAL_NAME", "LOGMNR_MDH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index SC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SC_PK" ON "SYSTEM"."SALE_CENTER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SIS_PK" ON "SYSTEM"."SC_INVENTORY_STOCK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SI_PK" ON "SYSTEM"."SALES_ITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SL_PK" ON "SYSTEM"."SALES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SSI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SSI_PK" ON "SYSTEM"."SC_SALES_ITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index STI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."STI_PK" ON "SYSTEM"."SC_TRANSFER_ITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index STU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."STU_PK" ON "SYSTEM"."STUDENTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."ST_PK" ON "SYSTEM"."SC_TRANSFER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SUPP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SUPP_PK" ON "SYSTEM"."SUPPLIER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SVI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SVI_PK" ON "SYSTEM"."SUPPLY_VDS_ITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SV_PK" ON "SYSTEM"."SUPPLY_VDS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TC_PK" ON "SYSTEM"."TREASURRY_CHALLAN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UNIT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."UNIT_PK" ON "SYSTEM"."UNIT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UNQ_PAIRS
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."UNQ_PAIRS" ON "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" ("AGENT_NAME", "DB_USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."UR_PK" ON "SYSTEM"."USER_ROLE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."USERS_PK" ON "SYSTEM"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1IDNSEQ$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1IDNSEQ$" ON "SYSTEM"."LOGMNR_IDNSEQ$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1INDCOMPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1INDCOMPART$" ON "SYSTEM"."LOGMNR_INDCOMPART$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1PROPS$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1PROPS$" ON "SYSTEM"."LOGMNR_PROPS$" ("LOGMNR_UID", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1NTAB$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1NTAB$" ON "SYSTEM"."LOGMNR_NTAB$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1ATTRCOL$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1ATTRCOL$" ON "SYSTEM"."LOGMNR_ATTRCOL$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1USER$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1USER$" ON "SYSTEM"."LOGMNR_USER$" ("LOGMNR_UID", "USER#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1OPQTYPE$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1OPQTYPE$" ON "SYSTEM"."LOGMNR_OPQTYPE$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2TABSUBPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2TABSUBPART$" ON "SYSTEM"."LOGMNR_TABSUBPART$" ("LOGMNR_UID", "POBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TABCOMPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1TABCOMPART$" ON "SYSTEM"."LOGMNR_TABCOMPART$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2GTLO
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I2GTLO" ON "SYSTEM"."LOGMNRC_GTLO" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2INDGG
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I2INDGG" ON "SYSTEM"."LOGMNRC_IND_GG" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index REDO_DB_IDX
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."REDO_DB_IDX" ON "SYSTEM"."REDO_DB" ("DBID", "THREAD#", "RESETLOGS_SCN", "RESETLOGS_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1INDSUBPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1INDSUBPART$" ON "SYSTEM"."LOGMNR_INDSUBPART$" ("LOGMNR_UID", "OBJ#", "POBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_TEMP_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_TEMP_IDX_01" ON "SYSTEM"."MVIEW$_ADV_TEMP" ("ID#", "SEQ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNRP_CTAS_PART_MAP_I
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRP_CTAS_PART_MAP_I" ON "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#", "PART#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1INDPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1INDPART$" ON "SYSTEM"."LOGMNR_INDPART$" ("LOGMNR_UID", "OBJ#", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_PARAMETER_INDX
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_PARAMETER_INDX" ON "SYSTEM"."LOGMNR_PARAMETER$" ("SESSION#", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I1TS
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I1TS" ON "SYSTEM"."LOGMNRC_TS" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_FLAGS
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_LOG$_FLAGS" ON "SYSTEM"."LOGMNR_LOG$" ("FLAGS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I3COL$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I3COL$" ON "SYSTEM"."LOGMNR_COL$" ("LOGMNR_UID", "OBJ#", "COL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1SUBCOLTYPE$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1SUBCOLTYPE$" ON "SYSTEM"."LOGMNR_SUBCOLTYPE$" ("LOGMNR_UID", "OBJ#", "INTCOL#", "TOID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1KOPM$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1KOPM$" ON "SYSTEM"."LOGMNR_KOPM$" ("LOGMNR_UID", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1LOB$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1LOB$" ON "SYSTEM"."LOGMNR_LOB$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2NTAB$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2NTAB$" ON "SYSTEM"."LOGMNR_NTAB$" ("LOGMNR_UID", "NTAB#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I3OBJ$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I3OBJ$" ON "SYSTEM"."LOGMNR_OBJ$" ("LOGMNR_UID", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_PRETTY_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_PRETTY_IDX_01" ON "SYSTEM"."MVIEW$_ADV_PRETTY" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I1SHARD_TS
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I1SHARD_TS" ON "SYSTEM"."LOGMNRC_SHARD_TS" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index REDO_LOG_IDX
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."REDO_LOG_IDX" ON "SYSTEM"."REDO_LOG" ("DBID", "THREAD#", "RESETLOGS_SCN", "RESETLOGS_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1OBJ$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1OBJ$" ON "SYSTEM"."LOGMNR_OBJ$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1CON$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1CON$" ON "SYSTEM"."LOGMNR_CON$" ("LOGMNR_UID", "CON#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2IND$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2IND$" ON "SYSTEM"."LOGMNR_IND$" ("LOGMNR_UID", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_SQLDEPEND_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_SQLDEPEND_IDX_01" ON "SYSTEM"."MVIEW$_ADV_SQLDEPEND" ("COLLECTIONID#", "FROM_ADDRESS", "FROM_HASH", "INST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I1CONGG
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I1CONGG" ON "SYSTEM"."LOGMNRC_CON_GG" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2TABPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2TABPART$" ON "SYSTEM"."LOGMNR_TABPART$" ("LOGMNR_UID", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_PURGE_IDX2
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_LOG$_PURGE_IDX2" ON "SYSTEM"."LOGMNR_LOG$" ("SESSION#", "RESET_TIMESTAMP", "NEXT_CHANGE#", "STATUS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGSTDBY$SKIP_IND
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGSTDBY$SKIP_IND" ON "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" ("NAME", "ACTION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGSTDBY$EVENTS_IND_SCN
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGSTDBY$EVENTS_IND_SCN" ON "SYSTEM"."LOGSTDBY$EVENTS" ("COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1COLTYPE$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1COLTYPE$" ON "SYSTEM"."LOGMNR_COLTYPE$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_I2GTCS
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRGGC_I2GTCS" ON "SYSTEM"."LOGMNRGGC_GTCS" ("LOGMNR_UID", "OBJ#", "OBJV#", "SEGCOL#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1CONTAINER$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1CONTAINER$" ON "SYSTEM"."LOGMNR_CONTAINER$" ("LOGMNR_UID", "CON_ID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1ICOL$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1ICOL$" ON "SYSTEM"."LOGMNR_ICOL$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_RECID
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_LOG$_RECID" ON "SYSTEM"."LOGMNR_LOG$" ("RECID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1ENC$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1ENC$" ON "SYSTEM"."LOGMNR_ENC$" ("LOGMNR_UID", "OBJ#", "OWNER#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2GTCS
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I2GTCS" ON "SYSTEM"."LOGMNRC_GTCS" ("LOGMNR_UID", "OBJ#", "OBJV#", "SEGCOL#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index OL$NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OL$NAME" ON "SYSTEM"."OL$" ("OL_NAME") ;
--------------------------------------------------------
--  DDL for Index LOGSTDBY$EVENTS_IND_XID
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGSTDBY$EVENTS_IND_XID" ON "SYSTEM"."LOGSTDBY$EVENTS" ("XIDUSN", "XIDSLT", "XIDSQN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index I1_QUEUE_TABLES
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."I1_QUEUE_TABLES" ON "SYSTEM"."AQ$_QUEUE_TABLES" ("OBJNO", "SCHEMA", "FLAGS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2TAB$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2TAB$" ON "SYSTEM"."LOGMNR_TAB$" ("LOGMNR_UID", "BOBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TYPE$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1TYPE$" ON "SYSTEM"."LOGMNR_TYPE$" ("LOGMNR_UID", "TOID", "VERSION#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TABPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1TABPART$" ON "SYSTEM"."LOGMNR_TABPART$" ("LOGMNR_UID", "OBJ#", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TAB$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1TAB$" ON "SYSTEM"."LOGMNR_TAB$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index OL$HNT_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OL$HNT_NUM" ON "SYSTEM"."OL$HINTS" ("OL_NAME", "HINT#") ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1ATTRIBUTE$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1ATTRIBUTE$" ON "SYSTEM"."LOGMNR_ATTRIBUTE$" ("LOGMNR_UID", "TOID", "VERSION#", "ATTRIBUTE#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1DICTIONARY$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1DICTIONARY$" ON "SYSTEM"."LOGMNR_DICTIONARY$" ("LOGMNR_UID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2OBJ$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2OBJ$" ON "SYSTEM"."LOGMNR_OBJ$" ("LOGMNR_UID", "OID$") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1CDEF$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1CDEF$" ON "SYSTEM"."LOGMNR_CDEF$" ("LOGMNR_UID", "CON#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index OL$SIGNATURE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."OL$SIGNATURE" ON "SYSTEM"."OL$" ("SIGNATURE", "CATEGORY") ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1SHARD_TS
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1SHARD_TS" ON "SYSTEM"."LOGMNR_SHARD_TS" ("LOGMNR_UID", "TABLESPACE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_FIRST_CHANGE#
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_LOG$_FIRST_CHANGE#" ON "SYSTEM"."LOGMNR_LOG$" ("FIRST_CHANGE#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2USER$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2USER$" ON "SYSTEM"."LOGMNR_USER$" ("LOGMNR_UID", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1CCOL$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1CCOL$" ON "SYSTEM"."LOGMNR_CCOL$" ("LOGMNR_UID", "CON#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1IND$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1IND$" ON "SYSTEM"."LOGMNR_IND$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I1TSPART
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I1TSPART" ON "SYSTEM"."LOGMNRC_TSPART" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2TABCOMPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2TABCOMPART$" ON "SYSTEM"."LOGMNR_TABCOMPART$" ("LOGMNR_UID", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_LOG$_PURGE_IDX1
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_LOG$_PURGE_IDX1" ON "SYSTEM"."LOGMNR_LOG$" ("FILE_NAME", "STATUS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGSTDBY$SKIP_IDX2
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGSTDBY$SKIP_IDX2" ON "SYSTEM"."LOGSTDBY$SKIP" ("STATEMENT_OPT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_WORKLOAD_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_WORKLOAD_IDX_01" ON "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("COLLECTIONID#", "QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index I1_QUEUES
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."I1_QUEUES" ON "SYSTEM"."AQ$_QUEUES" ("NAME", "EVENTID", "TABLE_OBJNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2CDEF$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2CDEF$" ON "SYSTEM"."LOGMNR_CDEF$" ("LOGMNR_UID", "ROBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1SEED$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1SEED$" ON "SYSTEM"."LOGMNR_SEED$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2SEED$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2SEED$" ON "SYSTEM"."LOGMNR_SEED$" ("LOGMNR_UID", "SCHEMANAME", "TABLE_NAME", "COL_NAME", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I1INDGG
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I1INDGG" ON "SYSTEM"."LOGMNRC_IND_GG" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#", "COMMIT_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1PARTOBJ$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1PARTOBJ$" ON "SYSTEM"."LOGMNR_PARTOBJ$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_I3GTLO
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRGGC_I3GTLO" ON "SYSTEM"."LOGMNRGGC_GTLO" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1LOGMNR_BUILDLOG
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1LOGMNR_BUILDLOG" ON "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" ("LOGMNR_UID", "INITIAL_XID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2CONGG
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I2CONGG" ON "SYSTEM"."LOGMNRC_CON_GG" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGSTDBY$EVENTS_IND
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGSTDBY$EVENTS_IND" ON "SYSTEM"."LOGSTDBY$EVENTS" ("EVENT_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1COL$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1COL$" ON "SYSTEM"."LOGMNR_COL$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2COL$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2COL$" ON "SYSTEM"."LOGMNR_COL$" ("LOGMNR_UID", "OBJ#", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I2SEQGG
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I2SEQGG" ON "SYSTEM"."LOGMNRC_SEQ_GG" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TS$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1TS$" ON "SYSTEM"."LOGMNR_TS$" ("LOGMNR_UID", "TS#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2INDPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2INDPART$" ON "SYSTEM"."LOGMNR_INDPART$" ("LOGMNR_UID", "BO#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index MVIEW$_ADV_BASETABLE_IDX_01
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."MVIEW$_ADV_BASETABLE_IDX_01" ON "SYSTEM"."MVIEW$_ADV_BASETABLE" ("QUERYID#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I3CDEF$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I3CDEF$" ON "SYSTEM"."LOGMNR_CDEF$" ("LOGMNR_UID", "OBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRGGC_I2GTLO
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRGGC_I2GTLO" ON "SYSTEM"."LOGMNRGGC_GTLO" ("LOGMNR_UID", "BASEOBJ#", "BASEOBJV#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1TABSUBPART$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1TABSUBPART$" ON "SYSTEM"."LOGMNR_TABSUBPART$" ("LOGMNR_UID", "OBJ#", "POBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNRC_I3GTLO
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNRC_I3GTLO" ON "SYSTEM"."LOGMNRC_GTLO" ("LOGMNR_UID", "DROP_SCN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGSTDBY$SKIP_IDX1
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGSTDBY$SKIP_IDX1" ON "SYSTEM"."LOGSTDBY$SKIP" ("USE_LIKE", "SCHEMA", "NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1LOBFRAG$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1LOBFRAG$" ON "SYSTEM"."LOGMNR_LOBFRAG$" ("LOGMNR_UID", "FRAGOBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I2IDNSEQ$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I2IDNSEQ$" ON "SYSTEM"."LOGMNR_IDNSEQ$" ("LOGMNR_UID", "SEQOBJ#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Index LOGMNR_I1REFCON$
--------------------------------------------------------

  CREATE INDEX "SYSTEM"."LOGMNR_I1REFCON$" ON "SYSTEM"."LOGMNR_REFCON$" ("LOGMNR_UID", "OBJ#", "INTCOL#") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255  LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ) ;
--------------------------------------------------------
--  DDL for Trigger BOM_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."BOM_BIR" 
BEFORE INSERT ON BOM_VERSION 
FOR EACH ROW

BEGIN
  SELECT bom_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."BOM_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CH_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CH_BIR" 
BEFORE INSERT ON CUSTOM_HOUSE 
FOR EACH ROW

BEGIN
  SELECT ch_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."CH_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CNI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CNI_BIR" 
BEFORE INSERT ON CREDIT_NOTE_ITEM 
FOR EACH ROW

BEGIN
  SELECT cni_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."CNI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CN_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CN_BIR" 
BEFORE INSERT ON CREDIT_NOTE 
FOR EACH ROW

BEGIN
  SELECT cn_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."CN_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger COMPANY_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."COMPANY_BIR" 
BEFORE INSERT ON COMPANY_SETTINGS 
FOR EACH ROW

BEGIN
  SELECT company_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."COMPANY_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger COSTING_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."COSTING_BIR" 
BEFORE INSERT ON COSTING 
FOR EACH ROW

BEGIN
  SELECT costing_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;


/
ALTER TRIGGER "SYSTEM"."COSTING_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger COUNTRY_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."COUNTRY_BIR" 
BEFORE INSERT ON COUNTRIES 
FOR EACH ROW

BEGIN
  SELECT country_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."COUNTRY_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CPC_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CPC_BIR" 
BEFORE INSERT ON CPC_CODE 
FOR EACH ROW

BEGIN
  SELECT cpc_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."CPC_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CURR_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CURR_BIR" 
BEFORE INSERT ON CURRENCY 
FOR EACH ROW

BEGIN
  SELECT curr_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."CURR_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CUST_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CUST_BIR" 
BEFORE INSERT ON CUSTOMERS 
FOR EACH ROW

BEGIN
  SELECT cust_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."CUST_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DBI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."DBI_BIR" 
BEFORE INSERT ON DEBIT_NOTE_ITEM 
FOR EACH ROW

BEGIN
  SELECT dbi_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."DBI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DN_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."DN_BIR" 
BEFORE INSERT ON DEBIT_NOTE 
FOR EACH ROW

BEGIN
  SELECT dn_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."DN_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HS_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."HS_BIR" 
BEFORE INSERT ON HS_CODE 
FOR EACH ROW

BEGIN
  SELECT hs_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;


/
ALTER TRIGGER "SYSTEM"."HS_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger IBT_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."IBT_BIR" 
BEFORE INSERT ON ITEM_BOM_TABLE 
FOR EACH ROW

BEGIN
  SELECT ibt_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."IBT_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger IC_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."IC_BIR" 
BEFORE INSERT ON ITEM_COSTING 
FOR EACH ROW

BEGIN
  SELECT ic_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."IC_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INS_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."INS_BIR" 
BEFORE INSERT ON INVENTORY_STOCK 
FOR EACH ROW

BEGIN
  SELECT ins_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."INS_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INV_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."INV_BIR" 
BEFORE INSERT ON INVOICE 
FOR EACH ROW

BEGIN
  SELECT inv_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."INV_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger IRM_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."IRM_BIR" 
BEFORE INSERT ON ITEM_RAW_MATERIALS 
FOR EACH ROW

BEGIN
  SELECT irm_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."IRM_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ITM_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."ITM_BIR" 
BEFORE INSERT ON ITEMS 
FOR EACH ROW

BEGIN
  SELECT itm_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."ITM_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LOG_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."LOG_BIR" 
BEFORE INSERT ON LOG 
FOR EACH ROW

BEGIN
  SELECT log_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;


/
ALTER TRIGGER "SYSTEM"."LOG_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger OB_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."OB_BIR" 
BEFORE INSERT ON OPENING_BALANCE_91 
FOR EACH ROW

BEGIN
  SELECT ob_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."OB_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger OPE_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."OPE_BIR" 
BEFORE INSERT ON OPENING_61 
FOR EACH ROW

BEGIN
  SELECT ope_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."OPE_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger OPN_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."OPN_BIR" 
BEFORE INSERT ON OPENING_BALANCE_91 
FOR EACH ROW

BEGIN
  SELECT opn_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."OPN_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger OP_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."OP_BIR" 
BEFORE INSERT ON OPENING_62 
FOR EACH ROW

BEGIN
  SELECT op_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."OP_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PER_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PER_BIR" 
BEFORE INSERT ON PERMISSION_ROLE 
FOR EACH ROW

BEGIN
  SELECT per_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PER_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PF_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PF_BIR" 
BEFORE INSERT ON PRODUCTION_FINISHGOODS 
FOR EACH ROW

BEGIN
  SELECT pf_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PF_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PI_BIR" 
BEFORE INSERT ON PURCHASE_ITEM 
FOR EACH ROW

BEGIN
  SELECT pi_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PM_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PM_BIR" 
BEFORE INSERT ON PAYBLE_MUSHAK 
FOR EACH ROW

BEGIN
  SELECT pm_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PM_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PRI_BIR" 
BEFORE INSERT ON PRODUCTION_ITEMS 
FOR EACH ROW

BEGIN
  SELECT pri_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PRI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRO_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PRO_BIR" 
BEFORE INSERT ON PRODUCTION 
FOR EACH ROW

BEGIN
  SELECT pro_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PRO_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PR_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PR_BIR" 
BEFORE INSERT ON PERMISSIONS 
FOR EACH ROW

BEGIN
  SELECT pr_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PR_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PUR_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PUR_BIR" 
BEFORE INSERT ON PURCHASE 
FOR EACH ROW

BEGIN
  SELECT pur_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PUR_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PV_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PV_BIR" 
BEFORE INSERT ON PAYBLE_VOUCHER 
FOR EACH ROW

BEGIN
  SELECT pv_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."PV_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RES_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."RES_BIR" 
BEFORE INSERT ON REPORT_62_SAVE 
FOR EACH ROW

BEGIN
  SELECT res_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."RES_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REV_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."REV_BIR" 
BEFORE INSERT ON RECEIVABLE_VOUCHER 
FOR EACH ROW

BEGIN
  SELECT rev_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."REV_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RPF_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."RPF_BIR" 
BEFORE INSERT ON REPORT_FINAL_91 
FOR EACH ROW

BEGIN
  SELECT rpf_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."RPF_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RS_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."RS_BIR" 
BEFORE INSERT ON REPORT_61_SAVE 
FOR EACH ROW

BEGIN
  SELECT rs_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."RS_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RVI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."RVI_BIR" 
BEFORE INSERT ON RECEIVE_VDS_ITEM 
FOR EACH ROW

BEGIN
  SELECT rvi_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."RVI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RV_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."RV_BIR" 
BEFORE INSERT ON RECEIVE_VDS 
FOR EACH ROW

BEGIN
  SELECT rv_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."RV_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SCS_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SCS_BIR" 
BEFORE INSERT ON SC_SALES 
FOR EACH ROW

BEGIN
  SELECT scs_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SCS_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SC_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SC_BIR" 
BEFORE INSERT ON SALE_CENTER 
FOR EACH ROW

BEGIN
  SELECT sc_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SC_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SIS_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SIS_BIR" 
BEFORE INSERT ON SC_INVENTORY_STOCK 
FOR EACH ROW

BEGIN
  SELECT sis_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SIS_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SI_BIR" 
BEFORE INSERT ON SALES_ITEM 
FOR EACH ROW

BEGIN
  SELECT si_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SL_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SL_BIR" 
BEFORE INSERT ON SALES 
FOR EACH ROW

BEGIN
  SELECT sl_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SL_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SSI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SSI_BIR" 
BEFORE INSERT ON SC_SALES_ITEM 
FOR EACH ROW

BEGIN
  SELECT ssi_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SSI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."STI_BIR" 
BEFORE INSERT ON SC_TRANSFER_ITEM 
FOR EACH ROW

BEGIN
  SELECT sti_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."STI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STU_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."STU_BIR" 
BEFORE INSERT ON STUDENTS 
FOR EACH ROW

BEGIN
  SELECT stu_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."STU_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ST_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."ST_BIR" 
BEFORE INSERT ON SC_TRANSFER 
FOR EACH ROW

BEGIN
  SELECT st_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."ST_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SUPP_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SUPP_BIR" 
BEFORE INSERT ON SUPPLIER 
FOR EACH ROW

BEGIN
  SELECT supp_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SUPP_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SVI_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SVI_BIR" 
BEFORE INSERT ON SUPPLY_VDS_ITEM 
FOR EACH ROW

BEGIN
  SELECT svi_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SVI_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SV_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."SV_BIR" 
BEFORE INSERT ON SUPPLY_VDS 
FOR EACH ROW

BEGIN
  SELECT sv_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."SV_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TC_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."TC_BIR" 
BEFORE INSERT ON TREASURRY_CHALLAN 
FOR EACH ROW

BEGIN
  SELECT tc_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."TC_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UNIT_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."UNIT_BIR" 
BEFORE INSERT ON UNIT 
FOR EACH ROW

BEGIN
  SELECT unit_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;


/
ALTER TRIGGER "SYSTEM"."UNIT_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UR_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."UR_BIR" 
BEFORE INSERT ON USER_ROLE 
FOR EACH ROW

BEGIN
  SELECT ur_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "SYSTEM"."UR_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_BIR
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."USERS_BIR" 
BEFORE INSERT ON USERS 
FOR EACH ROW

BEGIN
  SELECT users_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;


/
ALTER TRIGGER "SYSTEM"."USERS_BIR" ENABLE;
--------------------------------------------------------
--  DDL for Function LOGMNR$COL_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$COL_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
237 185
nkvJV1w6wH1y7mRApzf9mGuebNUwgxDILkhGfHQCmP8+Vi4fyqh3SG1Fyq+pCts1OlgnK761
YuzKBA4JE5DNwZzBIF/Y4ZM5eUlquVyTkOg+AodK3vQJt9NLvPITXbP42O37gO+zKr4BQEJk
ypwrP1U/Pf6MLZONN8LUaVqHCN87T14HqHs5taX7LhLXQ2lCVBE1Ll8dyB9CDOlbyvQS/lrb
+0n1pQi9IJAWySL85ChAqnTaqFJm0YeToD4lZ8UUPQqIZNoX0x73WK9OzsmdBrvEC97iduxe
PEXVkxF6xklPod6yOGBvW7DAFMBgf+LajDLVKOAwB2EAiKCXYMuTUTtMYYkCFFf4sj1rCpsj
TLth6TSru530aM2HP6bEbm3m

/
--------------------------------------------------------
--  DDL for Function LOGMNR$GSBA_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$GSBA_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
206 171
6gxi/CQwK1I5Rfwuw/SXrOGpVRYwgwLI1yfbfHRGEjNe54OE4QwRZCoA20oG536tzgcBrj+1
xE3tE8jIhAoTlUdUmkdYMmZycO1SdiJZwwt/6BrM1wHXl/E5+3Ip2NXzC9j8v4+KjkD9d5AT
p05eEsEWjU1CBTMSpjZZrXzbgFl9QNnQ+zJGjSug21f76ajs78m6anxz7vFcTcem6XpAgKjc
EXzd/ijP8qiOqwblTfnXcRslJn3MljD02u+5fh9NBctOmnaw/tOjRCFPUhY8I9gCoMptjG7U
rHEIFzHOFyxBEdulRGq4ngSgcm7l2yOdSHgNM8rO2vUH4gozvJoLE1S8GBBzG/wrvHPhACQ/
2w==

/
--------------------------------------------------------
--  DDL for Function LOGMNR$KEY_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$KEY_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
2a0 1a1
3O4I5hDO715d8A2tqbxMCflFW0owg/D319xqfC9Grfg+K6yE71zMvtNS45AyRXBk77WpI5v4
nUSfE2lbvUYgk3JHySIe28XxC3xIYYpPGQjxwa3GzPw0FN5aN6kerQQTHUBp29Dd+vLSgBaC
2pAFrq059ZvN0ZPN11XG/2RuDY7HaTQu/QffhnY8rVlNxpFmbkVidwtZQahx5qIFu9Uww/tv
o1AvhjaORi898/KiPtOqv7LpsPFbyNuMnZEG48cxtZuesMBJFP/bKtgU2DN69xiT8Pxf+N2n
g0D2ximYzZqwY/4dBQj9dyQDuXRFo40hdqtWw0L96zV6723aQ8Xp0cqBaZj2wWTI4+6Ikry9
zY0Mdm3bV8TYqsOa+zT4fnikGO0eYbTFHEiW9QUbl/UwzuERwk8p

/
--------------------------------------------------------
--  DDL for Function LOGMNR$SEQ_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$SEQ_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
249 181
++dDv/cHZatK7/vHG9lvR8DQCpYwg/D3AEhqfHQC2h6ONoOvOeHvTNX1S5GDyajM4j8vkSVz
IMw+LbYS3goujprvmrB/LUpdBF8TVvjEqZpC7MCKPXWcGnTeL7ja8C2tcOdjOpRXkwL5NmPJ
B0KqMvwepdiQDY7HUDQrBddQC1lBqHGEogWkwRJ3+2+jUC+Gpo5GTazIWS0V551NkSl3+h0W
BhkPglLbvQDPzxWTnmu4ZuJIlTiNwTf1R0WxghyyKFjES9CJsCrGT8Fn7prlF4Mr5kx1YBGf
5xaODtRnmVJgb65RlKbAN9+Xxf2QnQjKQL99RZAgsEwGVKNfx9lFKwHLGUwzjOxmIAXXYd/Z
+L9osPQJjZYkNrD0pQ==

/
--------------------------------------------------------
--  DDL for Function LOGMNR$TAB_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$TAB_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
22e 181
PRVt0FiLRPgjIhZlCZcQhnOHXQ4wgzJp2UhGfHSKrQ843hKm3gKD9swoFAS4jVcW0CsSl7W1
6banVWdjktOVM18XyRjY4ZM5eRdquSp0ZdfHl3KJPBYqPi9LXIwum30Qh7ymgO+zTKj+R1N2
nSs/TPnknfYLwcUdAfBryDQGEIMisMuE9XT5ix3sudhHa5tLJRjsBIDKlqL7zk2CH0C1NRAZ
XrP7WgavVdNS3Yikz88VupZG21hTuAGspJBgCagmNWIwi9pgCIWP3rxF4p+uMps/ABEg+MBP
6Iykm62kO6hWhVHJXkfKF/jrQFjYBTTzatr1VTcOXt/AFuagDR7isNtb//lnXh8TXyAFWyCT
ubv6GXL0aM0PP/t+DfSl

/
--------------------------------------------------------
--  DDL for Function LOGMNR$USER_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$USER_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
272 191
Vc+i+Mga8m7/BSlvXl0J+GmParYwg/D319wCfC8CTE6Ot30G8QRR0WzR8ohw8Z/y6DuL4pL5
IDjZApnCaZgeKa1OTjLj2B2tOYZg2ZuOAPKrxo7DeBqtn0Ahw0tubS36jP4xc+d2eQebdJMD
c/U0JxdiAl0qIPzsltBjeoGAEsxUk0aubCMJmysgc2d8ojil6ixQ37D7RA0HWMkh27QdOuXF
vSwuufDunMMT8Hue9dvy4vRXj+PhuyylJSukStsxyIb234EahCXyrjDlnzbC91eoU7v5sb4D
OvtDmggQCEViyhFXwspP9P0dOObin8JENsDJeFZYr/oVAgSHa97LRKvNZgd+f//XHlpEAOP4
rNm5mF0wTCABbb7tc5c7uo09M+79i7en8g==

/
--------------------------------------------------------
--  DDL for Synonymn CATALOG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."CATALOG" FOR "SYS"."CATALOG";
--------------------------------------------------------
--  DDL for Synonymn COL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."COL" FOR "SYS"."COL";
--------------------------------------------------------
--  DDL for Synonymn PRODUCT_USER_PROFILE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."PRODUCT_USER_PROFILE" FOR "SYSTEM"."SQLPLUS_PRODUCT_PROFILE";
--------------------------------------------------------
--  DDL for Synonymn PUBLICSYN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."PUBLICSYN" FOR "SYS"."PUBLICSYN";
--------------------------------------------------------
--  DDL for Synonymn SYSCATALOG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."SYSCATALOG" FOR "SYS"."SYSCATALOG";
--------------------------------------------------------
--  DDL for Synonymn SYSFILES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."SYSFILES" FOR "SYS"."SYSFILES";
--------------------------------------------------------
--  DDL for Synonymn TAB
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."TAB" FOR "SYS"."TAB";
--------------------------------------------------------
--  DDL for Synonymn TABQUOTAS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."TABQUOTAS" FOR "SYS"."TABQUOTAS";
--------------------------------------------------------
--  Constraints for Table LOGMNRGGC_GTCS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTCS" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTCS" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTCS" MODIFY ("OBJV#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTCS" MODIFY ("SEGCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTCS" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTCS" MODIFY ("COLNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTCS" MODIFY ("TYPE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTCS" ADD CONSTRAINT "LOGMNRGGC_GTCS_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_CONTAINER$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_CONTAINER$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CONTAINER$" MODIFY ("CON_ID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CONTAINER$" MODIFY ("DBID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CONTAINER$" MODIFY ("CON_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CONTAINER$" MODIFY ("CREATE_SCNWRP" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CONTAINER$" MODIFY ("CREATE_SCNBAS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CONTAINER$" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CONTAINER$" ADD CONSTRAINT "LOGMNR_CONTAINER$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" MODIFY ("SEQ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" MODIFY ("INFOLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CONSTRAINT "MVIEW$_ADV_INFO_PK" PRIMARY KEY ("RUNID#", "SEQ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FILTER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" MODIFY ("FILTERID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" MODIFY ("SUBFILTERNUM#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" MODIFY ("SUBFILTERTYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" ADD CONSTRAINT "MVIEW$_ADV_FILTER_PK" PRIMARY KEY ("FILTERID#", "SUBFILTERNUM#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TREASURRY_CHALLAN
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("T_CHALLAN_NO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("T_BANK" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("T_BRANCH" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("T_ACCOUNT_CODE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("T_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("T_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("T_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" MODIFY ("BUSINESS_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TREASURRY_CHALLAN" ADD CONSTRAINT "TC_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPANY_SETTINGS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("COMPANY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("SITE_SHORT_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("STREET" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("DEFAULT_LANGUAGE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("DEFAULT_CURRENCY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("BUSINESS_NATURE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("BUSINESS_ECONOMICS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("SUBMISSION_PERSION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("DESIGNATION_PERSION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("DESIGNATION_PHONE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("DESIGNATION_IMAGE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("LAWYER_NID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" MODIFY ("COMPANY_VAT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPANY_SETTINGS" ADD CONSTRAINT "COMPANY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SALE_CENTER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SALE_CENTER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALE_CENTER" MODIFY ("SC_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALE_CENTER" MODIFY ("SC_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALE_CENTER" MODIFY ("SC_PHONE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALE_CENTER" MODIFY ("SC_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALE_CENTER" ADD CONSTRAINT "SC_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_IND$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_IND$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IND$" ADD CONSTRAINT "LOGMNR_IND$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_PROPS$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PROPS$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_PROPS$" ADD CONSTRAINT "LOGMNR_PROPS$_PK" PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE;
--------------------------------------------------------
--  Constraints for Table CREDIT_NOTE_ITEM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("CREDIT_NOTE_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("ITEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("S_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("S_VAT_RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("S_VAT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("S_SD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("RETURN_QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("RETURN_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("RETURN_VAT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" MODIFY ("RETURN_SD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE_ITEM" ADD CONSTRAINT "CNI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_TS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_TS" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_TS" MODIFY ("START_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_TS" ADD CONSTRAINT "LOGMNRC_TS_PK" PRIMARY KEY ("LOGMNR_UID", "TS#", "START_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."STUDENTS" ADD CONSTRAINT "STU_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TABPART$" MODIFY ("BO#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TABPART$" ADD CONSTRAINT "LOGMNR_TABPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE;
--------------------------------------------------------
--  Constraints for Table INVOICE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."INVOICE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."INVOICE" ADD CONSTRAINT "INV_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SC_TRANSFER_ITEM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SC_TRANSFER_ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER_ITEM" MODIFY ("SC_TRANSFER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER_ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER_ITEM" MODIFY ("RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER_ITEM" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER_ITEM" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER_ITEM" ADD CONSTRAINT "STI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SC_SALES_ITEM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("SC_SALES_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("T_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("SALES_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("DISCOUNT_RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" MODIFY ("DISCOUNT_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES_ITEM" ADD CONSTRAINT "SSI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_CON$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_CON$" MODIFY ("OWNER#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CON$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CON$" MODIFY ("CON#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CON$" ADD CONSTRAINT "LOGMNR_CON$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GSBA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_GSBA" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GSBA" MODIFY ("AS_OF_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GSBA" ADD CONSTRAINT "LOGMNRC_GSBA_PK" PRIMARY KEY ("LOGMNR_UID", "AS_OF_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYBLE_MUSHAK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PAYBLE_MUSHAK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_MUSHAK" MODIFY ("PAY_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_MUSHAK" MODIFY ("PAY_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_MUSHAK" MODIFY ("PAY_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_MUSHAK" MODIFY ("BUSINESS_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_MUSHAK" ADD CONSTRAINT "PM_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_USER$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_USER$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_USER$" ADD CONSTRAINT "LOGMNR_USER$_PK" PRIMARY KEY ("LOGMNR_UID", "USER#") DISABLE;
--------------------------------------------------------
--  Constraints for Table ITEM_RAW_MATERIALS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ITEM_RAW_MATERIALS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_RAW_MATERIALS" MODIFY ("BOM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_RAW_MATERIALS" MODIFY ("MATERIAL_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_RAW_MATERIALS" ADD CONSTRAINT "IRM_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" MODIFY ("CLEVELID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" MODIFY ("PLEVELID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_PK" PRIMARY KEY ("RUNID#", "CLEVELID#", "PLEVELID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("LEVELID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("TBLOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" MODIFY ("COLUMNLIST" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CONSTRAINT "MVIEW$_ADV_LEVEL_PK" PRIMARY KEY ("RUNID#", "LEVELID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_PROCESSED_LOG$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PROCESSED_LOG$" ADD CONSTRAINT "LOGMNR_PROCESSED_LOG$_PK" PRIMARY KEY ("SESSION#", "THREAD#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$SKIP_SUPPORT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" MODIFY ("ACTION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOB$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_LOB$" MODIFY ("CHUNK" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_LOB$" ADD CONSTRAINT "LOGMNR_LOB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_PARAMETER$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PARAMETER$" MODIFY ("SESSION#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_PARAMETER$" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$FLASHBACK_SCN
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGSTDBY$FLASHBACK_SCN" MODIFY ("PRIMARY_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGSTDBY$FLASHBACK_SCN" ADD PRIMARY KEY ("PRIMARY_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_INDPART$" MODIFY ("TS#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_INDPART$" ADD CONSTRAINT "LOGMNR_INDPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE;
--------------------------------------------------------
--  Constraints for Table OPENING_62
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."OPENING_62" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."OPENING_62" ADD CONSTRAINT "OP_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("SUMOBJN#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("BYTECOST" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" MODIFY ("FREQUENCY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_PK" PRIMARY KEY ("SUMOBJN#", "RUNID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("CLIQUEDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("FREQUENCY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("BYTECOST" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("ROWSIZE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" MODIFY ("NUMROWS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CONSTRAINT "MVIEW$_ADV_CLIQUE_PK" PRIMARY KEY ("CLIQUEID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("FJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("AJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("FJGDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("FJGDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CONSTRAINT "MVIEW$_ADV_FJG_PK" PRIMARY KEY ("FJGID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SQLPLUS_PRODUCT_PROFILE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SQLPLUS_PRODUCT_PROFILE" MODIFY ("PRODUCT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNRC_TSPART
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_TSPART" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_TSPART" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_TSPART" MODIFY ("TS#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_TSPART" MODIFY ("START_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_TSPART" ADD CONSTRAINT "LOGMNRC_TSPART_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "START_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("AJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("AJGDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("AJGDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CONSTRAINT "MVIEW$_ADV_AJG_PK" PRIMARY KEY ("AJGID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_INDCOL_GG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_INDCOL_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_INDCOL_GG" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_INDCOL_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_INDCOL_GG" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_INDCOL_GG" MODIFY ("POS#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_INDCOL_GG" ADD CONSTRAINT "LOGMNRC_INDCOL_GG_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "COMMIT_SCN", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_PDB_INFO$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PDB_INFO$" MODIFY ("LOGMNR_DID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_PDB_INFO$" MODIFY ("LOGMNR_MDH" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_PDB_INFO$" MODIFY ("PLUGIN_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_PDB_INFO$" ADD CONSTRAINT "LOGMNR_PDB_INFO$_PK" PRIMARY KEY ("LOGMNR_DID", "LOGMNR_MDH", "PLUGIN_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" MODIFY ("RUNID#" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNR_SPILL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SPILL$" ADD CONSTRAINT "LOGMNR_SPILL$_PK" PRIMARY KEY ("SESSION#", "PDBID", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "STARTIDX", "ENDIDX", "FLAG", "SEQUENCE#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_DICTIONARY$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_DICTIONARY$" MODIFY ("DB_DICT_OBJECTCOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_DICTIONARY$" ADD CONSTRAINT "LOGMNR_DICTIONARY$_PK" PRIMARY KEY ("LOGMNR_UID") DISABLE;
--------------------------------------------------------
--  Constraints for Table SC_INVENTORY_STOCK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SC_INVENTORY_STOCK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_INVENTORY_STOCK" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_INVENTORY_STOCK" MODIFY ("SALE_CENTER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_INVENTORY_STOCK" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_INVENTORY_STOCK" MODIFY ("CURRENT_STOCK" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_INVENTORY_STOCK" MODIFY ("ACTION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_INVENTORY_STOCK" ADD CONSTRAINT "SIS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$EDS_TABLES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGSTDBY$EDS_TABLES" ADD CONSTRAINT "LOGSTDBY$EDS_TABLES_PKEY" PRIMARY KEY ("OWNER", "TABLE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_TS$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TS$" MODIFY ("BLOCKSIZE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TS$" ADD CONSTRAINT "LOGMNR_TS$_PK" PRIMARY KEY ("LOGMNR_UID", "TS#") DISABLE;
--------------------------------------------------------
--  Constraints for Table SUPPLY_VDS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SUPPLY_VDS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLY_VDS" MODIFY ("VDS_NO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLY_VDS" MODIFY ("VDS_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLY_VDS" MODIFY ("SUPPLIER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLY_VDS" ADD CONSTRAINT "SV_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_COLTYPE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_COLTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_COLTYPE$" ADD CONSTRAINT "LOGMNR_COLTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_PROFILE_PLSQL_STATS$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PROFILE_PLSQL_STATS$" ADD CONSTRAINT "LOGMNR_PROFILE_PLSQL$_PK" PRIMARY KEY ("PKGOWNER", "PKGNAME", "NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_WORKLOAD
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("QUERYID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("COLLECTIONID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("COLLECTTIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("UNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("SQL_TEXT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" MODIFY ("SQL_TEXTLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD CONSTRAINT "MVIEW$_ADV_WORKLOAD_PK" PRIMARY KEY ("QUERYID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION_EVOLVE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_EVOLVE$" ADD CONSTRAINT "LOGMNR_SESSION_EVOLVE$_PK" PRIMARY KEY ("SESSION#", "DB_ID", "RESET_SCN", "RESET_TIMESTAMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRT_MDDL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRT_MDDL$" MODIFY ("DEST_ROWID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRT_MDDL$" ADD CONSTRAINT "LOGMNRT_MDDL$_PK" PRIMARY KEY ("SOURCE_OBJ#", "SOURCE_ROWID") ENABLE;
--------------------------------------------------------
--  Constraints for Table REPORT_FINAL_91
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."REPORT_FINAL_91" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REPORT_FINAL_91" MODIFY ("PART_NO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REPORT_FINAL_91" MODIFY ("REPORT_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REPORT_FINAL_91" ADD CONSTRAINT "RPF_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_COL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_COL$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_COL$" ADD CONSTRAINT "LOGMNR_COL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table REDO_LOG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("DBID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("THREAD#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("RESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("PRESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("SEQUENCE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("RESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_LOG" MODIFY ("PRESETLOGS_SCN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GSII
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_GSII" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GSII" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GSII" MODIFY ("BO#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GSII" MODIFY ("INDTYPE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GSII" ADD CONSTRAINT "LOGMNRC_GSII_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table SALES_ITEM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SALES_ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALES_ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALES_ITEM" MODIFY ("SALES_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALES_ITEM" MODIFY ("RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALES_ITEM" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALES_ITEM" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALES_ITEM" ADD CONSTRAINT "SI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table OPENING_61
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."OPENING_61" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."OPENING_61" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."OPENING_61" ADD CONSTRAINT "OPE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTION
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUCTION" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCTION" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCTION" MODIFY ("PRO_QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCTION" ADD CONSTRAINT "PRO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_SEQ_GG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_SEQ_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SEQ_GG" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SEQ_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SEQ_GG" MODIFY ("SEQ_FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SEQ_GG" MODIFY ("OWNER#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SEQ_GG" MODIFY ("OWNERNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SEQ_GG" MODIFY ("OBJNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SEQ_GG" ADD CONSTRAINT "LOGMNRC_SEQ_GG_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "COMMIT_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table SC_SALES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SC_SALES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES" MODIFY ("P_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES" MODIFY ("DESTINATION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES" MODIFY ("VEHICLE_INFO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_SALES" ADD CONSTRAINT "SCS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRGGC_GTLO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("KEYOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("LVLCNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("LVL0TYPE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("OWNERNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("LVL0NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("INTCOLS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" MODIFY ("START_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRGGC_GTLO" ADD CONSTRAINT "LOGMNRGGC_GTLO_PK" PRIMARY KEY ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_SEED$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SEED$" MODIFY ("NULL$" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SEED$" ADD CONSTRAINT "LOGMNR_SEED$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table RECEIVE_VDS_ITEM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."RECEIVE_VDS_ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVE_VDS_ITEM" ADD CONSTRAINT "RVI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_DBNAME_UID_MAP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_DBNAME_UID_MAP" MODIFY ("GLOBAL_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_DBNAME_UID_MAP" MODIFY ("LOGMNR_MDH" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_DBNAME_UID_MAP" ADD CONSTRAINT "LOGMNRC_DBNAME_UID_MAP_PK" PRIMARY KEY ("GLOBAL_NAME", "LOGMNR_MDH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_ROLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USER_ROLE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USER_ROLE" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USER_ROLE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USER_ROLE" ADD CHECK (id > 0) ENABLE;
  ALTER TABLE "SYSTEM"."USER_ROLE" ADD CONSTRAINT "UR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PURCHASE_ITEM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" MODIFY ("PURCHASE_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" MODIFY ("RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" MODIFY ("TAX_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" MODIFY ("ACCESSAMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" MODIFY ("VATABLE_VALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE_ITEM" ADD CONSTRAINT "PI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOG" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOG" ADD CONSTRAINT "LOG_PK" PRIMARY KEY ("ID")
  USING INDEX "SYSTEM"."LOG_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" MODIFY ("SEQ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" MODIFY ("TIMESTAMP" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD CONSTRAINT "MVIEW$_ADV_JOURNAL_PK" PRIMARY KEY ("RUNID#", "SEQ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTION_ITEMS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUCTION_ITEMS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCTION_ITEMS" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCTION_ITEMS" MODIFY ("PRODUCTION_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCTION_ITEMS" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCTION_ITEMS" ADD CONSTRAINT "PRI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$EVENTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGSTDBY$EVENTS" MODIFY ("EVENT_TIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOBFRAG$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_LOBFRAG$" MODIFY ("FRAG#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_LOBFRAG$" ADD CONSTRAINT "LOGMNR_LOBFRAG$_PK" PRIMARY KEY ("LOGMNR_UID", "FRAGOBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_PARTOBJ$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PARTOBJ$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_PARTOBJ$" ADD CONSTRAINT "LOGMNR_PARTOBJ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOG$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_LOG$" ADD CONSTRAINT "LOGMNR_LOG$_PK" PRIMARY KEY ("SESSION#", "THREAD#", "SEQUENCE#", "FIRST_CHANGE#", "DB_ID", "RESETLOGS_CHANGE#", "RESET_TIMESTAMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_REFCON$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_REFCON$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_REFCON$" ADD CONSTRAINT "LOGMNR_REFCON$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_AGE_SPILL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_AGE_SPILL$" ADD CONSTRAINT "LOGMNR_AGE_SPILL$_PK" PRIMARY KEY ("SESSION#", "PDBID", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "SEQUENCE#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SALES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SALES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALES" ADD CONSTRAINT "SL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECEIVABLE_VOUCHER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("RECEIVABLE_DESC" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("CHALLAN_NO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("CHALLAN_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("EXECUTE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("RECEIVABLE_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("VAT_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("BUSINESS_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVABLE_VOUCHER" ADD CONSTRAINT "REV_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_SHARD_TS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_SHARD_TS" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SHARD_TS" MODIFY ("TABLESPACE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SHARD_TS" MODIFY ("CHUNK_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SHARD_TS" MODIFY ("START_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_SHARD_TS" ADD CONSTRAINT "LOGMNRC_SHARD_TS_PK" PRIMARY KEY ("LOGMNR_UID", "TABLESPACE_NAME", "START_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_ATTRCOL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_ATTRCOL$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_ATTRCOL$" ADD CONSTRAINT "LOGMNR_ATTRCOL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table PERMISSION_ROLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PERMISSION_ROLE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PERMISSION_ROLE" MODIFY ("PERMISSION_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PERMISSION_ROLE" MODIFY ("USER_ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PERMISSION_ROLE" ADD CONSTRAINT "PER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERMISSIONS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PERMISSIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PERMISSIONS" MODIFY ("PERMISSION_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PERMISSIONS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PERMISSIONS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PERMISSIONS" ADD CHECK (ID > 0) ENABLE;
  ALTER TABLE "SYSTEM"."PERMISSIONS" ADD CONSTRAINT "PR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."COUNTRIES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COUNTRIES" MODIFY ("SORTNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COUNTRIES" MODIFY ("COUNTRY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COUNTRIES" MODIFY ("PHONECODE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COUNTRIES" ADD CONSTRAINT "COUNTRY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ITEM_BOM_TABLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ITEM_BOM_TABLE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_BOM_TABLE" MODIFY ("ITEM_SKU" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_BOM_TABLE" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_BOM_TABLE" MODIFY ("REMARKS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_BOM_TABLE" MODIFY ("MRP_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_BOM_TABLE" ADD CHECK (HS_CODE_ID > 0) ENABLE;
  ALTER TABLE "SYSTEM"."ITEM_BOM_TABLE" ADD CONSTRAINT "IBT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."ITEM_BOM_TABLE" MODIFY ("SALES_PRICE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNR_CCOL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_CCOL$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CCOL$" ADD CONSTRAINT "LOGMNR_CCOL$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table CPC_CODE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CPC_CODE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CPC_CODE" MODIFY ("CPC_DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CPC_CODE" ADD CONSTRAINT "CPC_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTION_FINISHGOODS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUCTION_FINISHGOODS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCTION_FINISHGOODS" ADD CONSTRAINT "PF_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDSUBPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_INDSUBPART$" MODIFY ("TS#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_INDSUBPART$" ADD CONSTRAINT "LOGMNR_INDSUBPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table HS_CODE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HS_CODE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HS_CODE" MODIFY ("CALCULATE_YEAR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HS_CODE" ADD CONSTRAINT "HS_PK" PRIMARY KEY ("ID")
  USING INDEX "SYSTEM"."HS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" MODIFY ("COLLECTIONID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" MODIFY ("QUERYID#" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OPENING_BALANCE_91
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."OPENING_BALANCE_91" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."OPENING_BALANCE_91" ADD CONSTRAINT "OB_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HELP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."HELP" MODIFY ("TOPIC" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HELP" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."HELP" ADD CONSTRAINT "HELP_TOPIC_SEQ" PRIMARY KEY ("TOPIC", "SEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 16384 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_IDNSEQ$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" MODIFY ("SEQOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" MODIFY ("STARTWITH" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_IDNSEQ$" ADD CONSTRAINT "LOGMNR_IDNSEQ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_IND_GG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("OWNER#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" MODIFY ("OWNERNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_IND_GG" ADD CONSTRAINT "LOGMNRC_IND_GG_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "COMMIT_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECEIVE_VDS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."RECEIVE_VDS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVE_VDS" MODIFY ("VDS_NO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVE_VDS" MODIFY ("R_VDS_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVE_VDS" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."RECEIVE_VDS" ADD CONSTRAINT "RV_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_NTAB$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_NTAB$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_NTAB$" ADD CONSTRAINT "LOGMNR_NTAB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GTCS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" MODIFY ("OBJV#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" MODIFY ("SEGCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" MODIFY ("COLNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" MODIFY ("TYPE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD CONSTRAINT "LOGMNRC_GTCS_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table REDO_DB
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("DBID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("THREAD#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("RESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("PRESETLOGS_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("RESETLOGS_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REDO_DB" MODIFY ("PRESETLOGS_SCN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNR_UID$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_UID$" ADD CONSTRAINT "LOGMNR_UID$_PK" PRIMARY KEY ("LOGMNR_UID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_CONCOL_GG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" MODIFY ("CON#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CONCOL_GG" ADD CONSTRAINT "LOGMNRC_CONCOL_GG_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "COMMIT_SCN", "INTCOL#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABSUBPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TABSUBPART$" MODIFY ("TS#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TABSUBPART$" ADD CONSTRAINT "LOGMNR_TABSUBPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table SUPPLIER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SUPPLIER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLIER" MODIFY ("SUPPLIER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLIER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLIER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLIER" MODIFY ("S_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLIER" MODIFY ("SUPPLIER_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLIER" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLIER" ADD CONSTRAINT "SUPP_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ITEM_COSTING
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ITEM_COSTING" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_COSTING" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_COSTING" MODIFY ("COST_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEM_COSTING" ADD CONSTRAINT "IC_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REPORT_61_SAVE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."REPORT_61_SAVE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REPORT_61_SAVE" ADD CONSTRAINT "RS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_OBJ$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_OBJ$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_OBJ$" ADD CONSTRAINT "LOGMNR_OBJ$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table UNIT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."UNIT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."UNIT" ADD CONSTRAINT "UNIT_PK" PRIMARY KEY ("ID")
  USING INDEX "SYSTEM"."UNIT_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SESSION$" MODIFY ("SESSION_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION$" ADD CONSTRAINT "LOGMNR_SESSION_PK" PRIMARY KEY ("SESSION#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION$" ADD CONSTRAINT "LOGMNR_SESSION_UK1" UNIQUE ("SESSION_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEBIT_NOTE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DEBIT_NOTE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE" MODIFY ("PURCHASE_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE" MODIFY ("SUPPLIER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE" MODIFY ("VICHLE_INFO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE" MODIFY ("TOTAL_D_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE" MODIFY ("TOTAL_D_VAT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE" MODIFY ("TOTAL_D_SD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE" ADD CONSTRAINT "DN_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRP_CTAS_PART_MAP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" MODIFY ("KEYOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" MODIFY ("PART#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ADD CONSTRAINT "LOGMNRP_CTAS_PART_MAP_PK" PRIMARY KEY ("LOGMNR_UID", "BASEOBJV#", "KEYOBJ#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOM_HOUSE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CUSTOM_HOUSE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOM_HOUSE" MODIFY ("HOUSE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOM_HOUSE" ADD CONSTRAINT "CH_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SC_TRANSFER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SC_TRANSFER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER" MODIFY ("SALE_CENTER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER" MODIFY ("VEHICLE_INFO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SC_TRANSFER" ADD CONSTRAINT "ST_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INVENTORY_STOCK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."INVENTORY_STOCK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."INVENTORY_STOCK" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."INVENTORY_STOCK" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."INVENTORY_STOCK" MODIFY ("CURRENT_STOCK" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."INVENTORY_STOCK" MODIFY ("ACTION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."INVENTORY_STOCK" ADD CONSTRAINT "INS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" MODIFY ("RUNID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" MODIFY ("OUTPUT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" MODIFY ("BENEFIT_TO_COST_RATIO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD CONSTRAINT "MVIEW$_ADV_OUTPUT_PK" PRIMARY KEY ("RUNID#", "RANK#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_SHARD_TS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SHARD_TS" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SHARD_TS" MODIFY ("TABLESPACE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SHARD_TS" MODIFY ("CHUNK_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SHARD_TS" ADD CONSTRAINT "LOGMNR_SHARD_TS_PK" PRIMARY KEY ("LOGMNR_UID", "TABLESPACE_NAME") DISABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_LOG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LOG" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LOG" ADD CONSTRAINT "MVIEW$_ADV_LOG_PK" PRIMARY KEY ("RUNID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ITEMS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS" MODIFY ("ITEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS" MODIFY ("ITEM_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS" MODIFY ("HS_CODE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS" MODIFY ("CALCULATE_YEAR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS" MODIFY ("STOCK_STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS" ADD CONSTRAINT "ITM_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("FJGID#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCDESLEN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("GCDES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" MODIFY ("HASHVALUE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_PK" PRIMARY KEY ("GCID#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_TAB$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TAB$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TAB$" ADD CONSTRAINT "LOGMNR_TAB$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_SESSION_ACTIONS$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" MODIFY ("ACTIONNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" MODIFY ("LOGMNRSESSION#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" MODIFY ("PROCESSROLE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" MODIFY ("ACTIONTYPE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" ADD CONSTRAINT "LOGMNR_SESSION_ACTION$_PK" PRIMARY KEY ("LOGMNRSESSION#", "ACTIONNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PURCHASE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PURCHASE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE" MODIFY ("PURCHASE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE" MODIFY ("PURCHASE_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE" MODIFY ("GRAND_TOTAL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE" MODIFY ("SUPPLIER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PURCHASE" ADD CONSTRAINT "PUR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_TABCOMPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TABCOMPART$" MODIFY ("PART#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TABCOMPART$" ADD CONSTRAINT "LOGMNR_TABCOMPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_SUBCOLTYPE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" MODIFY ("TOID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" MODIFY ("VERSION#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" ADD CONSTRAINT "LOGMNR_SUBCOLTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#", "TOID") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGSTDBY$APPLY_MILESTONE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" MODIFY ("SESSION_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" MODIFY ("SYNCH_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" MODIFY ("EPOCH" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" MODIFY ("PROCESSED_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" MODIFY ("FETCHLWM_SCN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNR_TYPE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_TYPE$" MODIFY ("TOID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_TYPE$" ADD CONSTRAINT "LOGMNR_TYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_KOPM$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_KOPM$" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_KOPM$" ADD CONSTRAINT "LOGMNR_KOPM$_PK" PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_CDEF$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_CDEF$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_CDEF$" ADD CONSTRAINT "LOGMNR_CDEF$_PK" PRIMARY KEY ("LOGMNR_UID", "CON#") DISABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("CUSTOMER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("CUSTOMER_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("C_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("SHIPPING_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("C_BIN_NID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("C_TIN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CUSTOMERS" ADD CONSTRAINT "CUST_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_DID$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_DID$" ADD CONSTRAINT "LOGMNR_DID$_PK" PRIMARY KEY ("SESSION#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_LOGMNR_BUILDLOG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" MODIFY ("INITIAL_XID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" ADD CONSTRAINT "LOGMNR_LOGMNR_BUILDLOG_PK" PRIMARY KEY ("LOGMNR_UID", "INITIAL_XID") DISABLE;
--------------------------------------------------------
--  Constraints for Table SCHEDULER_PROGRAM_ARGS_TBL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("OWNER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("PROGRAM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SCHEDULER_PROGRAM_ARGS_TBL" MODIFY ("ARGUMENT_POSITION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGMNR_RESTART_CKPT_TXINFO$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$" ADD CONSTRAINT "LOGMNR_RESTART_CKPT_TXINFO$_PK" PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM", "EFFECTIVE_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_OPQTYPE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" MODIFY ("OBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" ADD CONSTRAINT "LOGMNR_OPQTYPE$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table REPORT_62_SAVE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."REPORT_62_SAVE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REPORT_62_SAVE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."REPORT_62_SAVE" ADD CONSTRAINT "RES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_INDCOMPART$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_INDCOMPART$" MODIFY ("PART#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_INDCOMPART$" ADD CONSTRAINT "LOGMNR_INDCOMPART$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_DICTSTATE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_DICTSTATE$" ADD CONSTRAINT "LOGMNR_DICTSTATE$_PK" PRIMARY KEY ("LOGMNR_UID") DISABLE;
--------------------------------------------------------
--  Constraints for Table MVIEW$_ADV_PARAMETERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" MODIFY ("PARAMETER_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" ADD CONSTRAINT "MVIEW$_ADV_PARAMETERS_PK" PRIMARY KEY ("PARAMETER_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COSTING
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."COSTING" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COSTING" ADD CONSTRAINT "COSTING_PK" PRIMARY KEY ("ID")
  USING INDEX "SYSTEM"."COSTING_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_GTLO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("KEYOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("LVLCNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("LVL0TYPE#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("OWNERNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("LVL0NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("INTCOLS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" MODIFY ("START_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CONSTRAINT "LOGMNRC_GTLO_PK" PRIMARY KEY ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_ATTRIBUTE$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$" MODIFY ("TOID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$" ADD CONSTRAINT "LOGMNR_ATTRIBUTE$_PK" PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#", "ATTRIBUTE#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_PROFILE_TABLE_STATS$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_PROFILE_TABLE_STATS$" ADD CONSTRAINT "LOGMNR_PROFILE_TABLE$_PK" PRIMARY KEY ("OBJID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_ICOL$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_ICOL$" MODIFY ("INTCOL#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_ICOL$" ADD CONSTRAINT "LOGMNR_ICOL$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("ID")
  USING INDEX "SYSTEM"."USERS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYBLE_VOUCHER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("PAYBLE_DESC" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("CHALLAN_NO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("CHALLAN_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("EXECUTE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("PAYBLE_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("VAT_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("BUSINESS_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PAYBLE_VOUCHER" ADD CONSTRAINT "PV_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_ENC$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_ENC$" MODIFY ("MKEYID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNR_ENC$" ADD CONSTRAINT "LOGMNR_ENC$_PK" PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OWNER#") DISABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNRC_CON_GG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNRC_CON_GG" MODIFY ("LOGMNR_UID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CON_GG" MODIFY ("CON#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CON_GG" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CON_GG" MODIFY ("COMMIT_SCN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CON_GG" MODIFY ("BASEOBJ#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CON_GG" MODIFY ("BASEOBJV#" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CON_GG" MODIFY ("FLAGS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."LOGMNRC_CON_GG" ADD CONSTRAINT "LOGMNRC_CON_GG_PK" PRIMARY KEY ("LOGMNR_UID", "CON#", "COMMIT_SCN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  LOCAL
 (PARTITION "P_LESSTHAN100" NOCOMPRESS 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table CREDIT_NOTE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("CREDIT_NOTE_NO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("SALES_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("VICHLE_INFO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("TOTAL_C_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("TOTAL_C_VAT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("TOTAL_C_SD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("NOTE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CREDIT_NOTE" ADD CONSTRAINT "CN_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CURRENCY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CURRENCY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CURRENCY" MODIFY ("CURRENCY_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CURRENCY" MODIFY ("SYMBOL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CURRENCY" ADD CONSTRAINT "CURR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEBIT_NOTE_ITEM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("DEBIT_NOTE_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("ITEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("P_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("P_VATE_RATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("P_VAT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("P_SD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("RETURN_QTY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("RETURN_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("RETURN_VAT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" MODIFY ("RETURN_SD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DEBIT_NOTE_ITEM" ADD CONSTRAINT "DBI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SUPPLY_VDS_ITEM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SUPPLY_VDS_ITEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SUPPLY_VDS_ITEM" ADD CONSTRAINT "SVI_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGMNR_RESTART_CKPT$
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOGMNR_RESTART_CKPT$" ADD CONSTRAINT "LOGMNR_RESTART_CKPT$_PK" PRIMARY KEY ("SESSION#", "CKPT_SCN", "XIDUSN", "XIDSLT", "XIDSQN", "PDBID", "SESSION_NUM", "SERIAL_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOM_VERSION
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BOM_VERSION" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BOM_VERSION" MODIFY ("BOM_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BOM_VERSION" MODIFY ("REMARKS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BOM_VERSION" MODIFY ("SALES_PRICE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BOM_VERSION" ADD CONSTRAINT "BOM_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_AJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CONSTRAINT "MVIEW$_ADV_AJG_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_BASETABLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" ADD CONSTRAINT "MVIEW$_ADV_BASETABLE_FK" FOREIGN KEY ("QUERYID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("QUERYID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_CLIQUE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CONSTRAINT "MVIEW$_ADV_CLIQUE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_ELIGIBLE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CONSTRAINT "MVIEW$_ADV_ELIGIBLE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_EXCEPTIONS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS" ADD CONSTRAINT "MVIEW$_ADV_EXCEPTION_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_FILTERINSTANCE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" ADD CONSTRAINT "MVIEW$_ADV_FILTERINSTANCE_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_FJG
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CONSTRAINT "MVIEW$_ADV_FJG_FK" FOREIGN KEY ("AJGID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_AJG" ("AJGID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_GC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CONSTRAINT "MVIEW$_ADV_GC_FK" FOREIGN KEY ("FJGID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_FJG" ("FJGID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_INFO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CONSTRAINT "MVIEW$_ADV_INFO_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_JOURNAL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD CONSTRAINT "MVIEW$_ADV_JOURNAL_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_LEVEL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CONSTRAINT "MVIEW$_ADV_LEVEL_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_OUTPUT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD CONSTRAINT "MVIEW$_ADV_OUTPUT_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MVIEW$_ADV_ROLLUP
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_FK" FOREIGN KEY ("RUNID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#") ENABLE;
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_CFK" FOREIGN KEY ("RUNID#", "CLEVELID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") ENABLE;
  ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CONSTRAINT "MVIEW$_ADV_ROLLUP_PFK" FOREIGN KEY ("RUNID#", "PLEVELID#")
	  REFERENCES "SYSTEM"."MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#") ENABLE;
