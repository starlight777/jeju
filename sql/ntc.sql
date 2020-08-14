drop table ntc;
drop sequence ntc_seq;
create table ntc(
	nno number constraint ntc_nno_pk primary key,
	ntitle varchar2(300),
	ntype varchar2(30) check (ntype in ('센터공지','과정공지','기타공지')),
	nbody varchar2(2000),
	ndate date default sysdate,
	ndateby date default sysdate+365,
	cno number constraint ntc_cno_fk references crs(cno),
	eno number constraint ntc_eno_fk references empl(eno),
	nurl varchar2(300)
);

create sequence ntc_seq;
--input data
insert into ntc values (ntc_seq.nextval,'제주센터 오픈 안내','센터공지','제주센터 오픈 안내','2020-6-1','2021-06-01','','1003','');
insert into ntc values (ntc_seq.nextval,'제주센터 찾아오시는 길 안내','센터공지','제주센터 찾아오시는 길 안내','2020-6-1','2021-06-01','','1003','');
insert into ntc values (ntc_seq.nextval,'센터 방문 이벤트','센터공지','센터 방문 이벤트','2020-6-1','2021-06-01','','1003','');
insert into ntc values (ntc_seq.nextval,'디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정','과정공지','디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정','2020-6-1','2021-06-01','1','1003','');
insert into ntc values (ntc_seq.nextval,'디지털컨버전스 기반 Framework 전문 개발자 양성과정','과정공지','디지털컨버전스 기반 Framework 전문 개발자 양성과정','2020-6-1','2021-06-01','2','1004','');
insert into ntc values (ntc_seq.nextval,'디지털컨버전스기반 융합기술을 활용한sw 웹 개발자 양성과정 A','과정공지','디지털컨버전스기반 융합기술을 활용한sw 웹 개발자 양성과정 A','2020-6-1','2021-06-01','3','1005','');
insert into ntc values (ntc_seq.nextval,'디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 A','과정공지','디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 A','2020-8-1','2021-08-01','4','1003','');
insert into ntc values (ntc_seq.nextval,'디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 B','과정공지','디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 B','2020-8-1','2021-08-01','5','1004','');
insert into ntc values (ntc_seq.nextval,'디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 C','과정공지','디지털컨버전스 기반 자바(JAVA)응용SW개발자 양성과정 C','2020-8-1','2021-08-01','6','1005','');

commit;

select * from ntc;