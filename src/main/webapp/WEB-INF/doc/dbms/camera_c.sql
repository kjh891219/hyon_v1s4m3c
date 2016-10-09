/**********************************/
/* Table Name: ī�޶� */
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
COMMENT ON TABLE CAMERA is 'ī�޶�';
COMMENT ON COLUMN CAMERA.ctno is '�۹�ȣ';
COMMENT ON COLUMN CAMERA.category is 'ī�װ�';
COMMENT ON COLUMN CAMERA.name is '�г���';
COMMENT ON COLUMN CAMERA.passwd is '��й�ȣ';
COMMENT ON COLUMN CAMERA.sale_c is '�ŷ�����';
COMMENT ON COLUMN CAMERA.product_c is '��ǰ����';
COMMENT ON COLUMN CAMERA.region is '�ŷ�����';
COMMENT ON COLUMN CAMERA.trading is '�ŷ����';
COMMENT ON COLUMN CAMERA.hprice is '�������';
COMMENT ON COLUMN CAMERA.p_day is '���Խñ�';
COMMENT ON COLUMN CAMERA.quantity is '����';
COMMENT ON COLUMN CAMERA.email is '�̸���';
COMMENT ON COLUMN CAMERA.phone is '��ȭ��ȣ';
COMMENT ON COLUMN CAMERA.title is '����';
COMMENT ON COLUMN CAMERA.content is '������';


insert into CAMERA(ctno,category, name,passwd,sale_c,product_c,region, trading, hprice ,p_day,quantity ,email ,phone ,title ,content) 
values ((SELECT NVL(MAX(ctno), 0)+1 as ctno FROM CAMERA),
'DSLR', '�г���1', '1234', '�˴ϴ�', '�߰�ǰ','���ŷ�', '���', '100000', '2008��6��', '1', 'jjj@jjj.com', '010-2222-5555', 'DSLR�ʴϴ�', 'DSLR�߰�ǰ �ΰ� �Ⱦƿ�');

insert into CAMERA(ctno,category, name,passwd,sale_c,product_c,region, trading, hprice ,p_day,quantity ,email ,phone ,title ,content) 
values ((SELECT NVL(MAX(ctno), 0)+1 as ctno FROM CAMERA),
'�Ϲݵ�ī', '�г���2', '1234', '�˴ϴ�', '�߰�ǰ','���ŷ�', '�λ�', '100000', '2008��6��', '1', 'jjj@jjj.com', '010-2222-5555', '��ī�ʴϴ�', '��ī�߰�ǰ �ΰ� �Ⱦƿ�');

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

