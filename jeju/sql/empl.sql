drop table empl;
drop sequence empl_seq;
create table empl(
	eno number constraint empl_eno_pk primary key,
	hdate date default sysdate,
	dno char(3) constraint empl_dno_fk references dpt(dno),
	id varchar2(20) constraint empl_id_fk references mbr(id)
);
create sequence empl_seq;
--input data
insert into empl values (empl_seq.nextval,'2020-1-1','D01','bitjeju01');
insert into empl values (empl_seq.nextval,'2020-3-1','D01','bitjeju02');
insert into empl values (empl_seq.nextval,'2020-6-1','D02','bitjeju03');
insert into empl values (empl_seq.nextval,'2020-8-1','D02','bitjeju04');
insert into empl values (empl_seq.nextval,'2020-1-1','D02','bitjeju05');
insert into empl values (empl_seq.nextval,'2020-3-1','D05','bitjeju06');
insert into empl values (empl_seq.nextval,'2020-6-1','D04','bitjeju07');
insert into empl values (empl_seq.nextval,'2020-8-1','D03','bitjeju08');
insert into empl values (empl_seq.nextval,'2020-1-1','D03','bitjeju09');
insert into empl values (empl_seq.nextval,'2020-3-1','D03','bitjeju10');
insert into empl values (empl_seq.nextval,'2020-1-1','D06','bitadmin');

commit;

select * from empl;