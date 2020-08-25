create or replace view v_crs as
select 
crs.cno,ctitle,cbegin,cend,cdays,climit,croom, profno,empl.name as prof,salesno,
stdcnt,avg_gr1,avg_gr2,avg_gr3,avg_att
from crs
left join empl on crs.profno=empl.eno
left join (select max(cno) as cno,count(sno) as stdcnt, round(avg(gr1)) as avg_gr1,
round(avg(gr2)) as avg_gr2, round(avg(gr3)) as avg_gr3, round(avg(att_rate)) as avg_att from v_std group by cno) stdcnt 
on crs.cno=stdcnt.cno order by cno;

select * from v_crs;


select count(*) as totalCount from crs;
select rownum, a.* from crs a;
select rownum, x.* from (select a.* from crs a) x; 
select rownum, cno, ctitle, cbegin, cend from crs;
select ceil(rownum/10), cno, ctitle, cbegin, cend from crs where ceil(rownum/10)=1;


select * from(select * from ( select rownum as row_num, crs.* from crs order by cno desc) where row_num > = 1) where row_num <= 60
select * from(select rownum as row_num, crs.* from crs) where row_num <= 10
select count(*) as count from crs;


