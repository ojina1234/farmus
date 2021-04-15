DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE boardreply CASCADE CONSTRAINTS;
DROP TABLE dailylog CASCADE CONSTRAINTS;
DROP TABLE dailylogreply CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE monseed CASCADE CONSTRAINTS;
DROP TABLE plant CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE rank CASCADE CONSTRAINTS;

DROP SEQUENCE board_seq;
DROP SEQUENCE dailylog_seq;
DROP SEQUENCE member_seq;
DROP SEQUENCE monseed_seq;
DROP SEQUENCE plant_seq;
DROP SEQUENCE cart_seq;

CREATE TABLE member (
    m_num      NUMBER NOT NULL,
    m_div      VARCHAR2(10) NOT NULL,
    m_mail     VARCHAR2(50) NOT NULL,
    m_pass    VARCHAR2(50) NOT NULL,
    m_name     VARCHAR2(10) NOT NULL,
    m_age      NUMBER NOT NULL,
    m_sex      VARCHAR2(5) NOT NULL,
    m_address  VARCHAR2(50) NOT NULL,
    m_category    VARCHAR2(50) DEFAULT '아직 구독하지 않았어요!',
    m_point    NUMBER default 0,
    a_num      NUMBER default 0
);

CREATE TABLE monseed (
    a_num     NUMBER DEFAULT NULL,
    a_temper  VARCHAR2(10) DEFAULT NULL,
    a_hum     VARCHAR2(20) DEFAULT NULL,
    a_co      VARCHAR2(20) DEFAULT NULL,
    a_growth  INTEGER DEFAULT 0,
    a_date    VARCHAR2(20) DEFAULT NULL,
    a_image   VARCHAR2(200) DEFAULT NULL,
    a_media   VARCHAR2(200) DEFAULT NULL,
    m_num     NUMBER DEFAULT NULL,
    m_mail    VARCHAR2(50) DEFAULT NULL
);



CREATE TABLE board (						
b_num      NUMBER NOT NULL,						
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
    a_image    VARCHAR2(200) NOT NULL,
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
    p_price     INTEGER NOT NULL,
    p_temper  VARCHAR2(5) NOT NULL,
    p_hum     VARCHAR2(10) NOT NULL,
    p_co      VARCHAR2(20) NOT NULL,
    p_week    VARCHAR2(5) NOT NULL,
    m_num     INTEGER NOT NULL,
    m_mail    VARCHAR2(50) NOT NULL
);

CREATE TABLE RANK(
    p_name    VARCHAR2(20) NOT NULL,
    r_count    INTEGER NOT NULL
);


CREATE TABLE CART(
    c_num     INTEGER NOT NULL,
    m_num    INTEGER NOT NULL,
    m_mail    VARCHAR2(20) NOT NULL,
    p_name   VARCHAR2(5) NOT NULL,
    p_price    INTEGER NOT NULL,
    c_count    INTEGER NOT NULL
);

create sequence cart_seq
      increment by 1
                     start with 1
                     nocache
                     nocycle;
ALTER TABLE cart ADD CONSTRAINT cart_pk PRIMARY KEY ( c_num );

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

ALTER TABLE dailylogreply
    ADD CONSTRAINT dailylogreply_dailylog_fk FOREIGN KEY ( d_num )
        REFERENCES dailylog ( d_num );

ALTER TABLE dailylogreply
    ADD CONSTRAINT dailylogreply_member_fk FOREIGN KEY ( m_num,
                                                      m_mail )
        REFERENCES member ( m_num,
                            m_mail );

ALTER TABLE plant ADD CONSTRAINT plant_pk PRIMARY KEY ( p_num );
ALTER TABLE plant ADD UNIQUE ( p_name );
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

create sequence member_seq
      increment by 1
                     start with 2
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


ALTER TABLE CART
    ADD CONSTRAINT cart_member_fk FOREIGN KEY ( m_num,
                                                   m_mail )
        REFERENCES member ( m_num,
                            m_mail );

insert into member values(0, '관리자', '@admin', 'admin',
'관리자',100,'admin', 'admin_address','아직 구독하지 않았어요!', 999999,null);

insert into member values(1, '회원', 'test', 'test',
'나쑥쑥',20,'test', 'test_address','아직 구독하지 않았어요!',0,null);

insert into monseed values(monseed_seq.nextval,23,90,540,32,sysdate,
'저장된 경로가 없습니다.','저장된 경로가 없습니다.', 0, '@admin');

insert into monseed values(monseed_seq.nextval,20,90,360,54,sysdate,
'저장된 경로가 없습니다.','저장된 경로가 없습니다.', 1, 'test');

insert into board values(board_seq.nextval,'inform','1번공지','잘키우세요','관리자',sysdate,
 0, '@admin');
insert into board values(board_seq.nextval,'free','1번자게','상추쌈','test',sysdate,
 1, 'test');
insert into board values(board_seq.nextval,'qna','1번큐앤에이','궁금해요','test',sysdate,
 1, 'test');

insert into plant values(plant_seq.nextval, '버터헤드',300, '15', '90' , '1000', '21', 0, '@admin');
insert into plant values(plant_seq.nextval, '곱슬겨자',300, '15', '90' , '1000', '7', 0, '@admin');
insert into plant values(plant_seq.nextval, '엔디브',300, '20', '90' , '1000', '21',  0, '@admin');
insert into plant values(plant_seq.nextval, '고수',300, '20', '90' , '1000', '14', 0,  '@admin');
insert into plant values(plant_seq.nextval, '케일',500, '15', '90' , '1000', '14', 0,  '@admin');
insert into plant values(plant_seq.nextval, '쑥갓',500, '15', '90' , '1000', '7', 0,  '@admin');
insert into plant values(plant_seq.nextval, '로메인',500, '20', '90' , '1000', '14',  0, '@admin');
insert into plant values(plant_seq.nextval, '상추',500, '20', '90' , '1000', '14',  0, '@admin');
insert into plant values(plant_seq.nextval, '치커리',500, '20', '90' , '1000', '21',  0, '@admin');
insert into plant values(plant_seq.nextval, '청경채',500, '20', '90' , '1000', '7',  0, '@admin');
insert into plant values(plant_seq.nextval, '바질',500, '25', '90' , '1000', '21',  0, '@admin');
insert into plant values(plant_seq.nextval, '루꼴라',500, '25', '90' , '1000', '7',  0, '@admin');
insert into plant values(plant_seq.nextval, '적근대',500, '15', '90' , '1000', '21',  0, '@admin');

ALTER TABLE rank
    ADD CONSTRAINT rank_plant_fk FOREIGN KEY ( p_name )
        REFERENCES plant ( p_name );

insert into rank values('버터헤드',0);
insert into rank values('곱슬겨자',0);
insert into rank values('엔디브',0);
insert into rank values('고수',0);
insert into rank values('케일',0);
insert into rank values('쑥갓',0);
insert into rank values('로메인',0);
insert into rank values('상추',0);
insert into rank values('치커리',0);
insert into rank values('청경채',0);
insert into rank values('바질',0);
insert into rank values('루꼴라',0);
insert into rank values('적근대',0);

select * from BOARD
commit;