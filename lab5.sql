SELECT * FROM TBL_COUNTRY;
SELECT * FROM TBL_BRANCH;
SELECT * FROM TBL_BUILDING;
SELECT * FROM TBL_ROOF;
SELECT * FROM TBL_SITE;
SELECT * FROM TBL_CLIENT;
DESCRIBE TBL_COUNTRY;
SELECT BRANCHADDRESS, BRANCHEMAIL FROM tbl_branch;
SELECT BRANCHADDRESS AS ADDRESS, BRANCHEMAIL AS EMAIL FROM TBL_BRANCH;
SELECT BRANCHPHONE AS " PHONE NUMBER ", BRANCHADDRESS AS ADDRESS FROM TBL_BRANCH;

SELECT BRANCHNAME AS "NAME", BRANCHEMAIL AS "EMAIL", BRANCHPHONE AS " PHONE NUMBER " FROM TBL_BRANCH;
SELECT COUNTRYNAME AS "NAME OF COUNTRY", COUNTRYCAPITAL AS "CAPITAL" FROM TBL_COUNTRY;

SELECT CLIENTNAME, COMPANYNAME FROM TBL_CLIENT;

SELECT BUILDINGTYPE FROM TBL_BUILDING;
SELECT distinct BUILDINGTYPE FROM TBL_BUILDING;

SELECT 12+14 FROM DUAL;

SELECT SITEADDRESS, STARTDATE, ENDDATE FROM TBL_SITE;
SELECT ROOFTYPE, ROOFANGLE, ROOFSOILDEPTH FROM TBL_ROOF;
SELECT CLIENTNAME, CLIENTEMAIL, CLIENTPHONE FROM TBL_CLIENT;

SELECT COMPANYNAME FROM TBL_CLIENT;

SELECT sysdate();

SELECT * FROM TBL_COUNTRY WHERE COUNTRYID = 222;
SELECT * FROM TBL_COUNTRY;
SELECT * FROM TBL_COUNTRY WHERE COUNTRYID = 155;
SELECT * FROM TBL_CLIENT WHERE CLIENTID = 12349;
SELECT * FROM TBL_CLIENT;
SELECT * FROM tbl_building;
SELECT * FROM TBL_BUILDING WHERE BUILDINGID = 888;
SELECT * FROM TBL_ROOF;
SELECT * FROM TBL_ROOF WHERE RoofType = "pitched";
SELECT CLIENTID, CLIENTADDRESS FROM TBL_CLIENT WHERE COMPANYNAME LIKE '%MARKETING%';
	SELECT * FROM TBL_BUILDING
	WHERE BUILDINGTYPE LIKE '%Storey%';
