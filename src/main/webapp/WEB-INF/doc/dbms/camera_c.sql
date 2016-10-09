/**********************************/
/* Table Name: 카메라 */
/**********************************/
CREATE TABLE CAMERA(
    ctno                              NUMBER(6)    NOT NULL    PRIMARY KEY,
    category                          VARCHAR2(20)     NOT NULL,
    name                              VARCHAR2(20)     NOT NULL,
    passwd                            VARCHAR2(20)     NOT NULL ,
    sale_c                            VARCHAR2(20)     NOT NULL,
    product_c                         VARCHAR2(20)     NOT NULL,
    region                            VARCHAR2(20)     NOT NULL,
    trading                           VARCHAR2(20)     NOT NULL,
    hprice                            VARCHAR2(50)     NOT NULL,
    p_day                             VARCHAR2(50)     NULL ,
    quantity                          VARCHAR2(20)     NULL ,
    email                             VARCHAR2(50)     NOT NULL,
    phone                             VARCHAR2(20)     NOT NULL,
    title                             VARCHAR2(100)    NOT NULL,
    content                           VARCHAR2(4000)     NULL 
);

drop table camera;
COMMENT ON TABLE CAMERA is '카메라';
COMMENT ON COLUMN CAMERA.ctno is '글번호';
COMMENT ON COLUMN CAMERA.category is '카테고리';
COMMENT ON COLUMN CAMERA.name is '닉네임';
COMMENT ON COLUMN CAMERA.passwd is '비밀번호';
COMMENT ON COLUMN CAMERA.sale_c is '거래구분';
COMMENT ON COLUMN CAMERA.product_c is '상품구분';
COMMENT ON COLUMN CAMERA.region is '거래지역';
COMMENT ON COLUMN CAMERA.trading is '거래방식';
COMMENT ON COLUMN CAMERA.hprice is '희망가격';
COMMENT ON COLUMN CAMERA.p_day is '구입시기';
COMMENT ON COLUMN CAMERA.quantity is '수량';
COMMENT ON COLUMN CAMERA.email is '이메일';
COMMENT ON COLUMN CAMERA.phone is '전화번호';
COMMENT ON COLUMN CAMERA.title is '제목';
COMMENT ON COLUMN CAMERA.content is '상세정보';


insert into CAMERA(ctno,category, name,passwd,sale_c,product_c,region, trading, hprice ,p_day,quantity ,email ,phone ,title ,content) 
values ((SELECT NVL(MAX(ctno), 0)+1 as ctno FROM CAMERA),
'DSLR', '닉네임1', '1234', '팝니다', '중고품','직거래', '울산', '100000', '2008년6월', '1', 'jjj@jjj.com', '010-2222-5555', 'DSLR팜니다', 'DSLR중고품 싸게 팔아요');

insert into CAMERA(ctno,category, name,passwd,sale_c,product_c,region, trading, hprice ,p_day,quantity ,email ,phone ,title ,content) 
values ((SELECT NVL(MAX(ctno), 0)+1 as ctno FROM CAMERA),
'일반디카', '닉네임2', '1234', '팝니다', '중고품','직거래', '부산', '100000', '2008년6월', '1', 'jjj@jjj.com', '010-2222-5555', '디카팜니다', '디카중고품 싸게 팔아요');

select ctno, sale_c, title,hprice, region, trading, name from camera
order by ctno asc;

CREATE TABLE GAME (
    gno                   NUMBER(10)       NOT NULL  PRIMARY KEY,
    category              VARCHAR2(20)     NOT NULL, 
    rname                 VARCHAR2(20)     NOT NULL,
    email                 VARCHAR2(100)    NULL ,
    tell                  VARCHAR2(20)     NULL ,
    title                 VARCHAR2(200)    NOT NULL,
    content               VARCHAR2(4000)   NOT NULL,
    passwd                VARCHAR2(30)     NOT NULL,
    cnt                   NUMBER(15)       NULL ,
    area                  VARCHAR2(20)     NOT NULL,
    state                 VARCHAR2(20)     NOT NULL,
    purchtime             VARCHAR2(20)     NOT NULL,
    purchprice            VARCHAR2(20)     NOT NULL,
    goods                 VARCHAR2(20)     NULL ,
    howdeal               VARCHAR2(20)     NOT NULL,
    amount                VARCHAR2(10)     NOT NULL,
    price                 VARCHAR2(10)     NOT NULL,
    level                 VARCHAR2(15)     NOT NULL,
    genre                 VARCHAR2(10)     NULL
);

select ctno,category, name,passwd,sale_c,product_c,region, trading, hprice ,p_day,quantity ,email ,phone ,title ,content 
from camera
where ctno = 1;

