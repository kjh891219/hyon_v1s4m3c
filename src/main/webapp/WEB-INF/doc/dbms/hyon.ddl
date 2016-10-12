/**********************************/
/* Table Name: 카메라 */
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

COMMENT ON TABLE CAMERA is '카메라';
COMMENT ON COLUMN CAMERA.ctno is '글번호';
COMMENT ON COLUMN CAMERA.category is '카테고리';
COMMENT ON COLUMN CAMERA.nickname  is '닉네임';
COMMENT ON COLUMN CAMERA.passwd is '비밀번호';
COMMENT ON COLUMN CAMERA.deal_way is '거래방법';
COMMENT ON COLUMN CAMERA.deal_code is '거래구분';
COMMENT ON COLUMN CAMERA.product_code is '상품구분';
COMMENT ON COLUMN CAMERA.hprice is '희망가격';
COMMENT ON COLUMN CAMERA.region is '지역';
COMMENT ON COLUMN CAMERA.tel is '전화번호';
COMMENT ON COLUMN CAMERA.email is '이메일';
COMMENT ON COLUMN CAMERA.quantity is '수량';
COMMENT ON COLUMN CAMERA.title is '제목';
COMMENT ON COLUMN CAMERA.content is '내용';
COMMENT ON COLUMN CAMERA.purc_date is '구입일';
COMMENT ON COLUMN CAMERA.wdate is '등록일자';
COMMENT ON COLUMN CAMERA.cnt is '조회수';

SELECT ctno, deal_code, title, hprice, deal_way, region, nickname 
FROM camera
ORDER BY ctno DESC

select * from camera order by ctno desc;

insert into CAMERA(ctno ,category, nickname, passwd, deal_way, deal_code, product_code, hprice, region, tel, email, quantity, title, content, purc_date) 
values ((SELECT NVL(MAX(ctno), 0)+1 as ctno FROM CAMERA),
'DSLR', '닉네임1', '1234', '직거래', '팝니다', '중고품', 100000, '울산', '010-2222-3333', 'kkk@kkk.com', 1, 'DSLR팔아요', 'DSLR싸게팔아요', '2016년10월');


select ctno ,category, nickname, passwd, deal_way, deal_code, product_code, hprice, region, tel, email, quantity, title, content, purc_date, wdate, cnt
    from camera
    where ctno = 1