SELECT * FROM TBL_BUILDING WHERE BUILDINGTYPE LIKE '%Storey';
SELECT * FROM TBL_COUNTRY WHERE COUNTRYNAME LIKE '_ales';
SELECT * FROM TBL_COUNTRY WHERE COUNTRYNAME LIKE 'Spa__';
SELECT * FROM TBL_COUNTRY WHERE COUNTRYNAME LIKE '%and';
SELECT * FROM TBL_COUNTRY WHERE COUNTRYNAME LIKE '%y';
SELECT * FROM TBL_BUILDING WHERE BUILDINGTYPE LIKE '%detached%';
SELECT * FROM TBL_BUILDING	WHERE BUILDINGTYPE LIKE '%Detached%';
SELECT * FROM TBL_BUILDING WHERE BUILDINGTYPE LIKE '%DETACHED%';
SELECT BRANCHNAME, BRANCHEMAIL  FROM TBL_BRANCH WHERE BRANCHEMAIL LIKE 'S%' ;
SELECT CLIENTID, CLIENTADDRESS FROM TBL_CLIENT WHERE CLIENTADDRESS LIKE '%ESTATE%';
SELECT ROOFTYPE, ROOFID FROM TBL_ROOF WHERE length(rooftype) =7;
SELECT * FROM TBL_BUILDING WHERE BUILDINGHEIGHT BETWEEN 60 AND 80;
SELECT * FROM TBL_BUILDING WHERE BUILDINGHEIGHT > 65;
SELECT * FROM TBL_BUILDING WHERE BUILDINGHEIGHT < 65;
SELECT * FROM TBL_BUILDING WHERE BUILDINGHEIGHT = 75;
SELECT * FROM TBL_BUILDING WHERE BUILDINGHEIGHT!= 108;
SELECT * FROM TBL_BUILDING WHERE BUILDINGHEIGHT <= 65;
SELECT * FROM TBL_BUILDING WHERE BUILDINGHEIGHT >= 65;
SELECT * FROM TBL_BUILDING WHERE BUILDINGHEIGHT <> 108;
SELECT * FROM TBL_BUILDING WHERE BUILDINGTYPE LIKE '%Detached%' AND BUILDINGHEIGHT > 100;
SELECT * FROM TBL_BUILDING WHERE BUILDINGTYPE LIKE '%Detached%' OR BUILDINGHEIGHT > 100;
select roofid and rooftype from tbl_roof where roofsoildepth > 60 and roofsoildepth< 160;
select roofid and rooftype from tbl_roof where RoofAngle >40 and roofangle <60 and RoofSoilDepth >60;
SELECT * FROM TBL_BUILDING WHERE BUILDINGhSURFACE IN ( '100%', '75%','80%');
SELECT * FROM TBL_BUILDING WHERE BUILDINGhSURFACE NOT IN ( '100%', '75%', '80%');
SELECT * FROM TBL_COUNTRY WHERE COUNTRYCAPITAL IS NULL;
SELECT * FROM TBL_COUNTRY WHERE COUNTRYCAPITAL IS NOT NULL;
SELECT * FROM TBL_COUNTRY WHERE COUNTRYCAPITAL IS NOT NULl	ORDER BY COUNTRYNAME;
SELECT * FROM TBL_COUNTRY WHERE COUNTRYCAPITAL IS NOT NULL ORDER BY COUNTRYNAMe DESC;
SELECT * FROM tbl_building WHERE BUILDINGTYPE IN (' APARTMENT' , 'TOWNHOUSES');
SELECT * FROM TBL_site where S_Buildingid is null;
SELECT * FROM TBL_site where S_Buildingid is not null;
select * from tbl_country where CountryName is not null order by countryname;
select countrycapital, countryname  from tbl_country where countryname is not null order by countrycapital;
select max(buildingheight) as tallest from tbl_building;
SELECT MIN(BUILDINGHEIGHT) AS SMALLEST FROM TBL_BUILDING;
SELECT AVG(BUILDINGHEIGHT) AS AVERAGE FROM TBL_BUILDING;
SELECT MAX(BUILDINGHEIGHT) AS TALLEST, AVG(BUILDINGHEIGHT) AS AVERAGE, MIN(BUILDINGHEIGHT) AS SMALLEST FROM TBL_BUILDING;
SELECT SUM(BUILDINGHEIGHT) FROM TBL_BUILDING;
SELECT COUNT(*) FROM TBL_CLIENT;
SELECT COUNt(CLIENTID) FROM TBL_CLIENT;
select count(*) from tbl_branch;
select count(*) from tbl_client where companydesc =" sme";
select max(roofsoildepth) as largest from tbl_roof;
select min(roofsoildepth) as minimum from tbl_roof;
SELECT B_COUNTRYID, COUNT(BRANCHID) FROM TBL_BRANCH GROUP BY B_COUNTRYID;
SELECT B_countryid, count(branchid) from tbl_branch group by b_countryid having count(branchid)>1;

select count(*) from tbl_building;
select count(BuildingType) from tbl_building;
select avg(buildingheight) as average from tbl_building;
select avg(buildingheight) as average from tbl_building group by buildingtype;

select buildingtype, avg(buildingheight) as average from tbl_building group by buildingtype having avg(buildingheight)>80;


select countryid, countryname, branchid, branchname, branchaddress from tbl_country, tbl_branch where countryid = b_countryid and countryid = 222;
select countryid, countryname, countrycapital, branchid, branchname, branchemail from tbl_country, tbl_branch where countryid = B_CountryID and countryid =222;
select * from tbl_country;
select countryid, countryname, countrycapital, branchid, branchname, branchemail from tbl_country, tbl_branch where countryid = B_CountryID and countryid =333;
select countryid, countryname, countrycapital, branchid, branchname, branchemail from tbl_country, tbl_branch order by countryname;
SELECT SITEADDRESS, STARTDATE, ENDDATE, BRANCHID, BRANCHNAME, BRANCHADDRESS FROM TBL_BRANCH, TBL_SITE WHERE BRANCHID = 222 AND BRANCHID = S_BRANCHID;
select siteaddress, startdate, enddate, clientname, clientlname from tbl_site, tbl_client where clientid =12346 and clientid = C_ClientID;
select siteaddress, startdate, enddate, buildingid, buildingname from tbl_site, tbl_building where buildingid=888 and buildingid = s_buildingid;
select siteaddress, startdate, enddate, rooftype, roofid from tbl_roof, tbl_site where roofid=454 and roofid=s_roofid;
select siteaddress, startdate, enddate, buildingname, buildingheight from tbl_site, tbl_building where buildingheight>60 and buildingid= s_buildingid;
select countryname, countryid, countrycapital, branchname, branchid from tbl_country, tbl_branch where branchemail is null and countryid= b_countryid;
select countryid, countryname, branchid, branchname, siteaddress from  tbl_country, tbl_branch, tbl_site where countryid= B_CountryID and branchid =s_branchid;
select countryid, countryname, branchid, branchname, siteaddress, roofid, rooftype from tbl_country, tbl_branch, tbl_site, tbl_roof where countryid = b_countryid and branchid = s_branchid and s_roofid = roofid;
select roofid, rooftype, roofangle, siteaddress, startdate from tbl_roof, tbl_site where roofid = s_roofid and StartDate<SysDate();
select siteaddress, clientid, clientname, countryname, countryid from tbl_client, tbl_country, tbl_site where clientid = C_ClientID and countryname ="Ireland";
select siteaddress, clientid, clientname, countryname, countryid from tbl_client, tbl_country, tbl_site where clientid = C_ClientID and countryname = countryname and countryname != "Ireland";

