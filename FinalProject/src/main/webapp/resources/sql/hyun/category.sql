drop table category  cascade constraints;

CREATE TABLE CATEGORY( 
  CATEGORY_CODE       VARCHAR2(50),         	-- 카테고리 코드 
  CATEGORY_NAME       VARCHAR2(100)	not null,   -- 카테고리 종류 이름 
  PRIMARY KEY(CATEGORY_CODE)
);


select * from category;

insert into CATEGORY
values('100', '씨앗/모종');

insert into CATEGORY
values('200', '비료/상토');

insert into CATEGORY
values('300', '살충제');

insert into CATEGORY
values('400', '농기구');

insert into CATEGORY
values('500', '퍼스나콘');

insert into CATEGORY
values('600', '굿즈');