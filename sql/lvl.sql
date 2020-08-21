drop table lvl;
create table lvl(
	lvl char(3) constraint lvl_lvl_pk primary key,
	lname varchar2(20) constraint lvl_lname_nn not null constraint lvl_lname_uk unique,
	ldesc varchar2(50) 
);
--input data
insert into lvl values ('L01','member','온라인회원');
insert into lvl values ('L02','register','수강신청');
insert into lvl values ('L03','student','수강중');
insert into lvl values ('L04','alum','졸업생');
insert into lvl values ('L05','hired','취업완료');
insert into lvl values ('L06','drop','수강중단');
insert into lvl values ('L07','deleted','회원탈퇴');

commit;

select * from lvl;

update lvl set ldesc='온라인회원' where lvl='L01';
update lvl set ldesc='수강신청' where lvl='L02';
update lvl set ldesc='수강중' where lvl='L03';
update lvl set ldesc='졸업생' where lvl='L04';
update lvl set ldesc='취업완료' where lvl='L05';
update lvl set ldesc='수강중단' where lvl='L06';
update lvl set ldesc='회원탈퇴' where lvl='L07';
