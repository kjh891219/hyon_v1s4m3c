/**********************************/
/* Table Name: 카메라 */
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


/**********************************/
/* Table Name: 스포츠 */
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

COMMENT ON TABLE SPORTS is '스포츠';
COMMENT ON COLUMN SPORTS.ctno is '글번호';
COMMENT ON COLUMN SPORTS.category is '카테고리';
COMMENT ON COLUMN SPORTS.name is '닉네임';
COMMENT ON COLUMN SPORTS.passwd is '비밀번호';
COMMENT ON COLUMN SPORTS.sale_c is '거래구분';
COMMENT ON COLUMN SPORTS.product_c is '상품구분';
COMMENT ON COLUMN SPORTS.region is '거래지역';
COMMENT ON COLUMN SPORTS.trading is '거래방식';
COMMENT ON COLUMN SPORTS.hprice is '희망가격';
COMMENT ON COLUMN SPORTS.p_day is '구입시기';
COMMENT ON COLUMN SPORTS.quantity is '수량';
COMMENT ON COLUMN SPORTS.email is '이메일';
COMMENT ON COLUMN SPORTS.phone is '전화번호';
COMMENT ON COLUMN SPORTS.title is '제목';
COMMENT ON COLUMN SPORTS.content is '상세정보';


/**********************************/
/* Table Name: 생활중고용품 */
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

COMMENT ON TABLE LIVING is '생활중고용품';
COMMENT ON COLUMN LIVING.ctno is '글번호';
COMMENT ON COLUMN LIVING.category is '카테고리';
COMMENT ON COLUMN LIVING.name is '닉네임';
COMMENT ON COLUMN LIVING.passwd is '비밀번호';
COMMENT ON COLUMN LIVING.sale_c is '거래구분';
COMMENT ON COLUMN LIVING.product_c is '상품구분';
COMMENT ON COLUMN LIVING.region is '거래지역';
COMMENT ON COLUMN LIVING.trading is '거래방식';
COMMENT ON COLUMN LIVING.hprice is '희망가격';
COMMENT ON COLUMN LIVING.p_day is '구입시기';
COMMENT ON COLUMN LIVING.quantity is '수량';
COMMENT ON COLUMN LIVING.email is '이메일';
COMMENT ON COLUMN LIVING.phone is '전화번호';
COMMENT ON COLUMN LIVING.title is '제목';
COMMENT ON COLUMN LIVING.content is '상세정보';


/**********************************/
/* Table Name: 카메라 댓글 */
/**********************************/
CREATE TABLE camera_reple(
		rno                           		NUMBER(7)		 NOT NULL		 PRIMARY KEY,
		name                          		VARCHAR2(50)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NOT NULL,
		rcontent                      		VARCHAR2(4000)		 NOT NULL,
		ctno                          		NUMBER(6)		 NOT NULL,
  FOREIGN KEY (ctno) REFERENCES CAMERA (ctno)
);

COMMENT ON TABLE camera_reple is '카메라 댓글';
COMMENT ON COLUMN camera_reple.rno is '댓글번호';
COMMENT ON COLUMN camera_reple.name is '닉네임';
COMMENT ON COLUMN camera_reple.passwd is '비밀번호';
COMMENT ON COLUMN camera_reple.rcontent is '내용';
COMMENT ON COLUMN camera_reple.ctno is '글번호';


/**********************************/
/* Table Name: 스포츠 댓글 */
/**********************************/
CREATE TABLE sports_reple(
		rno                           		NUMBER(7)		 NOT NULL		 PRIMARY KEY,
		name                          		VARCHAR2(50)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NOT NULL,
		rcontent                      		VARCHAR2(4000)		 NOT NULL,
		ctno                          		NUMBER(6)		 NOT NULL,
  FOREIGN KEY (ctno) REFERENCES SPORTS (ctno)
);

COMMENT ON TABLE sports_reple is '스포츠 댓글';
COMMENT ON COLUMN sports_reple.rno is '댓글번호';
COMMENT ON COLUMN sports_reple.name is '닉네임';
COMMENT ON COLUMN sports_reple.passwd is '비밀번호';
COMMENT ON COLUMN sports_reple.rcontent is '내용';
COMMENT ON COLUMN sports_reple.ctno is '글번호';


/**********************************/
/* Table Name: 생활가전용품 댓글 */
/**********************************/
CREATE TABLE living_reple(
		rno                           		NUMBER(7)		 NOT NULL		 PRIMARY KEY,
		name                          		VARCHAR2(50)		 NOT NULL,
		passwd                        		VARCHAR2(20)		 NOT NULL,
		rcontent                      		VARCHAR2(4000)		 NOT NULL,
		ctno                          		NUMBER(6)		 NOT NULL,
  FOREIGN KEY (ctno) REFERENCES LIVING (ctno)
);

COMMENT ON TABLE living_reple is '생활가전용품 댓글';
COMMENT ON COLUMN living_reple.rno is '댓글번호';
COMMENT ON COLUMN living_reple.name is '닉네임';
COMMENT ON COLUMN living_reple.passwd is '비밀번호';
COMMENT ON COLUMN living_reple.rcontent is '내용';
COMMENT ON COLUMN living_reple.ctno is '글번호';


