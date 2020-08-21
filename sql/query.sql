--a		/index (케러셀)
--b		/intro
--c		/opencourse
select * from crs where cbegin > sysdate;
--c1	/opencourse/detail
--c2	/opencourse/register
--c3	/opencourse/result
--d		/notice
--d1	/notice/ndetail
--e		/join
--e1	/join/leave
--e2	/login
--e3	/login/findid
--e4	/login/findpw
--e5	/login/logout
--f		/mypage
--f1	/mypage/info
--f2	/mypage/infoedit
--f3	/mypage/study
--g		/lms/mytask
--g11	/lms/mytask/mycourses
--g111	/lms/mytask/mycourses/mycourse
--g12	/lms/mytask/mystus
select * from crs,std,att where crs.cno=std.cno and std.sno=att.sno;
--g121	/lms/mytask/mystus/mystu
select * from std 
left join att on std.sno=att.sno 
group by std.sno;
--수업횟수
select max(sno), count(sno) from att group by sno order by sno;
--정상등하원횟수
select max(sno), count(sno) from att where ckin=1 and ckout=1 group by sno order by sno;
--정상등원횟수
select max(sno), count(sno) from att where ckin=1 group by sno order by sno;
--지각횟수
select max(sno), count(sno) from att where ckin=2 and ckout!=0 group by sno order by sno;
--정상하원횟수
select max(sno), count(sno) from att where ckout=1 group by sno order by sno;
--조퇴횟수
select max(sno), count(sno) from att where ckout=3 and ckin!=0 group by sno order by sno;
--결석횟수(오전 또는 오후 한번이라도 등원 안한 경우)
select max(sno), count(sno) from att where ckin*ckout=0 group by sno order by sno;

select std.cno,std.sno,mbr.name,std.gr1,std.gr2,std.gr3,t_count.cnt,t_good.good,t_late.late,t_leftearly.leftearly,t_absent.absent from std
left join mbr on std.id=mbr.id
left join (select max(sno) as sno, count(sno) as cnt from att group by sno) t_count on std.sno=t_count.sno
left join (select max(sno) as sno, count(sno) as good from att where ckin=1 and ckout=1 group by sno) t_good on std.sno=t_good.sno
left join (select max(sno) as sno, count(sno) as late from att where ckin=2 and ckout!=0 group by sno) t_late on std.sno=t_late.sno
left join (select max(sno) as sno, count(sno) as leftearly from att where ckin!=0 and ckout=3 group by sno) t_leftearly on std.sno=t_leftearly.sno
left join (select max(sno) as sno, count(sno) as absent from att where ckin=0 or ckout=0 group by sno) t_absent on std.sno=t_absent.sno
where mbr.lvl='L03'
order by std.sno;

--g122	/lms/mytask/mystus/att
--g123	/lms/mytask/mystus/gadd
--g124	/lms/mytask/mystus/gedit
--g2	/lms/courses
--g21	/lms/courses/course
--g22	/lms/courses/cadd
--g23	/lms/courses/cedit
--g24	/lms/courses/reglist
--g25	/lms/coursse/assign
--g26	/lms/courses/confirm
--g27	/lms/courses/cdel
--g3	/lms/students
--g31	/lms/students/student
--g32	/lms/students/sedit
--g4	/ntc
select nno, ntitle, ntype, nbody, ndate, ndateby, cno, ntc.eno, nurl, empl.dno, dpt.dname from dpt,empl,ntc where ntc.eno=empl.eno(+) and empl.dno=dpt.dno(+);
--g41	/ntc/ndetail2
--g42	/ntc/nadd
--g43	/ntc/nedit
--g44	/ntc/ndel
--g5	/lms/emp
select eno, name, tel, email, hdate, empl.dno, dname from empl, dpt where empl.dno=dpt.dno(+);
--g51	/lms/emp/eadd
--g52	/lms/emp/eedit
--g53	/lms/emp/edel