select siteaddress, clientid, clientname, countryname, countryid from tbl_client, tbl_country, tbl_site, tbl_branch where clientid = c_clientid and countryid = b_countryid and branchid = s_branchid and countryname = 'ireland';
select siteaddress, clientid, clientname, countryname, countryid from tbl_client, tbl_country, tbl_site, tbl_branch where clientid = c_clientid and countryid = b_countryid and branchid = s_branchid and countryname != 'ireland';
SELECT * FROM TBL_COUNTRY;
SELECT BRANCHID, BRANCHNAME, COUNTRYID, COUNTRYNAME FROM TBL_COUNTRY, TBL_BRANCH WHERE COUNTRYID = B_COUNTRYID;
select branchid, branchname, countryid, countryname from tbl_country left outer join tbl_branch on countryid = b_countryid;
select clientid, clientname, siteaddress, startdate from tbl_client, tbl_site where clientid = C_ClientID;
select clientid, clientname, siteaddress, startdate from tbl_client left outer join tbl_site on clientid = c_clientid;
select branchid, branchname, siteaddress, startdate from tbl_branch, tbl_site where branchid = s_branchid;
select branchid, branchname, siteaddress, startdate from tbl_branch left outer join tbl_site on branchid = S_BranchID;
insert into tbl_country (countryid, countryname, countrycapital);
insert into tbl_country (countryid, countryname, countrycapital) values (621, 'Canada','Ottawa');
insert into tbl_country (countryid, countryname, countrycapital) values (622, 'Afganistan', 'Kabul');
insert into tbl_country (countryid, countryname, countrycapital) values (478, 'Bulgaria', 'Sophia');
insert into tbl_country (countryid, countryname, countrycapital) values (719, 'Brazil', 'Brazilia');
insert into tbl_country (countryid, countryname, countrycapital) values (661, 'Belarus', 'Minsk');
insert into tbl_client values (48921, 'clodagh power', 'kilkenny road, kilkenny' ,' clpower@wit.ie', 5552938488, 201273930, 'WIT', null, 'EDUCATION', null, null, null, null, 'Individual');
insert into tbl_client values (48922, 'dean scott', ' main road, castlebar' , ' dscott@yahoo.com', 5552972998, 543273930, 'ENGIECHEM', null, 'SCIENCE', null, null, null, null, 'Individual');
insert into tbl_client values (48923, 'fergus wesley', ' mount cross, cavan', 'fwesley@gmail.com', 5552938488, 569273930, 'WESCROSS', null, 'RESEARCH', null, null, null, null, 'Individual');
INSERT INTO TBL_SITE VALUES ('18-06-13','CORK ROAD, WATERFORD','18-07-13', 111, 454, NULL, 48921);
select * from tbl_site;
INSERT INTO TBL_SITE VALUES ('20-06-13', 'THE CROSS, LONDON', '20-07-13', 222, 121, NULL, 48922);
INSERT INTO TBL_SITE VALUES ('25-06-13','OPEN AVENUE, BRUSSELS','25-07-13', 333, NULL, 777, 48923);
UPDATE TBL_CLIENT SET CLIENTEMAIL = 'dscott@gmail.com' WHERE CLIENTID = 48922;
DELETE FROM TBL_CLIENT WHERE CLIENTID = 48923;
update tbl_country set countrycapital = 'Stockholm' where countryname ='Sweden';