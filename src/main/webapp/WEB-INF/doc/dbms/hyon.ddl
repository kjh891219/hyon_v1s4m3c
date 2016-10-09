/**********************************/
/* Table Name: ī�޶� */
/**********************************/
CREATE TABLE CAMERA(
		ctno                          		NUMBER(6)		 NOT NULL		 PRIMARY KEY,
		category                      		VARCHAR2(20)		 NOT NULL,
		name                          		VARCHAR2(20)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NULL ,
		sale_c                        		VARCHAR2(20)		 NOT NULL,
		product_c                     		VARCHAR2(20)		 NOT NULL,
		region                        		VARCHAR2(20)		 NOT NULL,
		trading                       		VARCHAR2(20)		 NOT NULL,
		hprice                        		VARCHAR2(50)		 NOT NULL,
		p_day                         		VARCHAR2(50)		 NULL ,
		quantity                      		VARCHAR2(20)		 NULL ,
		email                         		VARCHAR2(50)		 NOT NULL,
		phone                         		VARCHAR2(20)		 NOT NULL,
		title                         		VARCHAR2(100)		 NOT NULL,
		content                       		VARCHAR2(4000)		 NULL 
);

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


/**********************************/
/* Table Name: ������ */
/**********************************/
CREATE TABLE SPORTS(
		ctno                          		NUMBER(6)		 NOT NULL		 PRIMARY KEY,
		category                      		VARCHAR2(20)		 NOT NULL,
		name                          		VARCHAR2(20)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NULL ,
		sale_c                        		VARCHAR2(20)		 NOT NULL,
		product_c                     		VARCHAR2(20)		 NOT NULL,
		region                        		VARCHAR2(20)		 NOT NULL,
		trading                       		VARCHAR2(20)		 NOT NULL,
		hprice                        		VARCHAR2(50)		 NOT NULL,
		p_day                         		VARCHAR2(50)		 NULL ,
		quantity                      		VARCHAR2(20)		 NULL ,
		email                         		VARCHAR2(50)		 NOT NULL,
		phone                         		VARCHAR2(20)		 NOT NULL,
		title                         		VARCHAR2(100)		 NOT NULL,
		content                       		VARCHAR2(4000)		 NULL 
);

COMMENT ON TABLE SPORTS is '������';
COMMENT ON COLUMN SPORTS.ctno is '�۹�ȣ';
COMMENT ON COLUMN SPORTS.category is 'ī�װ�';
COMMENT ON COLUMN SPORTS.name is '�г���';
COMMENT ON COLUMN SPORTS.passwd is '��й�ȣ';
COMMENT ON COLUMN SPORTS.sale_c is '�ŷ�����';
COMMENT ON COLUMN SPORTS.product_c is '��ǰ����';
COMMENT ON COLUMN SPORTS.region is '�ŷ�����';
COMMENT ON COLUMN SPORTS.trading is '�ŷ����';
COMMENT ON COLUMN SPORTS.hprice is '�������';
COMMENT ON COLUMN SPORTS.p_day is '���Խñ�';
COMMENT ON COLUMN SPORTS.quantity is '����';
COMMENT ON COLUMN SPORTS.email is '�̸���';
COMMENT ON COLUMN SPORTS.phone is '��ȭ��ȣ';
COMMENT ON COLUMN SPORTS.title is '����';
COMMENT ON COLUMN SPORTS.content is '������';


/**********************************/
/* Table Name: ��Ȱ�߰��ǰ */
/**********************************/
CREATE TABLE LIVING(
		ctno                          		NUMBER(6)		 NOT NULL		 PRIMARY KEY,
		category                      		VARCHAR2(20)		 NOT NULL,
		name                          		VARCHAR2(20)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NULL ,
		sale_c                        		VARCHAR2(20)		 NOT NULL,
		product_c                     		VARCHAR2(20)		 NOT NULL,
		region                        		VARCHAR2(20)		 NOT NULL,
		trading                       		VARCHAR2(20)		 NOT NULL,
		hprice                        		VARCHAR2(50)		 NOT NULL,
		p_day                         		VARCHAR2(50)		 NULL ,
		quantity                      		VARCHAR2(20)		 NULL ,
		email                         		VARCHAR2(50)		 NOT NULL,
		phone                         		VARCHAR2(20)		 NOT NULL,
		title                         		VARCHAR2(100)		 NOT NULL,
		content                       		VARCHAR2(4000)		 NULL 
);

