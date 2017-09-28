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








