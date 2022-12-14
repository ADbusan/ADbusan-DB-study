#union 두개를 테이블을 합치는것alter
#from 테이블을 가지고 오는것 			1번
#select 테이블을 출력						3번	
#where 조건										2번
SELECT 
    name,
    email,
    0 as score
FROM
    user_dtl 
where
	name = '박준현'
UNION
SELECT 
    name,
    null as email,
    score
FROM
    score_mst
where
	score >80;