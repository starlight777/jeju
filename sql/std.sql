drop table std;
drop sequence std_seq;
create table std(
	sno number constraint std_sno_pk primary key,
	id varchar2(20) constraint std_id_fk references mbr(id),
	cno number constraint std_cno_fk references crs(cno),
	date1 date,
	gr1 number(3),
	date2 date,
	gr2 number(3),
	date3 date,
	gr3 number(3)
);
create sequence std_seq;

update std set date1=sysdate, gr1=100 where sno=46;

select (nvl(gr1,''), nvl(gr2,''), nvl(gr3,''))/ from std where sno=46;

select * from v_std where rownum between 1 and 20;
select * from v_std where rownum between 21 and 40;

select * from (select cno, cdays, sno, gr1, gr2, gr3, cnt, att_total,att_rate, late,leftearly,absent,ctitle, prof, name, lvl, lname,ldesc,cbegin, cend, rownum as rn from v_std) where rn between 21 and 40;


select * from std;

--input data
insert into std values (std_seq.nextval,'user11','1','2020-7-31','81','2020-8-1','82','2020-8-10','87');
insert into std values (std_seq.nextval,'user12','1','2020-7-31','82','2020-8-1','83','2020-8-10','88');
insert into std values (std_seq.nextval,'user13','1','2020-7-31','83','2020-8-1','84','2020-8-10','89');
insert into std values (std_seq.nextval,'user14','1','2020-7-31','84','2020-8-1','85','2020-8-10','90');
insert into std values (std_seq.nextval,'user15','1','2020-7-31','85','2020-8-1','86','2020-8-10','91');
insert into std values (std_seq.nextval,'user16','1','2020-7-31','86','2020-8-1','87','2020-8-10','92');
insert into std values (std_seq.nextval,'user17','1','2020-7-31','87','2020-8-1','88','2020-8-10','93');
insert into std values (std_seq.nextval,'user18','1','2020-7-31','88','2020-8-1','89','2020-8-10','94');
insert into std values (std_seq.nextval,'user19','1','2020-7-31','89','2020-8-1','90','2020-8-10','95');
insert into std values (std_seq.nextval,'user20','1','2020-7-31','90','2020-8-1','91','2020-8-10','96');
insert into std values (std_seq.nextval,'user21','1','2020-7-31','91','2020-8-1','92','2020-8-10','97');
insert into std values (std_seq.nextval,'user22','1','2020-7-31','92','2020-8-1','93','2020-8-10','98');
insert into std values (std_seq.nextval,'user23','1','2020-7-31','93','2020-8-1','94','2020-8-10','99');
insert into std values (std_seq.nextval,'user24','1','2020-7-31','94','2020-8-1','95','2020-8-10','100');
insert into std values (std_seq.nextval,'user25','1','2020-7-31','95','2020-8-1','96','2020-8-10','100');
insert into std values (std_seq.nextval,'user26','2','2020-7-31','71','2020-8-1','72','2020-8-10','77');
insert into std values (std_seq.nextval,'user27','2','2020-7-31','72','2020-8-1','73','2020-8-10','78');
insert into std values (std_seq.nextval,'user28','2','2020-7-31','73','2020-8-1','74','2020-8-10','79');
insert into std values (std_seq.nextval,'user29','2','2020-7-31','74','2020-8-1','75','2020-8-10','80');
insert into std values (std_seq.nextval,'user30','2','2020-7-31','75','2020-8-1','76','2020-8-10','81');
insert into std values (std_seq.nextval,'user31','2','2020-7-31','76','2020-8-1','77','2020-8-10','82');
insert into std values (std_seq.nextval,'user32','2','2020-7-31','77','2020-8-1','78','2020-8-10','83');
insert into std values (std_seq.nextval,'user33','2','2020-7-31','78','2020-8-1','79','2020-8-10','84');
insert into std values (std_seq.nextval,'user34','2','2020-7-31','79','2020-8-1','80','2020-8-10','85');
insert into std values (std_seq.nextval,'user35','2','2020-7-31','80','2020-8-1','81','2020-8-10','86');
insert into std values (std_seq.nextval,'user36','2','2020-7-31','81','2020-8-1','82','2020-8-10','87');
insert into std values (std_seq.nextval,'user37','2','2020-7-31','82','2020-8-1','83','2020-8-10','88');
insert into std values (std_seq.nextval,'user38','2','2020-7-31','83','2020-8-1','84','2020-8-10','89');
insert into std values (std_seq.nextval,'user39','2','2020-7-31','84','2020-8-1','85','2020-8-10','90');
insert into std values (std_seq.nextval,'user40','2','2020-7-31','85','2020-8-1','86','2020-8-10','91');
insert into std values (std_seq.nextval,'user41','3','2020-7-31','61','2020-8-1','62','2020-8-10','67');
insert into std values (std_seq.nextval,'user42','3','2020-7-31','62','2020-8-1','63','2020-8-10','68');
insert into std values (std_seq.nextval,'user43','3','2020-7-31','63','2020-8-1','64','2020-8-10','69');
insert into std values (std_seq.nextval,'user44','3','2020-7-31','64','2020-8-1','65','2020-8-10','70');
insert into std values (std_seq.nextval,'user45','3','2020-7-31','65','2020-8-1','66','2020-8-10','71');
insert into std values (std_seq.nextval,'user46','3','2020-7-31','66','2020-8-1','67','2020-8-10','72');
insert into std values (std_seq.nextval,'user47','3','2020-7-31','67','2020-8-1','68','2020-8-10','73');
insert into std values (std_seq.nextval,'user48','3','2020-7-31','68','2020-8-1','69','2020-8-10','74');
insert into std values (std_seq.nextval,'user49','3','2020-7-31','69','2020-8-1','70','2020-8-10','75');
insert into std values (std_seq.nextval,'user50','3','2020-7-31','70','2020-8-1','71','2020-8-10','76');
insert into std values (std_seq.nextval,'user51','3','2020-7-31','71','2020-8-1','72','2020-8-10','77');
insert into std values (std_seq.nextval,'user52','3','2020-7-31','72','2020-8-1','73','2020-8-10','78');
insert into std values (std_seq.nextval,'user53','3','2020-7-31','73','2020-8-1','74','2020-8-10','79');
insert into std values (std_seq.nextval,'user54','3','2020-7-31','74','2020-8-1','75','2020-8-10','80');
insert into std values (std_seq.nextval,'user55','3','2020-7-31','75','2020-8-1','76','2020-8-10','81');
insert into std values (std_seq.nextval,'user56','4','','','','','','');
insert into std values (std_seq.nextval,'user57','4','','','','','','');
insert into std values (std_seq.nextval,'user58','4','','','','','','');
insert into std values (std_seq.nextval,'user59','4','','','','','','');
insert into std values (std_seq.nextval,'user60','4','','','','','','');
insert into std values (std_seq.nextval,'user61','4','','','','','','');
insert into std values (std_seq.nextval,'user62','4','','','','','','');
insert into std values (std_seq.nextval,'user63','4','','','','','','');
insert into std values (std_seq.nextval,'user64','4','','','','','','');
insert into std values (std_seq.nextval,'user65','4','','','','','','');
insert into std values (std_seq.nextval,'user66','4','','','','','','');
insert into std values (std_seq.nextval,'user67','4','','','','','','');
insert into std values (std_seq.nextval,'user68','4','','','','','','');
insert into std values (std_seq.nextval,'user69','4','','','','','','');
insert into std values (std_seq.nextval,'user70','4','','','','','','');
insert into std values (std_seq.nextval,'user71','5','','','','','','');
insert into std values (std_seq.nextval,'user72','5','','','','','','');
insert into std values (std_seq.nextval,'user73','5','','','','','','');
insert into std values (std_seq.nextval,'user74','5','','','','','','');
insert into std values (std_seq.nextval,'user75','5','','','','','','');
insert into std values (std_seq.nextval,'user76','5','','','','','','');
insert into std values (std_seq.nextval,'user77','5','','','','','','');
insert into std values (std_seq.nextval,'user78','5','','','','','','');
insert into std values (std_seq.nextval,'user79','5','','','','','','');
insert into std values (std_seq.nextval,'user80','5','','','','','','');
insert into std values (std_seq.nextval,'user81','5','','','','','','');
insert into std values (std_seq.nextval,'user82','5','','','','','','');
insert into std values (std_seq.nextval,'user83','5','','','','','','');
insert into std values (std_seq.nextval,'user84','5','','','','','','');
insert into std values (std_seq.nextval,'user85','5','','','','','','');
insert into std values (std_seq.nextval,'user86','5','','','','','','');
insert into std values (std_seq.nextval,'user87','5','','','','','','');
insert into std values (std_seq.nextval,'user88','5','','','','','','');
insert into std values (std_seq.nextval,'user89','5','','','','','','');
insert into std values (std_seq.nextval,'user90','5','','','','','','');
insert into std values (std_seq.nextval,'user91','6','','','','','','');
insert into std values (std_seq.nextval,'user92','6','','','','','','');
insert into std values (std_seq.nextval,'user93','6','','','','','','');
insert into std values (std_seq.nextval,'user94','6','','','','','','');
insert into std values (std_seq.nextval,'user95','6','','','','','','');
insert into std values (std_seq.nextval,'user96','6','','','','','','');
insert into std values (std_seq.nextval,'user97','6','','','','','','');
insert into std values (std_seq.nextval,'user98','6','','','','','','');
insert into std values (std_seq.nextval,'user99','6','','','','','','');
insert into std values (std_seq.nextval,'user100','6','','','','','','');

commit;

select * from std;