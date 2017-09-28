create database prison;
use prison;
create table tbl_prisoner (prisno int(3), prisName varchar(50), prisDOB date, prisgender char(1), constraint pris_pk primary key(prisno), constraint prisDOB_ch check(prisDOB > '1993-08-05'), constraint prisgender_ch check(prisgender = "M" or "F")) engine innodb;
select * from tbl_prisoner;
create table tbl_cell (cellid int(5), blockname varchar(30), c_prisNo int(3), cellSize int (5), constraint cell_pk primary key(cellid), constraint cell_fk foreign key (c_prisno) references tbl_prisoner (prisno)) engine innodb;
select * from tbl_cell;
commit;
insert into tbl_prisoner values(111, "Joe Bloggs", '1994-11-19', "M");
insert into tbl_prisoner values(211, "Jacob Bloggs", '1995-11-19', "M");
insert into tbl_prisoner values(311, "Marry Bloggs", '1996-11-19', "F");
insert into tbl_prisoner values(411, "Marge Bloggs", '1997-11-19', "F");
select * from tbl_prisoner;
rollback;
select * from tbl_prisoner;