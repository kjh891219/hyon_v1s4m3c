/**********************************/
/* Table Name: ī�޶� */
/**********************************/
drop table camera;

CREATE TABLE CAMERA(
		ctno                          		NUMBER(6)		 NOT NULL		 PRIMARY KEY,
		category                      		VARCHAR2(20)		 NOT NULL,
		nickname                      		VARCHAR2(20)		 NOT NULL,
		passwd                        		VARCHAR2(10)		 NOT NULL,
		deal_way                      		VARCHAR2(20)		 NOT NULL,
		deal_code                     		VARCHAR2(20)		 NOT NULL,
		product_code                  		VARCHAR2(20)		 NOT NULL,
		hprice                        		NUMBER(15)		 DEFAULT 0		 NOT NULL,
		region                        		VARCHAR2(20)		 DEFAULT ''		 NOT NULL,
		tel                           		VARCHAR2(14)		 DEFAULT ''		 NOT NULL,
		email                         		VARCHAR2(100)		 DEFAULT ''		 NOT NULL,
		quantity                      		NUMBER(6)		 DEFAULT 0		 NOT NULL,
		title                         		VARCHAR2(200)		 DEFAULT ''		 NOT NULL,
		content                       		VARCHAR2(4000)		 NOT NULL,
		purc_date                     		VARCHAR2(20)		 DEFAULT ''		 NOT NULL,
		wdate                         		DATE		 DEFAULT sysdate		 NOT NULL,
		cnt                           		NUMBER(6)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE CAMERA is 'ī�޶�';
COMMENT ON COLUMN CAMERA.ctno is '�۹�ȣ';
COMMENT ON COLUMN CAMERA.category is 'ī�װ�';
COMMENT ON COLUMN CAMERA.nickname  is '�г���';
COMMENT ON COLUMN CAMERA.passwd is '��й�ȣ';
COMMENT ON COLUMN CAMERA.deal_way is '�ŷ����';
COMMENT ON COLUMN CAMERA.deal_code is '�ŷ�����';
COMMENT ON COLUMN CAMERA.product_code is '��ǰ����';
COMMENT ON COLUMN CAMERA.hprice is '�������';
COMMENT ON COLUMN CAMERA.region is '����';
COMMENT ON COLUMN CAMERA.tel is '��ȭ��ȣ';
COMMENT ON COLUMN CAMERA.email is '�̸���';
COMMENT ON COLUMN CAMERA.quantity is '����';
COMMENT ON COLUMN CAMERA.title is '����';
COMMENT ON COLUMN CAMERA.content is '����';
COMMENT ON COLUMN CAMERA.purc_date is '������';
COMMENT ON COLUMN CAMERA.wdate is '�������';
COMMENT ON COLUMN CAMERA.cnt is '��ȸ��';

SELECT ctno, deal_code, title, hprice, deal_way, region, nickname 
FROM camera
ORDER BY ctno DESC

select * from camera order by ctno desc;

insert into CAMERA(ctno ,category, nickname, passwd, deal_way, deal_code, product_code, hprice, region, tel, email, quantity, title, content, purc_date) 
values ((SELECT NVL(MAX(ctno), 0)+1 as ctno FROM CAMERA),
'DSLR', '�г���1', '1234', '���ŷ�', '�˴ϴ�', '�߰�ǰ', 100000, '���', '010-2222-3333', 'kkk@kkk.com', 1, 'DSLR�Ⱦƿ�', 'DSLR�ΰ��Ⱦƿ�', '2016��10��');


select ctno ,category, nickname, passwd, deal_way, deal_code, product_code, hprice, region, tel, email, quantity, title, content, purc_date, wdate, cnt
    from camera
    where ctno = 1
