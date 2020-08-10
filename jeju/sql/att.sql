drop table att;
drop sequence att_seq;
create table att(
	ano number constraint att_ano_pk primary key,
	cno number constraint att_cno_fk references crs(cno),
	sno number constraint att_sno_fk references std(sno),
	adate date default sysdate,
	ckin number(1) default 0 check (ckin in (0,1,2)),
	ckout number(1) default 0 check (ckout in(0,1,3))
);
create sequence att_seq;
--input data



commit;

select * from att;