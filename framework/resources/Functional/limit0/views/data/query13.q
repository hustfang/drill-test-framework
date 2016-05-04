create or replace view v13_limit0 as select cast(pageRank as int) pageRank, cast(pageURL as varchar(100)) pageURL, cast(avgDuration as integer) avgDuration from `dfs/parquet/rankings`;
create or replace view v13_2_limit0 as select cast(sourceIP as char(15)) sourceIP,cast(destinationURL as character varying(100)) destinationURL,cast(visitDate as date) visitDate,cast(adRevenue as float) adRevenue,cast(userAgent as varchar(61)) userAgent,cast(countryCode as char(3)) countryCode,cast(languageCode as varchar(6)) languageCode,cast(searchWord as varchar(23)) searchWord,cast(duration as int) duration from `dfs/parquet/uservisits`;
select v13_limit0.pageRank, v13_2_limit0.searchWord from v13_limit0 inner join v13_2_limit0 on v13_limit0.pageURL = v13_2_limit0.destinationURL;
drop view v13_limit0;
drop view v13_2_limit0;
