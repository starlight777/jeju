drop table dpt;
create table dpt(
	dno char(3) constraint dpt_dno_pk primary key,
	dname varchar2(20) constraint dpt_dname_nn not null,
	lvl char(3) default 'L11' constraint dpt_lvl_fk references lvl(lvl)
);
--input data
insert into dpt values ('D01','영업','L11');
insert into dpt values ('D02','행정','L12');
insert into dpt values ('D03','강사','L12');
insert into dpt values ('D04','취업','L12');
insert into dpt values ('D05','회계','L13');
insert into dpt values ('D06','관리','L20');

commit;

select * from dpt;