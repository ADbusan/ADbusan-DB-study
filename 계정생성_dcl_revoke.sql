/*
	계정생성 DDL
    CREATE USER '계정아이디' @localhost identified by '비밀번호'; -> 내부ip 접속
    CREATE USER '계정아이디' @% identified by '비밀번호'; -> 외부ip 접속
    > create user 'junhyeon'@localhost identified by 'root'; ->계정과 비밀번호를 만들어주고
    > grant all privileges on *.* to junhyeon@localhost; -> 만든 계정에 모든권한을 부여
    > 0flush privileges;
    
	DCL(권한관련)
    1. GRANT(데이터베이스, 테이블 사용자 권한 부여)
		- GRANT 권한 TO 사용자 계정
        - GRANT 권한 ON 객체명(데이터베이스, 테이블명) TO 사용자 계정
        > GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@localhost ->내부ip(현재pc에서만 접근가능)
		> GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@% ->외부ip(다른ip에서도 접근 가능)
        > GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@200.100.% ->외부ip(해당 ip를 포함하고있는 pc에서만 접근 가능)
    2. REVOKE(데이터베이스, 테이블 사용자 권한 회수)
		- REVOKE 권한 TO 사용자 계정
        - REVOKE 권한 ON 객체명(데이터베이스, 테이블명) TO 사용자 계정
        >REVOKE insert, update, create ON *,*(모든 테이블에 데이터) TO root@localhost;(insert, update, create 권한 해제)
        REVOKE ALL ON *,*(모든 테이블에 데이터) TO root@localhost;(모든 권한 해제)
*/
select @@autocommit;
set autocommit = 1 ;
/*0일때 ? 1일때 ?*/
