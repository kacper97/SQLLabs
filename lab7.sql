use greenconstruction;
drop table tbl_site;
drop table tbl_country;
rollback;

create database music;
use music;
create table tbl_Artist( artistNo int(3), artistName varchar(50) not null, artistDOB date, artistGender char(1), constraint artistGenger_ch check (artistGender = "M" or "F"), constraint artist_pk primary key (artistNo)) engine InnoDB;
create table tbl_Song ( songId int (5), songName varchar(100) not null, songDuration int(3), songGenre char(30), s_ArtistNo int(3), constraint