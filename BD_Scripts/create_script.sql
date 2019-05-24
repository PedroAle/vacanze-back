-------------------CLEANUP---------------------
DROP TABLE IF EXISTS USER CASCADE;
DROP TABLE IF EXISTS SHIP CASCADE;
DROP TABLE IF EXISTS PLANE CASCADE;
DROP TABLE IF EXISTS AUTOMOBILE CASCADE;
DROP TABLE IF EXISTS HOTEL CASCADE;
DROP TABLE IF EXISTS RESTAURANT CASCADE;
DROP TABLE IF EXISTS ROOM CASCADE;
DROP TABLE IF EXISTS CABIN CASCADE;
DROP TABLE IF EXISTS TABLEREST CASCADE;
DROP TABLE IF EXISTS FLIGHT CASCADE;
DROP TABLE IF EXISTS CRUISE CASCADE;
DROP TABLE IF EXISTS BAGGAGE CASCADE;
DROP TABLE IF EXISTS CLAIM CASCADE;
DROP TABLE IF EXISTS LOCATION CASCADE;
DROP TABLE IF EXISTS STOP CASCADE;
DROP TABLE IF EXISTS RES_CRU CASCADE;
DROP TABLE IF EXISTS RES_FLI CASCADE;
DROP TABLE IF EXISTS RES_REST CASCADE;
DROP TABLE IF EXISTS RES_AUT CASCADE;
DROP TABLE IF EXISTS RES_ROO CASCADE;
DROP TABLE IF EXISTS PAYMENT CASCADE;
DROP TABLE IF EXISTS TRAVEL CASCADE;
DROP TABLE IF EXISTS TRA_RES CASCADE;
DROP TABLE IF EXISTS COMMENT CASCADE;

DROP SEQUENCE IF EXISTS SEQ_USER;
DROP SEQUENCE IF EXISTS SEQ_SHIP;
DROP SEQUENCE IF EXISTS SEQ_PLANE;
DROP SEQUENCE IF EXISTS SEQ_AUTOMOBILE;
DROP SEQUENCE IF EXISTS SEQ_HOTEL;
DROP SEQUENCE IF EXISTS SEQ_RESTAURANT;
DROP SEQUENCE IF EXISTS SEQ_ROOM;
DROP SEQUENCE IF EXISTS SEQ_CABIN;
DROP SEQUENCE IF EXISTS SEQ_TABLEREST;
DROP SEQUENCE IF EXISTS SEQ_FLIGHT;
DROP SEQUENCE IF EXISTS SEQ_CRUISE;
DROP SEQUENCE IF EXISTS SEQ_BAGGAGE;
DROP SEQUENCE IF EXISTS SEQ_CLAIM;
DROP SEQUENCE IF EXISTS SEQ_LOCATION;
DROP SEQUENCE IF EXISTS SEQ_STOP;
DROP SEQUENCE IF EXISTS SEQ_RES_CRU;
DROP SEQUENCE IF EXISTS SEQ_RES_FLI;
DROP SEQUENCE IF EXISTS SEQ_RES_REST;
DROP SEQUENCE IF EXISTS SEQ_RES_AUT;
DROP SEQUENCE IF EXISTS SEQ_RES_ROO;
DROP SEQUENCE IF EXISTS SEQ_PAYMENT;
DROP SEQUENCE IF EXISTS SEQ_TRAVEL;
DROP SEQUENCE IF EXISTS SEQ_TRA_RES;
DROP SEQUENCE IF EXISTS SEQ_COMMENT;

--------------SEQUENCES-------------------------
CREATE SEQUENCE SEQ_USER
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_SHIP
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_PLANE
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_AUTOMOBILE
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_HOTEL
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_RESTAURANT
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_ROOM
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_CABIN
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_TABLEREST
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_CRUISE
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_BAGGAGE
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_CLAIM
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_LOCATION
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_STOP
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_RES_AUT
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_RES_CRU
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_RES_FLI
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_RES_REST
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_RES_ROO
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_PAYMENT
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_TRAVEL
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

 CREATE SEQUENCE SEQ_COMMENT
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;
  
  CREATE SEQUENCE SEQ_TRA_RES
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

CREATE TABLE USER(
  USE_ID INTEGER NOT NULL,
  USE_NAME VARCHAR(30) NOT NULL,
  USE_LASTNAME VARCHAR(30) NOT NULL,
  USE_USRNAME VARCHAR(20) NOT NULL UNIQUE,
  USE_DOB DATE,
  USE_GENDER VARCHAR(1) NOT NULL CHECK(USE_GENDER = 'F' OR USE_GENDER = 'M'),
  USE_EMAIL VARCHAR(30) NOT NULL UNIQUE,
  USE_PSSWRD VARCHAR(50) NOT NULL,
  USE_ISADMIN BOOLEAN DEFFAULT FALSE NOT NULL,
  USE_ADMINROLE VARCHAR(20) CHECK(USE_ADMINROLE = 'CRUISE' OR USE_ADMINROLE = 'HOTEL' OR USE_ADMINROLE = 'RESTAURANT' OR USE_ADMINROLE = 'FLIGHT' OR USE_ADMINROLE = 'AUTOMOBILE'),
  USE_ACTIVE BOOLEAN DEFFAULT TRUE NOT NULL,
  CONSTRAINT PRIMARY_USER PRIMARY KEY USE_ID
);

