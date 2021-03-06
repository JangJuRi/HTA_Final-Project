DROP SEQUENCE "ALRAM_SEQ";
DROP SEQUENCE "BOARD_SEQ";
DROP SEQUENCE "COMMENT_SEQ";
DROP SEQUENCE "MANAGER_BOARD_SEQ";
DROP SEQUENCE "MESSAGE_SEQ";
DROP SEQUENCE "MOIM_SEQ";
DROP SEQUENCE "PHOTO_SEQ";
DROP SEQUENCE "SUB_CATE_SEQ";
DROP SEQUENCE "SUB_MOIM_SEQ";
DROP SEQUENCE "WARNING_SEQ";
DROP TABLE "MOIM_ALRAM" cascade constraints;
DROP TABLE "MOIM_BANNER" cascade constraints;
DROP TABLE "MOIM_BOARD" cascade constraints;
DROP TABLE "MOIM_BOARD_CATE" cascade constraints;
DROP TABLE "MOIM_COMMENT" cascade constraints;
DROP TABLE "MOIM_FAVOLITE_MOIM" cascade constraints;
DROP TABLE "MOIM_FOLLOW" cascade constraints;
DROP TABLE "MOIM_JOIN_USER" cascade constraints;
DROP TABLE "MOIM_LOCATION" cascade constraints;
DROP TABLE "MOIM_MAIN" cascade constraints;
DROP TABLE "MOIM_MAIN_CATEGORY" cascade constraints;
DROP TABLE "MOIM_MANAGER_BOARD" cascade constraints;
DROP TABLE "MOIM_MESSAGE" cascade constraints;
DROP TABLE "MOIM_PHOTO" cascade constraints;
DROP TABLE "MOIM_PHOTO_USER_LIKE" cascade constraints;
DROP TABLE "MOIM_SUB_CATE" cascade constraints;
DROP TABLE "MOIM_SUB_JOIN_USER" cascade constraints;
DROP TABLE "MOIM_SUB_MOIM" cascade constraints;
DROP TABLE "MOIM_USER" cascade constraints;
DROP TABLE "MOIM_USER_CATE" cascade constraints;
DROP TABLE "MOIM_WARNING" cascade constraints;


