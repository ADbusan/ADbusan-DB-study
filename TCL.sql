/*
TCL
1. COMMIT 		-트랜잭션 확정
2. ROLLBACK	-트랜잭션 취소
3. SVAEPOINT	-중간지점 저장
*/
SET AUTOCOMMIT = 0;
select @@autocommit; 

create database `transaction_study`; 
use transaction_study;
create table `transaction_study`.`emp_mst`(
	`id` int not null auto_increment,
    `name` varchar(15) default null,
    primary key(`id`)
);
start transaction;
savepoint p1;
insert INTO emp_mst
values
	(0,'박준현'),
    (0,'신경수'),
    (0,'고희주'),
    (0,'장건녕');
select *from emp_mst;
savepoint p2;
update emp_mst
set
	`name` = '문승주'
where
	id =4 ;
rollback to p2;
select * from emp_mst;
rollback to p1;
select *from emp_mst;
commit;










    

