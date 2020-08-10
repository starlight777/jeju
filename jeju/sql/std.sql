drop table std;
drop sequence std_seq;
create table std(
	sno number constraint std_sno_pk primary key,
	id varchar2(20) constraint std_id_fk references mbr(id),
	cno number constraint std_cno_fk references crs(cno),
	date1 date,
	gr1 number(3) check (gr1 between 1 and 100),
	date2 date,
	gr2 number(3) check (gr2 between 1 and 100),
	date3 date,
	gr3 number(3) check (gr3 between 1 and 100)
);
create sequence std_seq;
--input data
insert into std values (std_seq.nextval,'stu01','1','2020-7-31','81','2020-8-1','82','2020-8-10','87');
insert into std values (std_seq.nextval,'stu02','1','2020-7-31','82','2020-8-1','83','2020-8-10','88');
insert into std values (std_seq.nextval,'stu03','1','2020-7-31','83','2020-8-1','84','2020-8-10','89');
insert into std values (std_seq.nextval,'stu04','1','2020-7-31','84','2020-8-1','85','2020-8-10','90');
insert into std values (std_seq.nextval,'stu05','1','2020-7-31','85','2020-8-1','86','2020-8-10','91');
insert into std values (std_seq.nextval,'stu06','1','2020-7-31','86','2020-8-1','87','2020-8-10','92');
insert into std values (std_seq.nextval,'stu07','1','2020-7-31','87','2020-8-1','88','2020-8-10','93');
insert into std values (std_seq.nextval,'stu08','1','2020-7-31','88','2020-8-1','89','2020-8-10','94');
insert into std values (std_seq.nextval,'stu09','1','2020-7-31','89','2020-8-1','90','2020-8-10','95');
insert into std values (std_seq.nextval,'stu10','1','2020-7-31','90','2020-8-1','91','2020-8-10','96');
insert into std values (std_seq.nextval,'stu11','1','2020-7-31','91','2020-8-1','92','2020-8-10','97');
insert into std values (std_seq.nextval,'stu12','1','2020-7-31','92','2020-8-1','93','2020-8-10','98');
insert into std values (std_seq.nextval,'stu13','1','2020-7-31','93','2020-8-1','94','2020-8-10','99');
insert into std values (std_seq.nextval,'stu14','1','2020-7-31','94','2020-8-1','95','2020-8-10','100');
insert into std values (std_seq.nextval,'stu15','1','2020-7-31','95','2020-8-1','96','2020-8-10','100');
insert into std values (std_seq.nextval,'stu16','2','2020-7-31','71','2020-8-1','72','2020-8-10','77');
insert into std values (std_seq.nextval,'stu17','2','2020-7-31','72','2020-8-1','73','2020-8-10','78');
insert into std values (std_seq.nextval,'stu18','2','2020-7-31','73','2020-8-1','74','2020-8-10','79');
insert into std values (std_seq.nextval,'stu19','2','2020-7-31','74','2020-8-1','75','2020-8-10','80');
insert into std values (std_seq.nextval,'stu20','2','2020-7-31','75','2020-8-1','76','2020-8-10','81');
insert into std values (std_seq.nextval,'stu21','2','2020-7-31','76','2020-8-1','77','2020-8-10','82');
insert into std values (std_seq.nextval,'stu22','2','2020-7-31','77','2020-8-1','78','2020-8-10','83');
insert into std values (std_seq.nextval,'stu23','2','2020-7-31','78','2020-8-1','79','2020-8-10','84');
insert into std values (std_seq.nextval,'stu24','2','2020-7-31','79','2020-8-1','80','2020-8-10','85');
insert into std values (std_seq.nextval,'stu25','2','2020-7-31','80','2020-8-1','81','2020-8-10','86');
insert into std values (std_seq.nextval,'stu26','2','2020-7-31','81','2020-8-1','82','2020-8-10','87');
insert into std values (std_seq.nextval,'stu27','2','2020-7-31','82','2020-8-1','83','2020-8-10','88');
insert into std values (std_seq.nextval,'stu28','2','2020-7-31','83','2020-8-1','84','2020-8-10','89');
insert into std values (std_seq.nextval,'stu29','2','2020-7-31','84','2020-8-1','85','2020-8-10','90');
insert into std values (std_seq.nextval,'stu30','2','2020-7-31','85','2020-8-1','86','2020-8-10','91');
insert into std values (std_seq.nextval,'stu31','3','2020-7-31','61','2020-8-1','62','2020-8-10','67');
insert into std values (std_seq.nextval,'stu32','3','2020-7-31','62','2020-8-1','63','2020-8-10','68');
insert into std values (std_seq.nextval,'stu33','3','2020-7-31','63','2020-8-1','64','2020-8-10','69');
insert into std values (std_seq.nextval,'stu34','3','2020-7-31','64','2020-8-1','65','2020-8-10','70');
insert into std values (std_seq.nextval,'stu35','3','2020-7-31','65','2020-8-1','66','2020-8-10','71');
insert into std values (std_seq.nextval,'stu36','3','2020-7-31','66','2020-8-1','67','2020-8-10','72');
insert into std values (std_seq.nextval,'stu37','3','2020-7-31','67','2020-8-1','68','2020-8-10','73');
insert into std values (std_seq.nextval,'stu38','3','2020-7-31','68','2020-8-1','69','2020-8-10','74');
insert into std values (std_seq.nextval,'stu39','3','2020-7-31','69','2020-8-1','70','2020-8-10','75');
insert into std values (std_seq.nextval,'stu40','3','2020-7-31','70','2020-8-1','71','2020-8-10','76');
insert into std values (std_seq.nextval,'stu41','3','2020-7-31','71','2020-8-1','72','2020-8-10','77');
insert into std values (std_seq.nextval,'stu42','3','2020-7-31','72','2020-8-1','73','2020-8-10','78');
insert into std values (std_seq.nextval,'stu43','3','2020-7-31','73','2020-8-1','74','2020-8-10','79');
insert into std values (std_seq.nextval,'stu44','3','2020-7-31','74','2020-8-1','75','2020-8-10','80');
insert into std values (std_seq.nextval,'stu45','3','2020-7-31','75','2020-8-1','76','2020-8-10','81');
insert into std values (std_seq.nextval,'stu46','4','','','','','','');
insert into std values (std_seq.nextval,'stu47','4','','','','','','');
insert into std values (std_seq.nextval,'stu48','4','','','','','','');
insert into std values (std_seq.nextval,'stu49','4','','','','','','');
insert into std values (std_seq.nextval,'stu50','4','','','','','','');
insert into std values (std_seq.nextval,'stu51','4','','','','','','');
insert into std values (std_seq.nextval,'stu52','4','','','','','','');
insert into std values (std_seq.nextval,'stu53','4','','','','','','');
insert into std values (std_seq.nextval,'stu54','4','','','','','','');
insert into std values (std_seq.nextval,'stu55','4','','','','','','');
insert into std values (std_seq.nextval,'stu56','4','','','','','','');
insert into std values (std_seq.nextval,'stu57','4','','','','','','');
insert into std values (std_seq.nextval,'stu58','4','','','','','','');
insert into std values (std_seq.nextval,'stu59','4','','','','','','');
insert into std values (std_seq.nextval,'stu60','4','','','','','','');
insert into std values (std_seq.nextval,'stu61','5','','','','','','');
insert into std values (std_seq.nextval,'stu62','5','','','','','','');
insert into std values (std_seq.nextval,'stu63','5','','','','','','');
insert into std values (std_seq.nextval,'stu64','5','','','','','','');
insert into std values (std_seq.nextval,'stu65','5','','','','','','');
insert into std values (std_seq.nextval,'stu66','5','','','','','','');
insert into std values (std_seq.nextval,'stu67','5','','','','','','');
insert into std values (std_seq.nextval,'stu68','5','','','','','','');
insert into std values (std_seq.nextval,'stu69','5','','','','','','');
insert into std values (std_seq.nextval,'stu70','5','','','','','','');
insert into std values (std_seq.nextval,'stu71','5','','','','','','');
insert into std values (std_seq.nextval,'stu72','5','','','','','','');
insert into std values (std_seq.nextval,'stu73','5','','','','','','');
insert into std values (std_seq.nextval,'stu74','5','','','','','','');
insert into std values (std_seq.nextval,'stu75','5','','','','','','');
insert into std values (std_seq.nextval,'stu76','6','','','','','','');
insert into std values (std_seq.nextval,'stu77','6','','','','','','');
insert into std values (std_seq.nextval,'stu78','6','','','','','','');
insert into std values (std_seq.nextval,'stu79','6','','','','','','');
insert into std values (std_seq.nextval,'stu80','6','','','','','','');
insert into std values (std_seq.nextval,'stu81','6','','','','','','');
insert into std values (std_seq.nextval,'stu82','6','','','','','','');
insert into std values (std_seq.nextval,'stu83','6','','','','','','');
insert into std values (std_seq.nextval,'stu84','6','','','','','','');
insert into std values (std_seq.nextval,'stu85','6','','','','','','');
insert into std values (std_seq.nextval,'stu86','6','','','','','','');
insert into std values (std_seq.nextval,'stu87','6','','','','','','');
insert into std values (std_seq.nextval,'stu88','6','','','','','','');
insert into std values (std_seq.nextval,'stu89','6','','','','','','');
insert into std values (std_seq.nextval,'stu90','6','','','','','','');

commit;

select * from std;