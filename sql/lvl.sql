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
insert into lvl values ('L06','drop','수강 중단');

commit;

select * from lvl;