CREATE TABLE PAYMENT(
  PAY_ID INTEGER NOT NULL,
  PAY_METHOD VARCHAR(20) NOT NULL CHECK(PAY_METHOD = 'EFECTIVO' OR PAY_METHOD = 'TRANSFERENCIA' OR PAY_METHOD = 'CREDITO' OR PAY_METHOD = 'DEBITO'), 
  PAY_TOTAL DECIMAL NOT NULL,
  PAY_TIMESTAMP TIMESTAMP NOT NULL,
  CONSTRAINT PRIMARY_PAYMENT PRIMARY KEY (PAY_ID)
);

CREATE TABLE LOCATION(
  LOC_ID INTEGER NOT NULL,
  LOC_CITY VARCHAR(30) NOT NULL,
  LOC_COUNTRY VARCHAR(30) NOT NULL,
  CONSTRAINT PRIMARY_LOCATION PRIMARY KEY (LOC_ID)
);

CREATE TABLE SHIP(
    SHI_ID INTEGER NOT NULL,
    SHI_NAME VARCHAR(20) NOT NULL,
    SHI_ISACTIVE BOOLEAN DEFAULT TRUE NOT NULL,
    SHI_CAPACITY INTEGER NOT NULL,
    SHI_LOADINGCAP INTEGER,
    SHI_MODEL VARCHAR(20) NOT NULL,
    SHI_LINE VARCHAR(30),
    CONSTRAINT PRIMARY_SHIP PRIMARY KEY (SHI_ID)
);

CREATE TABLE CRUISE(
    CRU_ID INTEGER NOT NULL,
    CRU_SHI_FK INTEGER NOT NULL,
    CRU_DEPARTUREDATE TIMESTAMP NOT NULL,
    CRU_ARRIVALDATE TIMESTAMP NOT NULL,
    CONSTRAINT PRIMARY_CRUISE PRIMARY KEY (CRU_ID),
    CONSTRAINT FOREIGN_CRU_SHI FOREIGN KEY CRU_SHI_FK REFERENCES SHIP(SHI_ID)
);

CREATE TABLE CABIN(
  CAB_ID INTEGER NOT NULL,
  CAB_STATUS BOOLEAN DEFAULT FALSE NOT NULL,
  CAB_CAPACITY INTEGER NOT NULL,
  CAB_PRICE DECIMAL NOT NULL,
  CAB_CRU_FK INTEGER NOT NULL,
  CONSTRAINT PRIMARY_CABIN PRIMARY KEY (CAB_ID),
  CONSTRAINT FOREIGN_CAB_CRU FOREIGN KEY CAB_CRU_FK REFERENCES CRUISE(CRU_ID)
);

CREATE TABLE RES_CRU(
  RC_ID INTEGER NOT NULL,
  RC_STATUS BOOLEAN DEFAULT FALSE NOT NULL,
  RC_USE_FK INTEGER NOT NULL,
  RC_CRU_FK INTEGER NOT NULL,
  RC_PAY_FK INTEGER,
  CONSTRAINT PRIMARY_RES_CRU PRIMARY KEY (RC_ID),
  CONSTRAINT FOREIGN_RC_USE FOREIGN KEY RC_USE_FK REFERENCES USER(USE_ID),
  CONSTRAINT FOREIGN_RC_CRU FOREIGN KEY RC_CRU_FK REFERENCES CRUISE(CRU_ID),
  CONSTRAINT FOREIGN_RC_PAY FOREIGN KEY RC_PAY_FK REFERENCES PAYMENT(PAY_ID)
);

