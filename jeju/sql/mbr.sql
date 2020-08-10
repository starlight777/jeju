drop table mbr;
drop sequence mbr_seq;
create table mbr(
	mno number constraint mbr_mno_pk primary key,
	id varchar2(20) constraint mbr_id_uk unique constraint mbr_id_nn not null,
	pw varchar2(20) constraint mbr_pw_nn not null,
	name varchar2(20) constraint mbr_name_nn not null,
	tel number(11) constraint mbr_tel_uk unique,
	email varchar2(30) constraint mbr_email_uk unique,
	answer varchar2(50),
	lvl char(3) default 'L01' constraint mbr_lvl_fk references lvl(lvl)
);
create sequence mbr_seq;
--input data
insert into mbr values (mbr_seq.nextval,'user1','test!111','유저일','01012341111','user1@bitjeju.com','강아지','L01');
insert into mbr values (mbr_seq.nextval,'user2','test!111','유저이','01012341112','user2@bitjeju.com','강아지','L01');
insert into mbr values (mbr_seq.nextval,'user3','test!111','유저삼','01012341113','user3@bitjeju.com','강아지','L01');
insert into mbr values (mbr_seq.nextval,'user4','test!111','유저사','01012341114','user4@bitjeju.com','강아지','L01');
insert into mbr values (mbr_seq.nextval,'user5','test!111','유저오','01012341115','user5@bitjeju.com','강아지','L01');
insert into mbr values (mbr_seq.nextval,'user6','test!111','유저육','01012341116','user6@bitjeju.com','강아지','L01');
insert into mbr values (mbr_seq.nextval,'bitjeju01','test!111','영업일','01012341117','bitjeju01@bitjeju.com','강아지','L11');
insert into mbr values (mbr_seq.nextval,'bitjeju02','test!111','영업이','01012341118','bitjeju02@bitjeju.com','강아지','L11');
insert into mbr values (mbr_seq.nextval,'bitjeju03','test!111','행정일','01012341119','bitjeju03@bitjeju.com','강아지','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju04','test!111','행정이','01012341120','bitjeju04@bitjeju.com','강아지','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju05','test!111','행정삼','01012341121','bitjeju05@bitjeju.com','강아지','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju06','test!111','회계일','01012341122','bitjeju06@bitjeju.com','강아지','L13');
insert into mbr values (mbr_seq.nextval,'bitjeju07','test!111','취업일','01012341123','bitjeju07@bitjeju.com','강아지','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju08','test!111','설민석','01012341124','bitjeju08@bitjeju.com','강아지','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju09','test!111','정승제','01012341125','bitjeju09@bitjeju.com','강아지','L12');
insert into mbr values (mbr_seq.nextval,'bitjeju10','test!111','황현필','01012341126','bitjeju10@bitjeju.com','강아지','L12');
insert into mbr values (mbr_seq.nextval,'bitadmin','test!111','관리일','01012341127','bitadmin@bitjeju.com','강아지','L20');

