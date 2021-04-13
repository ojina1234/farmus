DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE boardreply CASCADE CONSTRAINTS;
DROP TABLE dailylog CASCADE CONSTRAINTS;
DROP TABLE dailylogreply CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE monseed CASCADE CONSTRAINTS;
DROP TABLE plant CASCADE CONSTRAINTS;

DROP SEQUENCE board_seq;
DROP SEQUENCE dailylog_seq;
DROP SEQUENCE member_seq;
DROP SEQUENCE monseed_seq;
DROP SEQUENCE plant_seq;

CREATE TABLE member (
    m_num      NUMBER NOT NULL,
    m_div      VARCHAR2(10) NOT NULL,
    m_mail     VARCHAR2(50) NOT NULL,
    m_pass    VARCHAR2(50) NOT NULL,
    m_name     VARCHAR2(10) NOT NULL,
    m_age      NUMBER NOT NULL,
    m_sex      VARCHAR2(5) NOT NULL,
    m_address  VARCHAR2(50) NOT NULL,
    m_point    NUMBER default 0,
    a_num      NUMBER default 0
);

CREATE TABLE monseed (
    a_num     NUMBER default 0,
    a_temper  VARCHAR2(10) default 0,
    a_hum     VARCHAR2(20) default 0,
    a_co      VARCHAR2(20) default 0,
    a_date    VARCHAR2(20) default NULL,
    a_image   VARCHAR2(200) default NULL,
    a_media   VARCHAR2(200) default NULL,
    m_num     NUMBER default 0,
    m_mail    VARCHAR2(50) default NULL
);
select * from monseed
CREATE TABLE board (						
b_num      NUMBER default 0,						
b_div      VARCHAR2(10) NOT NULL,						
b_title    VARCHAR2(50) NOT NULL,						
b_content  VARCHAR2(500) NOT NULL,						
m_name     VARCHAR2(10) NOT NULL,						
b_date     VARCHAR2(20) NOT NULL,						
m_num      NUMBER NOT NULL,						
m_mail     VARCHAR2(50) NOT NULL						
);						

CREATE TABLE boardreply (
    br_reply  VARCHAR2(300) NOT NULL,
    br_date   VARCHAR2(20) NOT NULL,
    b_num     INTEGER NOT NULL,
    m_num     INTEGER NOT NULL,
    m_mail    VARCHAR2(50) NOT NULL
);

CREATE TABLE dailylog (
    d_num      INTEGER NOT NULL,
    m_num      INTEGER NOT NULL,
    d_content  VARCHAR2(500) NOT NULL,
    a_image    VARCHAR2(200),
    d_date     VARCHAR2(20) NOT NULL,
    m_mail     VARCHAR2(50) NOT NULL
);

CREATE TABLE dailylogreply (
    d_num     INTEGER NOT NULL,
    dr_reply  VARCHAR2(300) NOT NULL,
    dr_date   VARCHAR2(20) NOT NULL,
    m_num     INTEGER NOT NULL,
    m_mail    VARCHAR2(50) NOT NULL
);

CREATE TABLE plant (
    p_num     INTEGER NOT NULL,
    p_name    VARCHAR2(20) NOT NULL,
    p_temper  VARCHAR2(5) NOT NULL,
    p_hum     VARCHAR2(10) NOT NULL,
    p_co      VARCHAR2(20) NOT NULL,
    p_week    VARCHAR2(5) NOT NULL,
    m_num     INTEGER default 0,
    m_mail    VARCHAR2(50) default NULL
);

ALTER TABLE member ADD CONSTRAINT member_pk PRIMARY KEY ( m_num,
                                                          m_mail );



ALTER TABLE monseed ADD CONSTRAINT monseed_pk PRIMARY KEY ( a_num );
ALTER TABLE monseed
    ADD CONSTRAINT monseed_member_fk FOREIGN KEY ( m_num,
                                                   m_mail )
        REFERENCES member ( m_num,
                            m_mail );
create sequence monseed_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;

ALTER TABLE board ADD CONSTRAINT board_pk PRIMARY KEY ( b_num);
ALTER TABLE board						
ADD CONSTRAINT board_member_fk FOREIGN KEY ( m_num,						
m_mail )						
REFERENCES member ( m_num,						
m_mail );											
create sequence board_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;

ALTER TABLE dailylog ADD CONSTRAINT dailylog_pk PRIMARY KEY ( d_num );
ALTER TABLE dailylog
    ADD CONSTRAINT dailylog_member_fk FOREIGN KEY ( m_num,
                                                    m_mail )
        REFERENCES member ( m_num,
                            m_mail );
create sequence dailylog_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;
                     
select * from monseed


ALTER TABLE dailylogreply
    ADD CONSTRAINT dailylogreply_dailylog_fk FOREIGN KEY ( d_num )
        REFERENCES dailylog ( d_num );

ALTER TABLE dailylogreply
    ADD CONSTRAINT dailylogreply_member_fk FOREIGN KEY ( m_num,
                                                      m_mail )
        REFERENCES member ( m_num,
                            m_mail );

ALTER TABLE plant ADD CONSTRAINT plant_pk PRIMARY KEY ( p_num );
ALTER TABLE plant
    ADD CONSTRAINT plant_member_fk FOREIGN KEY ( m_num,
                                                 m_mail )
        REFERENCES member ( m_num,
                            m_mail );
create sequence plant_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;

ALTER TABLE member
    ADD CONSTRAINT member_monseed_fk FOREIGN KEY ( a_num )
        REFERENCES monseed ( a_num );
create sequence member_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;

ALTER TABLE boardreply
    ADD CONSTRAINT boardreply_board_fk FOREIGN KEY ( b_num )
        REFERENCES board ( b_num );
ALTER TABLE boardreply
    ADD CONSTRAINT boardreply_member_fk FOREIGN KEY ( m_num,
                                                      m_mail )
        REFERENCES member ( m_num,
                            m_mail );

insert into member values(member_seq.nextval, 'admin', '@admin', 'admin',
'admin',100,'admin', 'admin_address', 999999,null);

insert into member values(member_seq.nextval, 'client', 'test', 'test',
'test_name',20,'test', 'test_address',0,null);

insert into monseed values(monseed_seq.nextval,null,null,null,sysdate,
'not setting yet','not setting yet', 1, '@admin');

insert into monseed values(monseed_seq.nextval,null,null,null,sysdate,
'not setting yet','not setting yet', 4, 'test');