--------------------------------------------------------
--  督析戚 持失喫 - 杉推析-9杉-14-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ALARM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ALARM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100000 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ALRAM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ALRAM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 88 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 200037 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."COMMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 400029 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MANAGER_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MANAGER_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MESSAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MESSAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MOIM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MOIM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 500070 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PHOTO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PHOTO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 600026 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SUB_CATE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SUB_CATE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 700026 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SUB_MOIM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SUB_MOIM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 800020 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence WARNING_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."WARNING_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table MOIM_ALRAM
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_ALRAM" 
   (	"ALRAM_NO" NUMBER(10,0), 
	"MESSAGE" VARCHAR2(500 BYTE), 
	"TYPE" VARCHAR2(200 BYTE), 
	"READ_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"USER_ID" VARCHAR2(200 BYTE), 
	"LOGIN_USER_ID" VARCHAR2(200 BYTE), 
	"CREATED_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_BANNER
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_BANNER" 
   (	"MOIM_NO" NUMBER(10,0), 
	"BANNER" VARCHAR2(500 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_BOARD
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_BOARD" 
   (	"BOARD_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" CLOB, 
	"VIEWS" NUMBER(10,0) DEFAULT 0, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"BOARD_CATE_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_BOARD_CATE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_BOARD_CATE" 
   (	"BOARD_CATE_NO" NUMBER(10,0), 
	"NAME" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_COMMENT
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_COMMENT" 
   (	"COMMENT_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"BOARD_NO" NUMBER(10,0), 
	"MAIN_COMMENT_NO" NUMBER(10,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_FAVOLITE_MOIM
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_FAVOLITE_MOIM" 
   (	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"LIKED_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_FOLLOW
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_FOLLOW" 
   (	"USER_ID" VARCHAR2(200 BYTE), 
	"FOL_USER_ID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_JOIN_USER
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_JOIN_USER" 
   (	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"USER_ROLE" VARCHAR2(20 BYTE), 
	"CREATED_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_LOCATION
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_LOCATION" 
   (	"LOCATION_NO" NUMBER(10,0), 
	"NAME" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_MAIN
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_MAIN" 
   (	"MOIM_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"JOIN_COUNT" NUMBER(10,0) DEFAULT 1, 
	"HEAD_COUNT" NUMBER(10,0), 
	"CONTENT" CLOB, 
	"IMAGE" VARCHAR2(500 BYTE), 
	"FEE" NUMBER(10,0) DEFAULT 0, 
	"LIKES" NUMBER(10,0) DEFAULT 0, 
	"PREMIUM_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"JOIN_DATE" DATE, 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"SUB_CATE_NO" NUMBER(10,0), 
	"LOCATION_NO" NUMBER(10,0), 
	"LOCATION_DETAIL" VARCHAR2(500 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_MAIN_CATEGORY
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_MAIN_CATEGORY" 
   (	"MAIN_CATE_NO" NUMBER(10,0), 
	"NAME" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_MANAGER_BOARD
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_MANAGER_BOARD" 
   (	"MANAGER_BOARD_NO" NUMBER(10,0), 
	"MANAGER_BOARD_TITLE" VARCHAR2(200 BYTE), 
	"MANAGER_BOARD_CONTENT" CLOB, 
	"VIEWS" NUMBER(10,0) DEFAULT 0, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT SYSDATE
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_MESSAGE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_MESSAGE" 
   (	"MESSAGE_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"SEND_USER" VARCHAR2(200 BYTE), 
	"RECEIVE_USER" VARCHAR2(200 BYTE), 
	"READ_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"USER_ID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_PHOTO
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_PHOTO" 
   (	"PHOTO_NO" NUMBER(10,0), 
	"PHOTO" VARCHAR2(500 BYTE), 
	"LIKES" NUMBER(10,0) DEFAULT 0, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_PHOTO_USER_LIKE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_PHOTO_USER_LIKE" 
   (	"PHOTO_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"MOIM_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_SUB_CATE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_SUB_CATE" 
   (	"SUB_CATE_NO" NUMBER(10,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"MAIN_CATE_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_SUB_JOIN_USER
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_SUB_JOIN_USER" 
   (	"SUB_MOIM_NO" NUMBER(10,0), 
	"MOIM_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_SUB_MOIM
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_SUB_MOIM" 
   (	"SUB_MOIM_NO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"LOCATION" VARCHAR2(200 BYTE), 
	"HEAD_COUNT" NUMBER(4,0) DEFAULT 0, 
	"FEE" NUMBER(10,0) DEFAULT 0, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"JOIN_DATE" DATE, 
	"JOIN_COUNT" NUMBER(4,0) DEFAULT 1, 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"USER_ID" VARCHAR2(200 BYTE), 
	"MOIM_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_USER
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_USER" 
   (	"USER_ID" VARCHAR2(200 BYTE), 
	"USER_NAME" VARCHAR2(200 BYTE), 
	"TEL" VARCHAR2(200 BYTE), 
	"USER_PASSWORD" VARCHAR2(200 BYTE), 
	"NICKNAME" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"BIRTH" VARCHAR2(200 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"USER_CONTENT" CLOB, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"LOCATION_NO" NUMBER(10,0), 
	"PROFILE_IMAGE" VARCHAR2(1000 BYTE) DEFAULT 'profile.png', 
	"SUSPENDED_ACCOUNT_YN" CHAR(1 BYTE) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_USER_CATE
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_USER_CATE" 
   (	"USER_ID" VARCHAR2(200 BYTE), 
	"MAIN_CATE_NO" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOIM_WARNING
--------------------------------------------------------

  CREATE TABLE "HR"."MOIM_WARNING" 
   (	"WARNING_NO" NUMBER(10,0), 
	"USER_ID" VARCHAR2(200 BYTE), 
	"LOGIN_USER_ID" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"TYPE" VARCHAR2(200 BYTE), 
	"CREATED_DATE" DATE DEFAULT sysdate, 
	"DELETE_YN" CHAR(1 BYTE) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
;
REM INSERTING into HR.MOIM_ALRAM
SET DEFINE OFF;
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (8,'砺什闘3還戚 独稽酔馬写柔艦陥.','独稽酔','N','jang','test3',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (4,'test1還戚 独稽酔馬写柔艦陥.','独稽酔','N','jang','test1',to_date('20/08/19','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (6,'軒爽舌還戚 独稽酔馬写柔艦陥.','独稽酔','N','test4','jang',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (5,'軒爽舌還戚 独稽酔馬写柔艦陥.','独稽酔','N','test1','jang',to_date('20/08/19','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (7,'井壱五獣走 更虞床走','井壱','N','jang',null,to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (9,'砺什闘4還戚 独稽酔馬写柔艦陥.','独稽酔','Y','jang','test4',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (10,'莞革績5還戚 独稽酔馬写柔艦陥.','独稽酔','Y','jang','test5',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (11,'莞革績6還戚 独稽酔馬写柔艦陥.','独稽酔','Y','jang','test6',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (12,'映慎層還戚 五室走研左蛎柔艦陥.','五室走','Y','jang','test1',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (13,'映慎層還戚 五室走研左蛎柔艦陥.','五室走','N','test1','jang',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (14,'井壱研 閤生写柔艦陥.','井壱','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (15,'井壱研 閤生写柔艦陥.','井壱','N','test1',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (16,'井壱研 閤生写柔艦陥.','井壱','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (17,'井壱研 閤生写柔艦陥.','井壱','N','test2',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (18,'井壱研 閤生写柔艦陥.','井壱','Y','jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (19,'井壱研 閤生写柔艦陥.','井壱','N','jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (20,'井壱研 閤生写柔艦陥.','井壱','N','test2',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (21,'井壱研 閤生写柔艦陥.','井壱','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (22,'井壱研 閤生写柔艦陥.','井壱','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (23,'井壱研 閤生写柔艦陥.','井壱','Y','jung',null,to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (64,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (65,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (26,'井壱研 閤生写柔艦陥.','井壱','N','jang',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (81,'jang還戚 独稽酔 梅柔艦陥.','独稽酔','N','test1','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (46,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (29,'井壱研 閤生写柔艦陥.','井壱','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (30,'井壱研 閤生写柔艦陥.','井壱','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (31,'井壱研 閤生写柔艦陥.','井壱','Y','kwon',null,to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (32,'moon還戚 五室走研 左蛎柔艦陥.','五室走','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (33,'moon還戚 五室走研 左蛎柔艦陥.','五室走','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (34,'moon還戚 五室走研 左蛎柔艦陥.','五室走','N','jang','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (35,'moon還戚 五室走研 左蛎柔艦陥.','五室走','N','jang','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (36,'moon還戚 五室走研 左蛎柔艦陥.','五室走','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (63,'jang還戚 五室走研 左蛎柔艦陥.','五室走','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (38,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (39,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (40,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (41,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (42,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','test4','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (80,'jang還戚 独稽酔 梅柔艦陥.','独稽酔','N','test1','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (82,'jang還戚 独稽酔 梅柔艦陥.','独稽酔','N','moon','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (83,'kwon還戚 独稽酔 梅柔艦陥.','独稽酔','N','moon','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (84,'kwon還戚 独稽酔 梅柔艦陥.','独稽酔','N','jang','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (85,'kwon還戚 独稽酔 梅柔艦陥.','独稽酔','N','test3','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (50,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','Y','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (53,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','kwon','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (86,'kwon還戚 独稽酔 梅柔艦陥.','独稽酔','N','test2','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (54,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (87,'kwon還戚 独稽酔 梅柔艦陥.','独稽酔','N','test1','kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (66,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (67,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (68,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (69,'jung還戚 五室走研 左蛎柔艦陥.','五室走','N','ko','jung',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (70,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (71,'井壱研 閤生写柔艦陥.','井壱','N','jung',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (72,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (73,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (74,'井壱研 閤生写柔艦陥.','井壱','N','kwon',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (75,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','kim','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (76,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (77,'jang還戚 独稽酔 梅柔艦陥.','独稽酔','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (78,'jang還戚 独稽酔 梅柔艦陥.','独稽酔','N','jung','jang',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_ALRAM (ALRAM_NO,MESSAGE,TYPE,READ_YN,USER_ID,LOGIN_USER_ID,CREATED_DATE) values (79,'moon還戚 独稽酔 梅柔艦陥.','独稽酔','N','ko','moon',to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_BANNER
SET DEFINE OFF;
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500069,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500000,'longboard.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500001,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500002,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500003,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500004,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500005,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500006,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500007,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500008,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500009,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500010,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500010,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500011,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500012,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500013,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500014,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500015,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500016,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500017,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500018,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500019,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500022,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500023,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500024,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500025,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500026,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500027,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500028,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500029,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500030,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500031,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500032,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500033,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500034,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500035,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500036,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500037,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500038,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500039,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500041,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500042,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500049,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500040,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500051,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500053,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500054,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500055,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500056,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500057,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500050,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500059,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500060,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500061,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500062,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500063,'banner.jpg');
Insert into HR.MOIM_BANNER (MOIM_NO,BANNER) values (500068,'banner.jpg');
REM INSERTING into HR.MOIM_BOARD
SET DEFINE OFF;
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200002,'湛腰属 惟獣越',11,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200003,'板酔奄',12,'Y',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200004,'戚上醤笑上',16,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200005,'上上上',4,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200006,'戚戚跡',42,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200007,'因走左食爽形壱',8,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200008,'戚依精',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200009,'苦軒魚',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200010,'嬢益稽',1,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200011,'戚暗左食爽形壱',119,'N',to_date('20/08/19','RR/MM/DD'),500000,'ko',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200018,'薦鯉222',25,'N',to_date('20/08/20','RR/MM/DD'),500014,'jang',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200019,'析鋼',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200020,'越越越',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200021,'戚戚',0,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200022,'dldldl',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200023,'生植',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200024,'戚跡?',2,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200025,'板',4,'N',to_date('20/08/21','RR/MM/DD'),500000,'ko',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200026,'因走',2,'N',to_date('20/08/21','RR/MM/DD'),500001,'kwon',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200027,'けいしけいし',3,'N',to_date('20/08/21','RR/MM/DD'),500001,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200028,'けいしいけしけし',44,'Y',to_date('20/08/21','RR/MM/DD'),500001,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200029,'123',11,'Y',to_date('20/08/21','RR/MM/DD'),500001,'jung',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200030,'照括馬室推',6,'N',to_date('20/08/25','RR/MM/DD'),500008,'moon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200031,'けけけけけけけけけ',3,'N',to_date('20/08/25','RR/MM/DD'),500024,'jang',3);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200032,'焼戚政',3,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon',1);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200033,'焼焼焼焼焼焼焼焼焼',3,'N',to_date('20/08/28','RR/MM/DD'),500000,'kwon',2);
Insert into HR.MOIM_BOARD (BOARD_NO,TITLE,VIEWS,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID,BOARD_CATE_NO) values (200034,'餌餌~~',11,'N',to_date('20/08/28','RR/MM/DD'),500058,'jung',2);
REM INSERTING into HR.MOIM_BOARD_CATE
SET DEFINE OFF;
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (1,'因走');
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (2,'板奄');
Insert into HR.MOIM_BOARD_CATE (BOARD_CATE_NO,NAME) values (3,'析鋼');
REM INSERTING into HR.MOIM_COMMENT
SET DEFINE OFF;
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400004,'湛腰属 奇越','N',to_date('20/08/20','RR/MM/DD'),'test4',200005,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400006,'魚軒苦軒魚','N',to_date('20/08/20','RR/MM/DD'),'test4',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400007,'しぁし','N',to_date('20/08/20','RR/MM/DD'),'test4',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400008,'苦軒 魚','N',to_date('20/08/20','RR/MM/DD'),'ko',200011,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400009,'戚戚跡','N',to_date('20/08/20','RR/MM/DD'),'ko',200006,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400011,'奇越','N',to_date('20/08/20','RR/MM/DD'),'jang',200018,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400012,'餌','N',to_date('20/08/21','RR/MM/DD'),'ko',200025,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400013,'奇越','N',to_date('20/08/21','RR/MM/DD'),'ko',200002,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400014,'けいし','N',to_date('20/08/21','RR/MM/DD'),'kwon',200028,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400015,'奇越 ぇ企企企企奇�J','N',to_date('20/08/21','RR/MM/DD'),'kwon',200028,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400016,'人酔','N',to_date('20/08/26','RR/MM/DD'),'jung',200029,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400017,'焼蟹陥','N',to_date('20/08/26','RR/MM/DD'),'test1',200023,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400023,'耕 虞戚徹 虞戚徹 虞戚徹','N',to_date('20/08/26','RR/MM/DD'),'ko',200011,400008);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400027,'ぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞぞ','N',to_date('20/08/28','RR/MM/DD'),'jung',200034,0);
Insert into HR.MOIM_COMMENT (COMMENT_NO,TITLE,DELETE_YN,CREATED_DATE,USER_ID,BOARD_NO,MAIN_COMMENT_NO) values (400025,'推稽稽稽','N',to_date('20/08/26','RR/MM/DD'),'test1',200011,400008);
REM INSERTING into HR.MOIM_FAVOLITE_MOIM
SET DEFINE OFF;
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500032,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500011,'kwon',to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500027,'kwon',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500040,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500049,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500004,'kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'moon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500014,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500042,'jung',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500001,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500055,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500041,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500001,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500011,'test4',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500011,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500005,'test3',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500005,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'test2',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500001,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500014,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test1',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500007,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500024,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500025,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500014,'test5',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500030,'kwon',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500035,'kwon',to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500005,'kwon',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500032,'jang',to_date('20/09/09','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500056,'kwon',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500016,'kwon',to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500000,'kwon',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500055,'jang',to_date('20/09/09','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500018,'kwon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500061,'test7',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500028,'moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500029,'moon',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_FAVOLITE_MOIM (MOIM_NO,USER_ID,LIKED_DATE) values (500038,'moon',to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_FOLLOW
SET DEFINE OFF;
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','jung');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','kim');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','ko');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','kwon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','moon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jang','test1');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jung','kim');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jung','ko');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('jung','test2');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kim','kwon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kim','moon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kim','test6');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('ko','kim');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('ko','moon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('ko','test1');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','jang');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','ko');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','moon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','test1');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','test2');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','test3');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('kwon','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','kim');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','ko');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','kwon');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','test5');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('moon','test7');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test1','jang');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test1','test3');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test1','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test1','test5');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test2','test3');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test2','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test3','test4');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test4','test5');
Insert into HR.MOIM_FOLLOW (USER_ID,FOL_USER_ID) values ('test5','test6');
REM INSERTING into HR.MOIM_JOIN_USER
SET DEFINE OFF;
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500001,'jung',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'ko','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500001,'jang',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500001,'kwon','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500002,'moon',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500002,'kim','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500003,'test1','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500004,'test2','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500004,'test3',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500005,'moon',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500005,'jung',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500005,'kim','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500006,'test4','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500006,'test5',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500006,'test6',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500007,'kim','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500007,'jung',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500008,'moon','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500009,'ko',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500009,'test7','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500010,'test8','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500011,'test9',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500011,'test10',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500011,'test11','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500012,'ko','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500013,'test12','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500013,'test13',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500014,'jang','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500015,'kwon','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'ko',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'test4',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500058,'jung','ADMIN',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'jang',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500017,'test7','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500018,'test10',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500018,'test9','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500018,'test8',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500019,'test11','ADMIN',to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500019,'test12',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'test12',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'test4',null,to_date('20/08/11','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'test1',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'test2',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'test3',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500022,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500054,'jung','ADMIN',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500055,'jung','ADMIN',to_date('20/08/20','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'kwon',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500029,'test2',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'moon','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'test10',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'ko',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500024,'jung',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'test5',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500025,'test8',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'kim','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'test1',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'test2',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'test3',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500026,'test4',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500027,'jang','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'kwon','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'test13',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'test11',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500028,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500029,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500029,'kim',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500030,'ko','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500030,'jung',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'ko',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'kim',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'moon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500031,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500032,'test13','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500032,'test12',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500033,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500033,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500033,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500034,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500034,'ko',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'test1',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'test2',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'test3',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500035,'test4',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500036,'kim','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500036,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test1','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test2',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test3',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test4',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500037,'test5',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'kim','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'ko',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'jung',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'moon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500039,'test10','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500039,'test9',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test10',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test9',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test8',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'test5','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'test6',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500042,'jung','ADMIN',to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500042,'kwon',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500042,'test7',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500042,'jang',null,to_date('20/08/13','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500053,'ko','ADMIN',to_date('20/08/18','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500029,'ko',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500049,'test2','ADMIN',to_date('20/08/18','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500050,'jang','ADMIN',to_date('20/08/18','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'ko',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500041,'test4',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'test4',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500018,'kwon',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500005,'kwon',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500027,'kwon',null,to_date('20/08/21','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500030,'jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500019,'jang',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500050,'jung',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500050,'kwon',null,to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500056,'jung','ADMIN',to_date('20/08/24','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500007,'jang',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500056,'kwon',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500038,'kwon',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500040,'kwon',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500007,'kwon',null,to_date('20/08/26','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500057,'ko','ADMIN',to_date('20/08/27','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500061,'test7','ADMIN',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500053,'jang',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500053,'jung',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500000,'jung',null,to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500062,'ko','ADMIN',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_JOIN_USER (MOIM_NO,USER_ID,USER_ROLE,CREATED_DATE) values (500062,'test1',null,to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_LOCATION
SET DEFINE OFF;
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (1,'悪辞姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (2,'丞探姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (3,'姥稽姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (4,'榎探姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (5,'慎去匂姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (6,'疑拙姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (7,'淫焦姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (8,'辞段姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (9,'悪害姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (10,'勺督姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (11,'悪疑姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (12,'原匂姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (13,'遂至姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (14,'辞企庚姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (15,'精汝姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (16,'掻姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (17,'曽稽姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (18,'失疑姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (19,'韻遭姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (20,'疑企庚姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (21,'失栽姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (22,'悪栽姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (23,'亀裟姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (24,'葛据姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (25,'掻櫛姥');
Insert into HR.MOIM_LOCATION (LOCATION_NO,NAME) values (0,'蒸製');
REM INSERTING into HR.MOIM_MAIN
SET DEFINE OFF;
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500001,'錘疑乞績',3,8,'錘疑1.jpg',3000,3,'Y','N',to_date('20/09/15','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,3,'辞随 姥稽姥 井辞稽 37');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500002,'因尻 銅掴赤嬢推',2,5,'製焦.png',20000,0,'Y','N',to_date('20/10/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,10,'辞随 勺督姥 亜喰稽 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500003,'慎鉢乞績',1,3,'什匂苧.png',20000,0,'Y','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700024,12,'辞随 原匂姥 亜丞企稽 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500004,'悪焼走 切櫛背推!',2,6,'鋼形疑弘.png',15000,1,'Y','N',to_date('20/11/11','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700020,8,'辞随 辞段姥 悪害企稽 27');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500005,'五戚巴 督締姥敗 6切軒',4,6,'惟績2.jpg',5000,3,'N','N',to_date('20/11/08','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700012,2,'辞随 丞探姥 亜稽因据稽 66');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500006,'壕益馬叔歳',3,6,'壕益1.jpg',5500,0,'Y','N',to_date('20/11/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700013,16,'辞随 掻姥 害企庚稽 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500007,'旭戚 昼穣什斗巨背推!',4,10,'什斗巨1.PNG',10000,7,'Y','N',to_date('20/11/24','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700015,10,'辞随 勺督姥 亀溢稽 434');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500008,'裟紫醗疑 繊呪 辰趨推せせせ',1,5,'裟紫1.jpg',5000,0,'Y','N',to_date('20/11/27','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700015,1,'辞随 悪辞姥 悪辞稽 17');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500009,'昔虞昔 硝形爽室推ばば',2,10,'昔虞昔1.jpg',5000,0,'Y','N',to_date('20/11/09','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700019,5,'辞随 慎去匂姥 井昔稽 701');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500010,'旭戚 詞皐叔歳?',1,5,'錘疑3.jpg',5000,0,'Y','N',to_date('20/11/13','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,3,'辞随 姥稽姥 鯵裟稽 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500011,'廃悪 切穿暗展君亜推',3,10,'錘疑2.jpg',10000,3,'Y','N',to_date('20/11/03','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700019,3,'辞随 姥稽姥 鯵裟稽 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500012,'悪焼走 庁姥 姥背推ぬぬ',1,10,'悪焼走2.jpg',20000,0,'Y','N',to_date('20/11/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700020,3,'辞随 姥稽姥 壱担稽 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500013,'鋼形疑弘2',2,5,'紫嘘昔呼.png',15000,0,'Y','N',to_date('20/12/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700021,11,'辞随 悪疑姥 壱幾稽 19');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500014,'旭戚 亜叔歳 姥背推!',1,3,'悪焼走1.jpg',10000,8,'Y','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700022,11,'辞随 悪疑姥 疑害稽 733');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500015,'嬬辞闘 旭戚亜叔歳 赤蟹推???',0,1,'嬬辞闘1.jpg',5000,0,'Y','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,11,'辞随 悪疑姥 亜掘食随掩 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500016,'尻駅左君亜推!',5,15,'尻駅1.jpg',25000,1,'Y','N',to_date('20/12/12','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700023,4,'辞随 榎探姥 亜原至稽 70');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500017,'逐薦 旭戚亜推せせせ',1,5,'庚鉢因尻.jpg',15000,0,'Y','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700025,8,'辞随 辞段姥 轄薄稽13掩 20');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500018,'淫焦姥 鞄姥乞績!!',4,30,'鞄姥3.png',15000,1,'N','N',to_date('20/10/27','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,7,'辞随 淫焦姥 淫焦稽 1');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500019,'陥焦姥 左叔姿錘~?',3,4,'慎鉢2.jpg',7000,0,'N','N',to_date('20/10/01','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700024,6,'辞随 疑拙姥 葛級稽 618');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500022,'爽源拭 幻劾紫寓?',4,5,'奄展1.jpg',7500,0,'N','N',to_date('20/10/04','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700014,2,'辞随 丞探姥 因牌企稽 530');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500023,'趨斗督滴 5誤姥敗推',5,5,'督銅1.jpg',7500,0,'N','N',to_date('20/10/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700025,4,'辞随 榎探姥 榎馬稽 594');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500024,'榎探姥 綬乞績',3,5,'綬1.PNG',15000,6,'N','N',to_date('20/10/18','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,4,'辞随 榎探姥 榎馬稽1陥掩 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500025,'鞄姥企噺 識呪 姥背推',3,5,'鞄姥1.png',15000,6,'N','N',to_date('20/10/25','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700018,4,'辞随 榎探姥 亜至稽 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500026,'旭戚 逐姥拝歳級 姥敗',5,5,'逐姥1.jpg',15000,0,'N','N',to_date('20/10/22','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700017,2,'辞随 丞探姥 亜稽因据稽 71');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500027,'爽源拭 朕杷 球叔歳~?',2,10,'朝凪2.jpg',15000,1,'N','N',to_date('20/10/11','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,7,'辞随 淫焦姥 淫焦至蟹級掩 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500028,'継 襟切',5,5,'継1.jpg',3000,5,'N','N',to_date('20/10/03','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700011,9,'辞随 悪害姥 鯵匂稽 204');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500029,'壕鍵戚 紫箭!',4,4,'壕益3.jpg',5000,1,'Y','N',to_date('20/12/29','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700012,17,'辞随 曽稽姥 井費叡3亜掩 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500030,'亀原轟 舛左 因政背推~',3,4,'戚姥焼蟹1.jpg',10000,1,'N','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,9,'辞随 悪害姥 悪害企稽 478');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500031,'昔虞昔 亜牽団球験艦陥',6,10,'昔虞昔2.jpg',10000,0,'N','N',to_date('20/12/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700019,22,'辞随 悪栽姥 亀裟稽 8掩 8');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500032,'戚姥焼蟹 設 焼獣澗 歳..?',2,3,'戚姥焼蟹2.jpg',20000,2,'N','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,21,'辞随 失栽姥 壱形企稽6掩 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500033,'壱丞戚朝凪 亜叔歳!!',2,3,'壱丞戚2.jpg',30000,0,'Y','N',to_date('20/12/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700021,20,'辞随 疑企庚姥 諺酔稽6掩 3');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500034,'悪焼走朝凪!!!!!',2,3,'悪焼走3.jpg',20000,0,'N','N',to_date('20/12/14','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700020,19,'辞随 韻遭姥 韻舌稽1掩 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500035,'EDM凪什銅降 亜叔歳!?',5,15,'督銅2.jpg',20000,1,'N','N',to_date('20/10/15','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700025,7,'辞随 淫焦姥 姥章掩 10');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500036,'慎鉢 鋼亀 左君 亜叔歳~?',2,4,'慎鉢3.png',10000,0,'N','N',to_date('20/09/07','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700024,15,'辞随 精汝姥 亜疎稽 162');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500037,'尻蕉 馬壱 粛嬢推~ばば',5,20,'尻蕉1.jpg',30000,0,'N','N',to_date('20/09/05','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700014,14,'辞随 辞企庚姥 娃硲企稽 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500038,'杷督 鯵壱呪幻!せ_せ',6,20,'杷督1.jpg',10000,1,'N','N',to_date('20/09/28','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700013,1,'辞随 悪辞姥 鯵鉢掩 48');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500039,'亀原轟 舛左 因政背推~',2,3,'鋼形疑弘.png',10000,0,'N','N',to_date('20/12/16','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700022,24,'辞随 葛据姥 刊据稽 19');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500040,'神潅 重談蝕拭辞 言増貼号 杯艦陥~',7,10,'言増2.jpg',20000,1,'N','N',to_date('20/09/21','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700016,1,'辞随 悪辞姥 印含掘稽 51');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500041,'岸哀搾 股生君逢獣陥',5,5,'言増1.jpg',20000,1,'N','N',to_date('20/09/17','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700016,3,'辞随 姥稽姥 壱担稽 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500042,'旭戚 朝凪陥橿推!',4,6,'朝凪1.jpg',5000,1,'N','N',to_date('20/09/14','RR/MM/DD'),to_date('20/08/13','RR/MM/DD'),700015,3,'辞随 姥稽姥 井辞稽 5');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500049,'悪栽姥 言増燈嬢!',1,10,'言増3.jpg',100000,1,'N','N',to_date('20/12/22','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700016,22,'辞随 悪栽姥 号俳稽 384');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500050,'壕益 得姥敗',3,5,'壕益2.jpg',10000,0,'N','N',to_date('20/12/27','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700012,23,'辞随 亀裟姥 亀雁稽19亜掩 4');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500051,'杷督馬叔歳????',1,8,'杷督2.jpg',50000,0,'N','N',to_date('20/12/27','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700013,10,'辞随 勺督姥 暗原稽 10掩 6');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500053,'杷号 督銅姥敗',3,10,'惟績3.jpg',5000,0,'N','N',to_date('20/09/20','RR/MM/DD'),to_date('20/08/18','RR/MM/DD'),700011,2,'辞随 丞探姥 因牌企稽 532');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500000,'勺督姥 鞄姥馬叔歳 赤蟹推',6,10,'鞄姥4.png',100000,1,'Y','N',to_date('20/12/01','RR/MM/DD'),to_date('20/08/11','RR/MM/DD'),700018,18,'辞随 失疑姥 榎硲稽 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500054,'政奄孔 裟紫醗疑',3,10,'壱丞戚1.jpg',0,0,'N','N',to_date('20/09/20','RR/MM/DD'),to_date('20/08/20','RR/MM/DD'),700015,3,'辞随 姥稽姥 因据稽 21');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500055,'原匂姥拭辞 鞄姥 杯艦陥!! 乞砧 陳紳陳紳 4 on 4',1,8,'鞄姥2.png',5000,2,'N','N',to_date('20/09/25','RR/MM/DD'),to_date('20/08/20','RR/MM/DD'),700018,12,'辞随 原匂姥 原匂企稽 108');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500056,'1含原陥 慎鉢坐推',2,20,'慎鉢1.jpg',4000,1,'N','N',to_date('20/09/29','RR/MM/DD'),to_date('20/08/24','RR/MM/DD'),700024,3,'辞随 姥稽姥 井辞稽 15');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500057,'爽源原陥 逐姥拝紫寓',1,10,'逐姥2.png',50000,0,'N','N',to_date('20/09/26','RR/MM/DD'),to_date('20/08/27','RR/MM/DD'),700013,6,'辞随 疑拙姥 厩紫裟掩 2');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500058,'尻駅 旭戚左君亜叔歳 姥背推!',2,3,'尻駅2.jpg',100000,0,'N','N',to_date('20/12/08','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700025,25,'辞随 掻櫛姥 疑析稽95掩 7');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500062,'旭戚 杷号亜辞 継馬叔歳?',2,4,'継2.jpg',500000,0,'N','N',to_date('20/12/13','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700011,18,'辞随 失疑姥 榎硲稽13掩 21');
Insert into HR.MOIM_MAIN (MOIM_NO,TITLE,JOIN_COUNT,HEAD_COUNT,IMAGE,FEE,LIKES,PREMIUM_YN,DELETE_YN,JOIN_DATE,CREATED_DATE,SUB_CATE_NO,LOCATION_NO,LOCATION_DETAIL) values (500061,'観度亀 乞績!!',1,10,'nintendo.jpg',5000,1,'Y','N',to_date('20/09/30','RR/MM/DD'),to_date('20/08/28','RR/MM/DD'),700016,13,'辞随 遂至姥 砧途郊是稽 7');
REM INSERTING into HR.MOIM_MAIN_CATEGORY
SET DEFINE OFF;
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (1,'惟績/神喰');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (2,'紫嘘/昔呼');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (3,'錘疑/什匂苧');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (4,'鋼形疑弘');
Insert into HR.MOIM_MAIN_CATEGORY (MAIN_CATE_NO,NAME) values (5,'庚鉢/因尻/逐薦');
REM INSERTING into HR.MOIM_MANAGER_BOARD
SET DEFINE OFF;
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (1,'坦製 因走脊艦陥.',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (2,'砧腰属 因走脊艦陥.',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (3,'薦鯉3333333',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (4,'因走脊艦陥.',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (5,'因走因走',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (6,'薦鯉精 陥丞馬惟',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (7,'薦鯉戚 陥業旭焼',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (8,'薦鯉聖 郊荷切',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (9,'弦戚 郊�f陥',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (10,'坦製 因走脊艦陥222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (11,'砧腰属 因走脊艦陥222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (12,'延厭 因走脊艦陥',3,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (13,'因走脊艦陥222',1,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (14,'因走因走222',0,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (15,'薦鯉精 陥丞馬惟222',1,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (16,'因走脊艦陥!',4,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (17,'222222222',0,'Y',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (18,'因走 溌昔背爽室推',7,'N',to_date('20/08/25','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (19,'因走脊艦陥!',12,'N',to_date('20/08/28','RR/MM/DD'));
Insert into HR.MOIM_MANAGER_BOARD (MANAGER_BOARD_NO,MANAGER_BOARD_TITLE,VIEWS,DELETE_YN,CREATED_DATE) values (20,'因走 去系 背左畏柔艦陥 神嫌亜 吟暗旭焼推',3,'Y',to_date('20/08/28','RR/MM/DD'));
REM INSERTING into HR.MOIM_MESSAGE
SET DEFINE OFF;
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (135,'薦鯉','鎧遂','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (136,'薦鯉','鎧遂','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (137,'薦鯉','鎧遂','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (221,'伸宿備馬室推','薦降~~~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (198,'薦鯉','鎧遂','test1','jang','N',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (199,'薦鯉','鎧遂','test1','jang','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (200,'薦鯉','鎧遂','test1','jang','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (222,'伸宿備馬室推','薦降~~~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (132,'薦鯉','鎧遂','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (133,'薦鯉','鎧遂','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (134,'薦鯉','鎧遂','jang','test1','N',to_date('20/08/21','RR/MM/DD'),'test1');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (202,'薦鯉','鎧遂','test1','jang','N',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (203,'薦鯉','鎧遂','jang','test1','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (204,'薦鯉','鎧遂','jang','test1','Y',to_date('20/08/21','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (223,'伸宿備馬室推','薦降~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (224,'伸宿備馬室推','薦降~~~','moon','kwon','N',to_date('20/08/28','RR/MM/DD'),'kwon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (226,'設馬壱 赤嬢推??','せせせせせせせせせ','moon','jang','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (227,'設馬壱 赤嬢推??','せせせせせせせせせ','moon','jang','Y',to_date('20/08/28','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (228,'設馬壱 赤嬢推??','せせせせせせせせせ','moon','jang','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (229,'慎層松亜 切奄襖 亀人含掘推','せせせせせせせ','moon','ko','N',to_date('20/08/28','RR/MM/DD'),'ko');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (230,'慎層松亜 切奄襖 亀人含掘推','せせせせせせせ','moon','ko','N',to_date('20/08/28','RR/MM/DD'),'moon');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (232,'杉推析 走唖','短匂亀拭戚球22222','jang','jung','Y',to_date('20/08/28','RR/MM/DD'),'jang');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (233,'照括馬室推~','餌餌餌~','jung','ko','N',to_date('20/08/28','RR/MM/DD'),'ko');
Insert into HR.MOIM_MESSAGE (MESSAGE_NO,TITLE,CONTENT,SEND_USER,RECEIVE_USER,READ_YN,CREATED_DATE,USER_ID) values (234,'照括馬室推~','餌餌餌~','jung','ko','N',to_date('20/08/28','RR/MM/DD'),'jung');
REM INSERTING into HR.MOIM_PHOTO
SET DEFINE OFF;
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600000,'star1.png',2,'N',to_date('20/08/24','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600001,'star1.png',3,'N',to_date('20/08/24','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600002,'KakaoTalk_20200813_180307085.jpg',2,'N',to_date('20/08/24','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600003,'1.jpeg',0,'N',to_date('20/08/26','RR/MM/DD'),500000,'kwon');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600004,'12.jpg',0,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600005,'13.jpg',0,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600006,'14.jpg',0,'N',to_date('20/08/26','RR/MM/DD'),500002,'moon');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600007,'FB_IMG_1477479606226.jpg',0,'N',to_date('20/08/26','RR/MM/DD'),500000,'test1');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600008,'FB_IMG_1477479606226.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600009,'FB_IMG_1503533236916.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600010,'FB_IMG_1503533236916.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600011,'Koala.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600012,'Lighthouse.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600013,'Penguins.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600014,'Tulips.jpg',0,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600015,'Chrysanthemum.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600016,'Hydrangeas.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600017,'Desert.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600018,'Penguins.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600019,'Jellyfish.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600020,'Tulips.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600021,'Penguins.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600022,'Jellyfish.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600023,'FB_IMG_1503533236916.jpg',1,'N',to_date('20/08/27','RR/MM/DD'),500000,'ko');
Insert into HR.MOIM_PHOTO (PHOTO_NO,PHOTO,LIKES,DELETE_YN,CREATED_DATE,MOIM_NO,USER_ID) values (600025,'1.jpeg',0,'N',to_date('20/08/27','RR/MM/DD'),500024,'kwon');
REM INSERTING into HR.MOIM_PHOTO_USER_LIKE
SET DEFINE OFF;
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600000,'kwon',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600001,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600001,'kwon',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600001,'test1',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600002,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600002,'kwon',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600015,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600016,'kwon',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600017,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600018,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600019,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600020,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600021,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600022,'ko',500000);
Insert into HR.MOIM_PHOTO_USER_LIKE (PHOTO_NO,USER_ID,MOIM_NO) values (600023,'ko',500000);
REM INSERTING into HR.MOIM_SUB_CATE
SET DEFINE OFF;
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700011,'軒益神崎傾穿球',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700012,'壕堂益虞錘球',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700013,'杷督紳虞昔4',1);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700014,'縮越/尻蕉',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700015,'綬/朕杷/託',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700016,'言増/耕縦噺',2);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700017,'逐姥/撚詞',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700018,'鞄姥',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700019,'什追戚闘/昔虞昔',3);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700020,'悪焼走',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700021,'壱丞戚',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700022,'督中嫌',4);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700023,'因尻/尻駅',5);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700024,'慎鉢',5);
Insert into HR.MOIM_SUB_CATE (SUB_CATE_NO,NAME,MAIN_CATE_NO) values (700025,'督銅/凪什銅忽',5);
REM INSERTING into HR.MOIM_SUB_JOIN_USER
SET DEFINE OFF;
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800013,500042,'jang');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800014,500042,'jang');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800005,500000,'ko');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800017,500000,'test12');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800000,500000,'kwon');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800017,500000,'test4');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800000,500000,'test4');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800005,500000,'test4');
Insert into HR.MOIM_SUB_JOIN_USER (SUB_MOIM_NO,MOIM_NO,USER_ID) values (800019,500058,'jung');
REM INSERTING into HR.MOIM_SUB_MOIM
SET DEFINE OFF;
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800000,'惟績乞績乞績','姥稽姥',5,5000,'N',to_date('20/08/14','RR/MM/DD'),2,to_date('20/08/11','RR/MM/DD'),'ko',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800001,'蕉胃乞績乞績','姥稽姥',4,10000,'N',to_date('20/09/10','RR/MM/DD'),0,to_date('20/08/11','RR/MM/DD'),'ko',500004);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800013,'けけけけけけけけけけけ','姥稽姥',3,10000,'N',to_date('20/09/02','RR/MM/DD'),1,to_date('20/08/14','RR/MM/DD'),'jang',500042);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800014,'ぉしいぉしい','姥稽姥',3,10000,'N',null,1,to_date('20/08/14','RR/MM/DD'),'jang',500042);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800005,'巨薦戚撚責拷紳','酔軒増生稽亜切',2,13000,'N',to_date('20/08/29','RR/MM/DD'),2,to_date('20/08/14','RR/MM/DD'),'ko',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800017,'乞績 幻級奄','格革増',3,50000,'N',to_date('20/08/19','RR/MM/DD'),2,to_date('20/08/14','RR/MM/DD'),'test4',500000);
Insert into HR.MOIM_SUB_MOIM (SUB_MOIM_NO,TITLE,LOCATION,HEAD_COUNT,FEE,DELETE_YN,JOIN_DATE,JOIN_COUNT,CREATED_DATE,USER_ID,MOIM_NO) values (800019,'乞戚切~~','慎去匂 展績什締嬢',10,10000,'N',to_date('20/08/28','RR/MM/DD'),1,to_date('20/08/28','RR/MM/DD'),'jung',500058);
REM INSERTING into HR.MOIM_USER
SET DEFINE OFF;
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('moon','庚爽慎','010-1111-2222','zxcv1234','慎爽庚','moon@gmail.com','1991.01.01','害','N',to_date('20/08/11','RR/MM/DD'),0,'11.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('jung','舛薄繕','010-1111-3333','1','繕薄舛','jung@gmail.com','1992.06.25','害','N',to_date('20/08/11','RR/MM/DD'),0,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('kim','沿肯呪','010-1111-4444','zxcv1234','呪肯沿','kim@gmail.com','1996.01.09','害','N',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('ko','壱舛据','010-1111-5555','1','据舛壱','ko@gmail.com','1994.09.25','害','N',to_date('20/08/11','RR/MM/DD'),18,'FB_IMG_1477479606226.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('kwon','映慎層','010-1111-6666','zxcv1234','層慎映','kwon@gmail.com','1994.07.03','害','N',to_date('20/08/11','RR/MM/DD'),0,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('jang','舌爽軒','010-1111-7777','1','軒爽舌','jang@gmail.com','2000.01.19','食','N',to_date('20/08/11','RR/MM/DD'),3,'匂五.jpg','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('admin','淫軒切','010-9999-9999','zxcv1234','淫軒切','admin@gmail.com','1995.01.05','食','N',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test1','砺什闘1','010-8888-8888','1234','砺什闘1','test1@gmail.com','1993.01.01','害','N',to_date('20/08/11','RR/MM/DD'),11,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test2','砺什闘2','010-8888-7777','1234','砺什闘2','test2@gmail.com','1993.01.01','害','N',to_date('20/08/11','RR/MM/DD'),15,'profile.png','Y');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test3','砺什闘3','010-8888-6666','1234','砺什闘3','test3@gmail.com','1993.01.01','食','N',to_date('20/08/11','RR/MM/DD'),16,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test4','砺什闘4','010-8888-5555','1234','砺什闘4','test4@gmail.com','1993.01.01','害','N',to_date('20/08/11','RR/MM/DD'),20,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test5','砺什闘5','010-1212-1212','1234','莞革績5','test5@naver.com','2000.02.02','害','N',to_date('20/08/11','RR/MM/DD'),1,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test6','砺什闘6','010-1313-1313','1234','莞革績6','test6@naver.com','2000.07.07','食','N',to_date('20/08/11','RR/MM/DD'),2,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test7','砺什闘7','010-2222-2222','1234','莞革績7','test7@naver.com','1999.05.05','害','N',to_date('20/08/11','RR/MM/DD'),3,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test8','砺什闘8','010-3434-3434','1234','莞革績8','test8@naver.com','1998.03.03','食','N',to_date('20/08/11','RR/MM/DD'),4,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test9','砺什闘9','010-7777-7777','1234','莞革績9','test9@naver.com','2001.11.11','害','Y',to_date('20/08/11','RR/MM/DD'),5,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test10','砺什闘10','010-0505-0505','1234','莞革績10','test10@naver.com','1995.03.14','食','N',to_date('20/08/11','RR/MM/DD'),6,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test11','砺什闘11','010-7878-7878','1234','莞革績11','test11@naver.com','1997.04.06','害','N',to_date('20/08/11','RR/MM/DD'),7,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test12','砺什闘12','010-4646-4646','1234','莞革績12','test12@naver.com','1993.02.14','食','N',to_date('20/08/11','RR/MM/DD'),8,'profile.png','N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('test13','砺什闘13','010-9999-9999','1234','莞革績13','test13@naver.com','1992.05.25','害','N',to_date('20/08/11','RR/MM/DD'),0,null,'N');
Insert into HR.MOIM_USER (USER_ID,USER_NAME,TEL,USER_PASSWORD,NICKNAME,EMAIL,BIRTH,GENDER,DELETE_YN,CREATED_DATE,LOCATION_NO,PROFILE_IMAGE,SUSPENDED_ACCOUNT_YN) values ('yjs10000','政仙汐','01011112222','zxcv1234','仙汐政','js@js.com','199999','害','N',to_date('20/08/19','RR/MM/DD'),2,null,'N');
REM INSERTING into HR.MOIM_USER_CATE
SET DEFINE OFF;
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('moon',1);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('jung',2);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('kim',3);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('ko',4);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('kwon',5);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('jang',1);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test1',2);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test2',3);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test3',4);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test4',5);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test5',1);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test6',2);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test7',3);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test8',4);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test9',5);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test10',1);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test11',2);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test12',3);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('test13',4);
Insert into HR.MOIM_USER_CATE (USER_ID,MAIN_CATE_NO) values ('yjs10000',4);
REM INSERTING into HR.MOIM_WARNING
SET DEFINE OFF;
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (1,'jang','test1','重壱杯艦陥111','乞績',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (2,'jang','test2','重壱杯艦陥222','政煽',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (3,'test1','test3','重壱杯艦陥333','乞績',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (4,'test2','test3','重壱杯艦陥444','乞績',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (5,'test2','test4','重壱杯艦陥555','政煽',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (6,'test2','test5','重壱杯艦陥666','乞績',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (7,'test2','test6','重壱杯艦陥777','乞績',to_date('20/08/24','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (8,'kim','jung','重壱杯艦陥888','政煽',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (9,'kim','moon','重壱杯艦陥999','政煽',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (10,'jung','jang','重壱杯艦陥10','政煽',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (11,'jung','ko','重壱杯艦陥11','乞績',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (12,'jung','kwon','重壱杯艦陥12','政煽',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (13,'ko','kim','重壱杯艦陥13','乞績',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (14,'moon','kim','重壱杯艦陥14','乞績',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (15,'kwon','moon','重壱杯艦陥16','乞績',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (16,'test2','test5','重壱杯艦陥17','乞績',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (17,'test3','test2','重壱杯艦陥18','乞績',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (18,'test3','test6','重壱杯艦陥19','政煽',to_date('20/08/25','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (21,'kwon','moon','煽軒亜暗虞','政煽',to_date('20/08/27','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (22,'kwon','moon','繕宿馬虞壱','政煽',to_date('20/08/28','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (23,'jung','jang','益撹','政煽',to_date('20/08/28','RR/MM/DD'),'N');
Insert into HR.MOIM_WARNING (WARNING_NO,USER_ID,LOGIN_USER_ID,CONTENT,TYPE,CREATED_DATE,DELETE_YN) values (24,'jung','jang','短匂亀 拭戚球','政煽',to_date('20/08/28','RR/MM/DD'),'Y');
REM INSERTING into HR.EMP_DETAILS_VIEW
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index JOINED_USER
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JOINED_USER" ON "HR"."MOIM_JOIN_USER" ("MOIM_NO", "USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MOIM_FOLLOW_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MOIM_FOLLOW_UK1" ON "HR"."MOIM_FOLLOW" ("USER_ID", "FOL_USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index MOIM_MANAGER_BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MOIM_MANAGER_BOARD_PK" ON "HR"."MOIM_MANAGER_BOARD" ("MANAGER_BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index MOIM_PHOTO_USER_LIKE_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MOIM_PHOTO_USER_LIKE_UK1" ON "HR"."MOIM_PHOTO_USER_LIKE" ("PHOTO_NO", "USER_ID", "MOIM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index MOIM_WARNING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MOIM_WARNING_PK" ON "HR"."MOIM_WARNING" ("WARNING_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007476
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007476" ON "HR"."MOIM_ALRAM" ("ALRAM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007483
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007483" ON "HR"."MOIM_BOARD" ("BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007486
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007486" ON "HR"."MOIM_BOARD_CATE" ("BOARD_CATE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007492
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007492" ON "HR"."MOIM_COMMENT" ("COMMENT_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007501
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007501" ON "HR"."MOIM_LOCATION" ("LOCATION_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007509
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007509" ON "HR"."MOIM_MAIN" ("MOIM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007512
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007512" ON "HR"."MOIM_MAIN_CATEGORY" ("MAIN_CATE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007516
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007516" ON "HR"."MOIM_PHOTO" ("PHOTO_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007520
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007520" ON "HR"."MOIM_SUB_CATE" ("SUB_CATE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007530
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007530" ON "HR"."MOIM_SUB_MOIM" ("SUB_MOIM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007541
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007541" ON "HR"."MOIM_USER" ("USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007582
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007582" ON "HR"."MOIM_MESSAGE" ("MESSAGE_NO") 
  ;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
--------------------------------------------------------
--  Constraints for Table MOIM_ALRAM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_ALRAM" MODIFY ("ALRAM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_ALRAM" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_ALRAM" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_ALRAM" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_ALRAM" ADD PRIMARY KEY ("ALRAM_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_BANNER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_BANNER" MODIFY ("MOIM_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" MODIFY ("BOARD_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD" ADD PRIMARY KEY ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_BOARD_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_BOARD_CATE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_BOARD_CATE" ADD PRIMARY KEY ("BOARD_CATE_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_BOARD_CATE" MODIFY ("BOARD_CATE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_COMMENT
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_COMMENT" MODIFY ("COMMENT_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_COMMENT" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_COMMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_COMMENT" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_COMMENT" ADD PRIMARY KEY ("COMMENT_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_FAVOLITE_MOIM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_FAVOLITE_MOIM" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_FAVOLITE_MOIM" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_FOLLOW
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_FOLLOW" MODIFY ("FOL_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_FOLLOW" ADD CONSTRAINT "MOIM_FOLLOW_UK1" UNIQUE ("USER_ID", "FOL_USER_ID") ENABLE;
  ALTER TABLE "HR"."MOIM_FOLLOW" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_JOIN_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_JOIN_USER" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_JOIN_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_JOIN_USER" ADD CONSTRAINT "JOINED_USER" UNIQUE ("MOIM_NO", "USER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_LOCATION
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_LOCATION" MODIFY ("LOCATION_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_LOCATION" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_LOCATION" ADD PRIMARY KEY ("LOCATION_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_MAIN
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("HEAD_COUNT" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("SUB_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" MODIFY ("LOCATION_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN" ADD PRIMARY KEY ("MOIM_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_MAIN_CATEGORY
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MAIN_CATEGORY" MODIFY ("MAIN_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN_CATEGORY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MAIN_CATEGORY" ADD PRIMARY KEY ("MAIN_CATE_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_MANAGER_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MANAGER_BOARD" MODIFY ("MANAGER_BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MANAGER_BOARD" MODIFY ("MANAGER_BOARD_TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_MANAGER_BOARD" ADD CONSTRAINT "MOIM_MANAGER_BOARD_PK" PRIMARY KEY ("MANAGER_BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_MESSAGE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MESSAGE" ADD PRIMARY KEY ("MESSAGE_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_MESSAGE" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_PHOTO
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_PHOTO" MODIFY ("PHOTO_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO" ADD PRIMARY KEY ("PHOTO_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_PHOTO_USER_LIKE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_PHOTO_USER_LIKE" MODIFY ("PHOTO_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO_USER_LIKE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO_USER_LIKE" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_PHOTO_USER_LIKE" ADD CONSTRAINT "MOIM_PHOTO_USER_LIKE_UK1" UNIQUE ("PHOTO_NO", "USER_ID", "MOIM_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_SUB_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_CATE" MODIFY ("SUB_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_CATE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_CATE" MODIFY ("MAIN_CATE_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_CATE" ADD PRIMARY KEY ("SUB_CATE_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_SUB_JOIN_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" MODIFY ("SUB_MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_SUB_MOIM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("SUB_MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("LOCATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("HEAD_COUNT" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" MODIFY ("MOIM_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_SUB_MOIM" ADD PRIMARY KEY ("SUB_MOIM_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_USER" MODIFY ("SUSPENDED_ACCOUNT_YN" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("TEL" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("USER_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER" ADD PRIMARY KEY ("USER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOIM_USER_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_USER_CATE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_USER_CATE" MODIFY ("MAIN_CATE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOIM_WARNING
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_WARNING" MODIFY ("WARNING_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_WARNING" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_WARNING" MODIFY ("LOGIN_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."MOIM_WARNING" ADD CONSTRAINT "MOIM_WARNING_PK" PRIMARY KEY ("WARNING_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_ALRAM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_ALRAM" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_BOARD
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_BOARD" ADD FOREIGN KEY ("BOARD_CATE_NO")
	  REFERENCES "HR"."MOIM_BOARD_CATE" ("BOARD_CATE_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_BOARD" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_BOARD" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_COMMENT
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_COMMENT" ADD FOREIGN KEY ("BOARD_NO")
	  REFERENCES "HR"."MOIM_BOARD" ("BOARD_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_COMMENT" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_FAVOLITE_MOIM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_FAVOLITE_MOIM" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_FAVOLITE_MOIM" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_FOLLOW
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_FOLLOW" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_JOIN_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_JOIN_USER" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_JOIN_USER" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_MAIN
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MAIN" ADD FOREIGN KEY ("LOCATION_NO")
	  REFERENCES "HR"."MOIM_LOCATION" ("LOCATION_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_MAIN" ADD FOREIGN KEY ("SUB_CATE_NO")
	  REFERENCES "HR"."MOIM_SUB_CATE" ("SUB_CATE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_MESSAGE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_MESSAGE" ADD CONSTRAINT "MOIM_MESSAGE_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_PHOTO
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_PHOTO" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_PHOTO" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_SUB_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_CATE" ADD FOREIGN KEY ("MAIN_CATE_NO")
	  REFERENCES "HR"."MOIM_MAIN_CATEGORY" ("MAIN_CATE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_SUB_JOIN_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" ADD FOREIGN KEY ("MOIM_NO", "USER_ID")
	  REFERENCES "HR"."MOIM_JOIN_USER" ("MOIM_NO", "USER_ID") ENABLE;
  ALTER TABLE "HR"."MOIM_SUB_JOIN_USER" ADD FOREIGN KEY ("SUB_MOIM_NO")
	  REFERENCES "HR"."MOIM_SUB_MOIM" ("SUB_MOIM_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_SUB_MOIM
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_SUB_MOIM" ADD FOREIGN KEY ("MOIM_NO")
	  REFERENCES "HR"."MOIM_MAIN" ("MOIM_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_SUB_MOIM" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_USER
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_USER" ADD FOREIGN KEY ("LOCATION_NO")
	  REFERENCES "HR"."MOIM_LOCATION" ("LOCATION_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_USER_CATE
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_USER_CATE" ADD FOREIGN KEY ("MAIN_CATE_NO")
	  REFERENCES "HR"."MOIM_MAIN_CATEGORY" ("MAIN_CATE_NO") ENABLE;
  ALTER TABLE "HR"."MOIM_USER_CATE" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOIM_WARNING
--------------------------------------------------------

  ALTER TABLE "HR"."MOIM_WARNING" ADD CONSTRAINT "MOIM_WARNING_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
  ALTER TABLE "HR"."MOIM_WARNING" ADD CONSTRAINT "MOIM_WARNING_FK2" FOREIGN KEY ("LOGIN_USER_ID")
	  REFERENCES "HR"."MOIM_USER" ("USER_ID") ENABLE;
