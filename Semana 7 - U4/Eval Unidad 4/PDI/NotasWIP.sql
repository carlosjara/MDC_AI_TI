-- Creacion de objetos
@file_create_tables
--insercion de datos 
@files_insert
--Check table rows
select * from information_schema."tables" where table_schema ='public';
select count(1) from "public"."typequality";
select count(1) from "public"."amesdbtemp";
select count(1) from "public"."saleproperty";
select count(1) from "public"."floordetail";
select count(1) from "public"."mssubclass";
select count(1) from "public"."mszoning";

--- Tranformaciones
select "1st Flr SF", "2nd Flr SF","Low Qual Fin SF",
	("1st Flr SF"+"2nd Flr SF"+"Low Qual Fin SF") as "Gr Liv Area"
	from "public"."amesdbtemp";
	
select * from "public"."floordetail" where PID = '903476090';

select sum(bedrooms) TotalBdrooms, 
	   sum("Full Bath") TotalFBath, 
	   sum("Half Bath") TotalHBath, 
	   	pid
	from "public"."floordetail" 
		 --where PID = '903476090'
group by pid