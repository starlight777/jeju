--a		/index (케러셀)
--b		/intro
--c		/opencourse
select * from crs where cbegin > sysdate;

--c1	/opencourse/detail
--c2	/opencourse/register
--c3	/opencourse/result
--d		/notice
--d1	/notice/nadd
--d2	/notice/nedit
--d3	/notice/ndel
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
--g121	/lms/mytask/mystus/mystu
--g122	/lms/mytask/mystus/att
--g123	/lms/mytask/mystus/gadd
--g124	/lms/mytask/mystus/gedit
--g2	/lms/courses
select * from crs
select * from mbr,dpt; 

select * from empl, (select * from mbr,dpt) where empl.dno=dno; 
--직원목록
select * from (select * from empl inner join mbr on empl.id=mbr.id) inner join dpt on empl.dno=dpt.dno;
select * from empl inner join dpt on empl.dno=dpt.dno;
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
--g4	/lms/emp
--g41	/lms/emp/eadd
--g42	/lms/emp/eedit
--g43	/lms/emp/edel