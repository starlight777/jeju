drop table crs;
drop sequence crs_seq;

create table crs(
	cno number constraint crs_cno_pk primary key,
	ctitle varchar2(300),	
	cbegin date,
	cend date,
	cdays number(3),
	climit number(3),
	croom varchar2(10) check (croom in ('401','402','403')),
	profno number constraint crs_profno_fk references empl(eno),
	salesno number constraint crs_salesno_fk references empl(eno)
);
create sequence crs_seq;
--input data
insert into crs values (crs_seq.nextval,'디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정','2020-7-1','2020-9-30','55','30','401','1008','1001');
insert into crs values (crs_seq.nextval,'디지털컨버전스 기반 Framework 전문 개발자 양성과정','2020-7-1','2020-9-30','55','30','402','1009','1002');
insert into crs values (crs_seq.nextval,'디지털컨버전스기반 융합기술을 활용한sw 웹 개발자 양성과정 A','2020-7-1','2020-9-30','55','30','403','1010','1001');
insert into crs values (crs_seq.nextval,'디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 A','2020-10-1','2020-12-31','55','30','401','1008','1002');
insert into crs values (crs_seq.nextval,'디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 B','2020-10-1','2020-12-31','55','30','402','1009','1001');
insert into crs values (crs_seq.nextval,'디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 C','2020-10-1','2020-12-31','55','30','403','1010','1002');

commit;

select * from crs;