COMMENT ON TABLE LIVING is '��Ȱ�߰��ǰ';
COMMENT ON COLUMN LIVING.ctno is '�۹�ȣ';
COMMENT ON COLUMN LIVING.category is 'ī�װ�';
COMMENT ON COLUMN LIVING.name is '�г���';
COMMENT ON COLUMN LIVING.passwd is '��й�ȣ';
COMMENT ON COLUMN LIVING.sale_c is '�ŷ�����';
COMMENT ON COLUMN LIVING.product_c is '��ǰ����';
COMMENT ON COLUMN LIVING.region is '�ŷ�����';
COMMENT ON COLUMN LIVING.trading is '�ŷ����';
COMMENT ON COLUMN LIVING.hprice is '�������';
COMMENT ON COLUMN LIVING.p_day is '���Խñ�';
COMMENT ON COLUMN LIVING.quantity is '����';
COMMENT ON COLUMN LIVING.email is '�̸���';
COMMENT ON COLUMN LIVING.phone is '��ȭ��ȣ';
COMMENT ON COLUMN LIVING.title is '����';
COMMENT ON COLUMN LIVING.content is '������';


/**********************************/
/* Table Name: ī�޶� ��� */
/**********************************/
CREATE TABLE camera_reple(
		rno                           		NUMBER(7)		 NOT NULL		 PRIMARY KEY,
		name                          		VARCHAR2(50)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NOT NULL,
		rcontent                      		VARCHAR2(4000)		 NOT NULL,
		ctno                          		NUMBER(6)		 NOT NULL,
  FOREIGN KEY (ctno) REFERENCES CAMERA (ctno)
);

COMMENT ON TABLE camera_reple is 'ī�޶� ���';
COMMENT ON COLUMN camera_reple.rno is '��۹�ȣ';
COMMENT ON COLUMN camera_reple.name is '�г���';
COMMENT ON COLUMN camera_reple.passwd is '��й�ȣ';
COMMENT ON COLUMN camera_reple.rcontent is '����';
COMMENT ON COLUMN camera_reple.ctno is '�۹�ȣ';


/**********************************/
/* Table Name: ������ ��� */
/**********************************/
CREATE TABLE sports_reple(
		rno                           		NUMBER(7)		 NOT NULL		 PRIMARY KEY,
		name                          		VARCHAR2(50)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NOT NULL,
		rcontent                      		VARCHAR2(4000)		 NOT NULL,
		ctno                          		NUMBER(6)		 NOT NULL,
  FOREIGN KEY (ctno) REFERENCES SPORTS (ctno)
);

COMMENT ON TABLE sports_reple is '������ ���';
COMMENT ON COLUMN sports_reple.rno is '��۹�ȣ';
COMMENT ON COLUMN sports_reple.name is '�г���';
COMMENT ON COLUMN sports_reple.passwd is '��й�ȣ';
COMMENT ON COLUMN sports_reple.rcontent is '����';
COMMENT ON COLUMN sports_reple.ctno is '�۹�ȣ';


/**********************************/
/* Table Name: ��Ȱ������ǰ ��� */
/**********************************/
CREATE TABLE living_reple(
		rno                           		NUMBER(7)		 NOT NULL		 PRIMARY KEY,
		name                          		VARCHAR2(50)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NOT NULL,
		rcontent                      		VARCHAR2(4000)		 NOT NULL,
		ctno                          		NUMBER(6)		 NOT NULL,
  FOREIGN KEY (ctno) REFERENCES LIVING (ctno)
);

COMMENT ON TABLE living_reple is '��Ȱ������ǰ ���';
COMMENT ON COLUMN living_reple.rno is '��۹�ȣ';
COMMENT ON COLUMN living_reple.name is '�г���';
COMMENT ON COLUMN living_reple.passwd is '��й�ȣ';
COMMENT ON COLUMN living_reple.rcontent is '����';
COMMENT ON COLUMN living_reple.ctno is '�۹�ȣ';


