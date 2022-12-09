/*
Create	Read	Update	Delete
INSERT(추가) =C 
order_mstSELECT(조회) =R
UPDATE(수정) =U
DELETE(삭제) =D

DB는 소,대문자구분을 안함 보통
*/
INSERT INTO student_mst
/*	(id,product_name,product_price) 순서가 다맞고 3개의 값이 다들어가 있으면	생략 가능!*/ VALUES
(0,'임지현',1,80),
(0,'신경수',2,90),
(0,'고희주',3,75),
(0,'문승주',1,85),
(0,'장건녕',2,95),
(0,'박수현',3,90),
(0,'황석민',1,80),
(0,'박준현',2,85),
(0,'이승아',3,90),
(0,'김수현',1,75);
INSERT INTO student1_mst VALUES
(0,20,50,'장근영'),
(0,30,70,'조광현'),
(0,45,90,'서정현');

/*SELECT 
	id,
	product_price,
	product_price	
FROM 
	product_mst;/*순서를 바꿀수도있고 보고싶은 것만 가지고와서 볼수도있음*/
/*SQL query execution order
  from and join
  where
  group by
  habing
  select : window functions execute here
  order by
  limit 순서다 쿼리는 */
SELECT
	id,
	`name`,/*`` 텝위에 있음 소문자 대문자 확실하게  정의 하려고 씀*/
	student_year,
	score
FROM
	student_mst
WHERE
	student_year = 1 AND score>80 OR (student_year= 3 AND score student1_mst= 75);
SELECT
	id,
	`name`,/*`` 텝위에 있음 소문자 대문자 확실하게  정의 하려고 씀*/
	student_year,
	score
FROM
	student_mst
WHERE
	`name` LIKE '%수%'
	AND `name` NOT LIKE '%수'
	AND `name` NOT LIKE '수%';
/* 이름 찾는거*/
SELECT
	id,
	`name`,/*`` 텝위에 있음 소문자 대문자 확실하게  정의 하려고 씀*/
	student_year,
	score
FROM
	student_mst
WHERE
/*in 합*/
	student_year NOT IN(1,2);
	
SELECT
	id,
	`name`,/*`` 텝위에 있음 소문자 대문자 확실하게  정의 하려고 씀*/
	student_year,
	score
FROM
	student_mst
WHERE
/*80과 90 사이
	score not BETWEEN 80 AND 90;
	*/
	`name` IS not NULL;
	
UPDATE
	student_mst
SET
	score = 80
WHERE 
	`name`= '박준현';
	
	
	
UPDATE
	student_mst
SET
	score = 100
WHERE 
	student_year = 2 
AND score BETWEEN 80 AND 90;


DELETE
FROM
	student_mst
WHERE
	score < 80;

	

	
	
	
