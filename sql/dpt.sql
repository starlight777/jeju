drop table dpt;
create table dpt(
	dno char(3) constraint dpt_dno_pk primary key,
	dname varchar2(20) constraint dpt_dname_nn not null,
	daccess varchar2(300)
);
--input data
insert into dpt values ('D01','영업','LMS 접근');
insert into dpt values ('D02','행정','학생 상세정보 접근');
insert into dpt values ('D03','강사','학생 상세정보 접근');
insert into dpt values ('D04','취업','학생 상세정보 접근');
insert into dpt values ('D05','회계','회계 정보 접근');
insert into dpt values ('D06','관리','Admin 사이트 관리');

commit;

select * from dpt;