drop table lvl;
create table lvl(
	lvl char(3) constraint lvl_lvl_pk primary key,
	lname varchar2(20) constraint lvl_lname_nn not null constraint lvl_lname_uk unique,
	ldesc varchar2(50) 
);
--input data
insert into lvl values ('L01','member','온라인회원');
insert into lvl values ('L02','register','수강신청한 회원');
insert into lvl values ('L03','student','현재 수강생');
insert into lvl values ('L04','alum','졸업생');
insert into lvl values ('L05','hired','졸업후 취업');
insert into lvl values ('L11','emp1','일반직원 LMS 접근');
insert into lvl values ('L12','emp2','학생 상세정보 접근');
insert into lvl values ('L13','emp3','회계, 인사 정보 접근');
insert into lvl values ('L20','admin','사이트관리자');
commit;

select * from lvl;