insert into mbr values (mbr_seq.nextval,'stu01','test!111','학생1','01012341128','stu01@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu02','test!111','학생2','01012341129','stu02@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu03','test!111','학생3','01012341130','stu03@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu04','test!111','학생4','01012341131','stu04@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu05','test!111','학생5','01012341132','stu05@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu06','test!111','학생6','01012341133','stu06@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu07','test!111','학생7','01012341134','stu07@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu08','test!111','학생8','01012341135','stu08@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu09','test!111','학생9','01012341136','stu09@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu10','test!111','학생10','01012341137','stu10@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu11','test!111','학생11','01012341138','stu11@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu12','test!111','학생12','01012341139','stu12@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu13','test!111','학생13','01012341140','stu13@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu14','test!111','학생14','01012341141','stu14@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu15','test!111','학생15','01012341142','stu15@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu16','test!111','학생16','01012341143','stu16@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu17','test!111','학생17','01012341144','stu17@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu18','test!111','학생18','01012341145','stu18@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu19','test!111','학생19','01012341146','stu19@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu20','test!111','학생20','01012341147','stu20@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu21','test!111','학생21','01012341148','stu21@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu22','test!111','학생22','01012341149','stu22@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu23','test!111','학생23','01012341150','stu23@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu24','test!111','학생24','01012341151','stu24@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu25','test!111','학생25','01012341152','stu25@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu26','test!111','학생26','01012341153','stu26@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu27','test!111','학생27','01012341154','stu27@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu28','test!111','학생28','01012341155','stu28@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu29','test!111','학생29','01012341156','stu29@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu30','test!111','학생30','01012341157','stu30@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu31','test!111','학생31','01012341158','stu31@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu32','test!111','학생32','01012341159','stu32@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu33','test!111','학생33','01012341160','stu33@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu34','test!111','학생34','01012341161','stu34@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu35','test!111','학생35','01012341162','stu35@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu36','test!111','학생36','01012341163','stu36@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu37','test!111','학생37','01012341164','stu37@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu38','test!111','학생38','01012341165','stu38@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu39','test!111','학생39','01012341166','stu39@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu40','test!111','학생40','01012341167','stu40@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu41','test!111','학생41','01012341168','stu41@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu42','test!111','학생42','01012341169','stu42@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu43','test!111','학생43','01012341170','stu43@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu44','test!111','학생44','01012341171','stu44@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu45','test!111','학생45','01012341172','stu45@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu46','test!111','학생46','01012341173','stu46@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu47','test!111','학생47','01012341174','stu47@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu48','test!111','학생48','01012341175','stu48@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu49','test!111','학생49','01012341176','stu49@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu50','test!111','학생50','01012341177','stu50@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu51','test!111','학생51','01012341178','stu51@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu52','test!111','학생52','01012341179','stu52@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu53','test!111','학생53','01012341180','stu53@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu54','test!111','학생54','01012341181','stu54@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu55','test!111','학생55','01012341182','stu55@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu56','test!111','학생56','01012341183','stu56@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu57','test!111','학생57','01012341184','stu57@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu58','test!111','학생58','01012341185','stu58@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu59','test!111','학생59','01012341186','stu59@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu60','test!111','학생60','01012341187','stu60@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu61','test!111','학생61','01012341188','stu61@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu62','test!111','학생62','01012341189','stu62@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu63','test!111','학생63','01012341190','stu63@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu64','test!111','학생64','01012341191','stu64@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu65','test!111','학생65','01012341192','stu65@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu66','test!111','학생66','01012341193','stu66@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu67','test!111','학생67','01012341194','stu67@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu68','test!111','학생68','01012341195','stu68@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu69','test!111','학생69','01012341196','stu69@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu70','test!111','학생70','01012341197','stu70@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu71','test!111','학생71','01012341198','stu71@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu72','test!111','학생72','01012341199','stu72@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu73','test!111','학생73','01012341200','stu73@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu74','test!111','학생74','01012341201','stu74@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu75','test!111','학생75','01012341202','stu75@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu76','test!111','학생76','01012341203','stu76@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu77','test!111','학생77','01012341204','stu77@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu78','test!111','학생78','01012341205','stu78@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu79','test!111','학생79','01012341206','stu79@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu80','test!111','학생80','01012341207','stu80@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu81','test!111','학생81','01012341208','stu81@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu82','test!111','학생82','01012341209','stu82@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu83','test!111','학생83','01012341210','stu83@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu84','test!111','학생84','01012341211','stu84@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu85','test!111','학생85','01012341212','stu85@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu86','test!111','학생86','01012341213','stu86@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu87','test!111','학생87','01012341214','stu87@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu88','test!111','학생88','01012341215','stu88@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu89','test!111','학생89','01012341216','stu89@bitjeju.com','강아지','L03');
insert into mbr values (mbr_seq.nextval,'stu90','test!111','학생90','01012341217','stu90@bitjeju.com','강아지','L03');

commit;

select * from mbr;