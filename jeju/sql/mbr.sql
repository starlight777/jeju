drop table mbr;
drop sequence mbr_seq;
create table mbr(
	id varchar2(20) constraint mbr_id_pk primary key,
	pw varchar2(20) constraint mbr_pw_nn not null,
	name varchar2(20) constraint mbr_name_nn not null,
	tel number(11) constraint mbr_tel_uk unique,
	email varchar2(30) constraint mbr_email_uk unique,
	answer varchar2(50),
	lvl char(3) default 'L01' constraint mbr_lvl_fk references lvl(lvl)
);
create sequence mbr_seq;
--input data
insert into mbr values ('user1','test!111','회원1','01012341111','user1@bitjeju.com','강아지','L01');
insert into mbr values ('user2','test!111','회원2','01012341112','user2@bitjeju.com','강아지','L01');
insert into mbr values ('user3','test!111','회원3','01012341113','user3@bitjeju.com','강아지','L01');
insert into mbr values ('user4','test!111','회원4','01012341114','user4@bitjeju.com','강아지','L01');
insert into mbr values ('user5','test!111','회원5','01012341115','user5@bitjeju.com','강아지','L01');
insert into mbr values ('user6','test!111','회원6','01012341116','user6@bitjeju.com','강아지','L01');
insert into mbr values ('user7','test!111','회원7','01012341117','user7@bitjeju.com','강아지','L01');
insert into mbr values ('user8','test!111','회원8','01012341118','user8@bitjeju.com','강아지','L01');
insert into mbr values ('user9','test!111','회원9','01012341119','user9@bitjeju.com','강아지','L01');
insert into mbr values ('user10','test!111','회원10','01012341120','user10@bitjeju.com','강아지','L01');
insert into mbr values ('user11','test!111','회원11','01012341121','user11@bitjeju.com','강아지','L03');
insert into mbr values ('user12','test!111','회원12','01012341122','user12@bitjeju.com','강아지','L03');
insert into mbr values ('user13','test!111','회원13','01012341123','user13@bitjeju.com','강아지','L03');
insert into mbr values ('user14','test!111','회원14','01012341124','user14@bitjeju.com','강아지','L03');
insert into mbr values ('user15','test!111','회원15','01012341125','user15@bitjeju.com','강아지','L03');
insert into mbr values ('user16','test!111','회원16','01012341126','user16@bitjeju.com','강아지','L03');
insert into mbr values ('user17','test!111','회원17','01012341127','user17@bitjeju.com','강아지','L03');
insert into mbr values ('user18','test!111','회원18','01012341128','user18@bitjeju.com','강아지','L03');
insert into mbr values ('user19','test!111','회원19','01012341129','user19@bitjeju.com','강아지','L03');
insert into mbr values ('user20','test!111','회원20','01012341130','user20@bitjeju.com','강아지','L03');
insert into mbr values ('user21','test!111','회원21','01012341131','user21@bitjeju.com','강아지','L03');
insert into mbr values ('user22','test!111','회원22','01012341132','user22@bitjeju.com','강아지','L03');
insert into mbr values ('user23','test!111','회원23','01012341133','user23@bitjeju.com','강아지','L03');
insert into mbr values ('user24','test!111','회원24','01012341134','user24@bitjeju.com','강아지','L03');
insert into mbr values ('user25','test!111','회원25','01012341135','user25@bitjeju.com','강아지','L03');
insert into mbr values ('user26','test!111','회원26','01012341136','user26@bitjeju.com','강아지','L03');
insert into mbr values ('user27','test!111','회원27','01012341137','user27@bitjeju.com','강아지','L03');
insert into mbr values ('user28','test!111','회원28','01012341138','user28@bitjeju.com','강아지','L03');
insert into mbr values ('user29','test!111','회원29','01012341139','user29@bitjeju.com','강아지','L03');
insert into mbr values ('user30','test!111','회원30','01012341140','user30@bitjeju.com','강아지','L03');
insert into mbr values ('user31','test!111','회원31','01012341141','user31@bitjeju.com','강아지','L03');
insert into mbr values ('user32','test!111','회원32','01012341142','user32@bitjeju.com','강아지','L03');
insert into mbr values ('user33','test!111','회원33','01012341143','user33@bitjeju.com','강아지','L03');
insert into mbr values ('user34','test!111','회원34','01012341144','user34@bitjeju.com','강아지','L03');
insert into mbr values ('user35','test!111','회원35','01012341145','user35@bitjeju.com','강아지','L03');
insert into mbr values ('user36','test!111','회원36','01012341146','user36@bitjeju.com','강아지','L03');
insert into mbr values ('user37','test!111','회원37','01012341147','user37@bitjeju.com','강아지','L03');
insert into mbr values ('user38','test!111','회원38','01012341148','user38@bitjeju.com','강아지','L03');
insert into mbr values ('user39','test!111','회원39','01012341149','user39@bitjeju.com','강아지','L03');
insert into mbr values ('user40','test!111','회원40','01012341150','user40@bitjeju.com','강아지','L03');
insert into mbr values ('user41','test!111','회원41','01012341151','user41@bitjeju.com','강아지','L03');
insert into mbr values ('user42','test!111','회원42','01012341152','user42@bitjeju.com','강아지','L03');
insert into mbr values ('user43','test!111','회원43','01012341153','user43@bitjeju.com','강아지','L03');
insert into mbr values ('user44','test!111','회원44','01012341154','user44@bitjeju.com','강아지','L03');
insert into mbr values ('user45','test!111','회원45','01012341155','user45@bitjeju.com','강아지','L03');
insert into mbr values ('user46','test!111','회원46','01012341156','user46@bitjeju.com','강아지','L03');
insert into mbr values ('user47','test!111','회원47','01012341157','user47@bitjeju.com','강아지','L03');
insert into mbr values ('user48','test!111','회원48','01012341158','user48@bitjeju.com','강아지','L03');
insert into mbr values ('user49','test!111','회원49','01012341159','user49@bitjeju.com','강아지','L03');
insert into mbr values ('user50','test!111','회원50','01012341160','user50@bitjeju.com','강아지','L03');
insert into mbr values ('user51','test!111','회원51','01012341161','user51@bitjeju.com','강아지','L03');
insert into mbr values ('user52','test!111','회원52','01012341162','user52@bitjeju.com','강아지','L03');
insert into mbr values ('user53','test!111','회원53','01012341163','user53@bitjeju.com','강아지','L03');
insert into mbr values ('user54','test!111','회원54','01012341164','user54@bitjeju.com','강아지','L03');
insert into mbr values ('user55','test!111','회원55','01012341165','user55@bitjeju.com','강아지','L03');
insert into mbr values ('user56','test!111','회원56','01012341166','user56@bitjeju.com','강아지','L03');
insert into mbr values ('user57','test!111','회원57','01012341167','user57@bitjeju.com','강아지','L03');
insert into mbr values ('user58','test!111','회원58','01012341168','user58@bitjeju.com','강아지','L03');
insert into mbr values ('user59','test!111','회원59','01012341169','user59@bitjeju.com','강아지','L03');
insert into mbr values ('user60','test!111','회원60','01012341170','user60@bitjeju.com','강아지','L03');
insert into mbr values ('user61','test!111','회원61','01012341171','user61@bitjeju.com','강아지','L03');
insert into mbr values ('user62','test!111','회원62','01012341172','user62@bitjeju.com','강아지','L03');
insert into mbr values ('user63','test!111','회원63','01012341173','user63@bitjeju.com','강아지','L03');
insert into mbr values ('user64','test!111','회원64','01012341174','user64@bitjeju.com','강아지','L03');
insert into mbr values ('user65','test!111','회원65','01012341175','user65@bitjeju.com','강아지','L03');
insert into mbr values ('user66','test!111','회원66','01012341176','user66@bitjeju.com','강아지','L03');
insert into mbr values ('user67','test!111','회원67','01012341177','user67@bitjeju.com','강아지','L03');
insert into mbr values ('user68','test!111','회원68','01012341178','user68@bitjeju.com','강아지','L03');
insert into mbr values ('user69','test!111','회원69','01012341179','user69@bitjeju.com','강아지','L03');
insert into mbr values ('user70','test!111','회원70','01012341180','user70@bitjeju.com','강아지','L03');
insert into mbr values ('user71','test!111','회원71','01012341181','user71@bitjeju.com','강아지','L03');
insert into mbr values ('user72','test!111','회원72','01012341182','user72@bitjeju.com','강아지','L03');
insert into mbr values ('user73','test!111','회원73','01012341183','user73@bitjeju.com','강아지','L03');
insert into mbr values ('user74','test!111','회원74','01012341184','user74@bitjeju.com','강아지','L03');
insert into mbr values ('user75','test!111','회원75','01012341185','user75@bitjeju.com','강아지','L03');
insert into mbr values ('user76','test!111','회원76','01012341186','user76@bitjeju.com','강아지','L03');
insert into mbr values ('user77','test!111','회원77','01012341187','user77@bitjeju.com','강아지','L03');
insert into mbr values ('user78','test!111','회원78','01012341188','user78@bitjeju.com','강아지','L03');
insert into mbr values ('user79','test!111','회원79','01012341189','user79@bitjeju.com','강아지','L03');
insert into mbr values ('user80','test!111','회원80','01012341190','user80@bitjeju.com','강아지','L03');
insert into mbr values ('user81','test!111','회원81','01012341191','user81@bitjeju.com','강아지','L03');
insert into mbr values ('user82','test!111','회원82','01012341192','user82@bitjeju.com','강아지','L03');
insert into mbr values ('user83','test!111','회원83','01012341193','user83@bitjeju.com','강아지','L03');
insert into mbr values ('user84','test!111','회원84','01012341194','user84@bitjeju.com','강아지','L03');
insert into mbr values ('user85','test!111','회원85','01012341195','user85@bitjeju.com','강아지','L03');
insert into mbr values ('user86','test!111','회원86','01012341196','user86@bitjeju.com','강아지','L03');
insert into mbr values ('user87','test!111','회원87','01012341197','user87@bitjeju.com','강아지','L03');
insert into mbr values ('user88','test!111','회원88','01012341198','user88@bitjeju.com','강아지','L03');
insert into mbr values ('user89','test!111','회원89','01012341199','user89@bitjeju.com','강아지','L03');
insert into mbr values ('user90','test!111','회원90','01012341200','user90@bitjeju.com','강아지','L03');
insert into mbr values ('user91','test!111','회원91','01012341201','user91@bitjeju.com','강아지','L03');
insert into mbr values ('user92','test!111','회원92','01012341202','user92@bitjeju.com','강아지','L03');
insert into mbr values ('user93','test!111','회원93','01012341203','user93@bitjeju.com','강아지','L03');
insert into mbr values ('user94','test!111','회원94','01012341204','user94@bitjeju.com','강아지','L03');
insert into mbr values ('user95','test!111','회원95','01012341205','user95@bitjeju.com','강아지','L03');
insert into mbr values ('user96','test!111','회원96','01012341206','user96@bitjeju.com','강아지','L03');
insert into mbr values ('user97','test!111','회원97','01012341207','user97@bitjeju.com','강아지','L03');
insert into mbr values ('user98','test!111','회원98','01012341208','user98@bitjeju.com','강아지','L03');
insert into mbr values ('user99','test!111','회원99','01012341209','user99@bitjeju.com','강아지','L03');
insert into mbr values ('user100','test!111','회원100','01012341210','user100@bitjeju.com','강아지','L03');

commit;

select * from mbr;