CREATE TABLE RESTAURANT(
  RES_ID INTEGER NOT NULL,
  RES_NAME VARCHAR(30) NOT NULL,
  RES_CAPACITY INTEGER NOT NULL,
  RES_ISACTIVE BOOLEAN DEFAULT TRUE NOT NULL, 
  RES_SPECIALTY VARCHAR(30),
  --RES_TLF VARCHAR(20), --CHEQUEAR TIPO
  RES_PRICE DECIMAL NOT NULL,
  RES_WEBSITE VARCHAR(30),
  RES_LOC_FK INTEGER NOT NULL,
  RES_ADDRESS_SPECS VARCHAR(200) NOT NULL,
  CONSTRAINT PRIMARY_RESTAURANT KEY (RES_ID),
  CONSTRAINT FOREIGN_RES_LOC FOREIGN KEY RES_LOC_FK REFERENCES LOCATION(LOC_ID)
  );
  
  CREATE TABLE TABLEREST(
    TAB_ID INTEGER NOT NULL,
    TAB_STATUS BOOLEAN DEFAULT FALSE NOT NULL,
    TAB_CAPACITY INTEGER NOT NULL,
    TAB_PRICE DECIMAL NOT NULL,
    TAB_RES_FK INTEGER NOT NULL,
    CONSTRAINT PRIMARY_TABLEREST PRIMARY KEY (TAB_ID),
    CONSTRAINT FOREIGN_RES FOREIGN KEY TAB_RES_FK REFERENCES RESTAURAT(RES_ID)
    );
    
    CREATE TABLE RES_REST(
      RR_ID INTEGER NOT NULL,
      RR_STATUS BOOLEAN DEFAULT TRUE NOT NULL,
      RR_DATE TIMESTAMP NOT NULL,
      RR_USE_FK INTEGER NOT NULL,
      RR_TABLEREST_FK INTEGER NOT NULL,
      RR_PAY_FK INTEGER,
      CONSTRAINT PRIMARY_RES_REST PRIMARY KEY (RR_ID),
      COSTRAINT FOREIGN_USER FOREIGN KEY RR_USE_FK REFERENCES USER(USE_ID),
      CONSTRAINT FOREIGN_TABLEREST FOREIGN KEY RR_TABLEREST_FK REFERENCES TABLEREST(TAB_ID),
      CONSTRAINT FOREIGN_PAYMENT FOREIGN KEY RR_PAY_FK REFERENCES PAYMENT(PAY_ID)
      );
      
      CREATE TABLE AUTOMOBILE(
        AUT_ID INTEGER NOT NULL,
        AUT_MAKE VARCHAR(30) NOT NULL,
        AUT_MODEL VARCHAR(30) NOT NULL,
        AUT_CAPACITY INTEGER NOT NULL,
        AUT_ISACTIVE BOOLEAN DEFAULT TRUE NOT NULL,
        AUT_PRICE DECIMAL NOT NULL,
        AUT_LICENSE VARCHAR(10) NOT NULL,
        AUT_LOC_FK INTEGER NOT NULL,
        CONSTRAIT PRIMARY_AUTOMOBILE PRIMARY KEY (AUT_ID),
        COSTRAINT FOREIGN_LOCATION FOREIGN KEY AUT_LOC_FK REFERENCES LOCATION(LOC_ID)
        );
        
        CREATE TABLE RES_AUT(
          RA_ID INTEGER NOT NULL,
          RA_STATUS BOOLEAN DEFAULT TRUE NOT NULL,
          RA_PICKUPDATE TIMESTAMP NOT NULL,
          RA_RETURNDATE TIMESTAMP NOT NULL,
          RA_USE_FK INTEGER NOT NULL,
          RA_AUT_FK INTEGER NOT NULL,
          RA_PAY_FK INTEGER NOT NULL,
          CONSTRAINT PRIMARY_RES_AUT PRIMARY KEY (RA_ID),
          CONSTRAINT FOREIGN_USER FOREIGN KEY RA_USE_FK REFERENCES USER(ID),
          CONSTRAINT FOREIGN_AUTOMOBILE FOREIGN KEY RA_AUT_FK REFERENCES AUTOMOBILE(AUT_ID),
          CONSTRAINT FOREIGN_PAYMENT FOREIGN KEY RA_PAY_FK REFERECES PAYMENT(PAY_ID)
          );
          
          CREATE TABLE HOTEL(
            HOT_ID INTEGER NOT NULL,
            HOT_NAME VARCHAR(30) NOT NULL,
            HOT_CAPACITY INTEGER NOT NULL,
            HOT_ISACTIVE BOOLEAN DEFAULT TRUE NOT NULL,
            HOT_TLF VARCHAR(20),
            HOT_WEBSITE VARCHAR(30),
            HOT_ADDRESS_SPECS VARCHAR(200) NOT NULL,
            HOT_LOC_FK INTEGER NOT NULL,
            CONSTRAINT PRIMARY_HOTEL PRIMARY KEY HOTEL(HOT_ID),
            CONSTRAINT FOREIGN_LOCATION FOREIGN KEY HOT_LOC_FK REFERECES LOCATION(LOC_ID)
            );
            
            CREATE TABLE ROOM(
            ROO_ID INTEGER NOT NULL,
            ROO_STATUS BOOLEAN DEFAULT FALSE NOT NULL,
            ROO_CAPACITY INTEGER NOT NULL,
            ROO_PRICE DECIMAL NOT NULL,
            ROO_HOT_FK INTEGER NOT NULL,
            CONSTRAINT PRIMARY_ROOM PRIMARY KEY ROOM(ROO_ID),
            CONSTRAINT FOREIGN_HOTEL FOREIGN KEY ROO_HOT_FK REFERENCES HOT(HOT_ID)
            );
