/* to use this utility functions create_reference_table.sql should be run */

/*##############################################*/
/*##### get_bikram_month(DATE) #################*/
/*##############################################*/
/*

Usage :
SELECT get_bikram_month('2018-05-18'::date);
*/
DROP FUNCTION
IF EXISTS get_bikram_month(DATE);
	CREATE
		OR REPLACE FUNCTION get_bikram_month (edate DATE)
	RETURNS TEXT AS $$
SELECT substring(bikram_sambat FROM 0 FOR 8)
FROM calendar
WHERE gregorian = edate;$$
LANGUAGE 'sql';

ALTER FUNCTION get_bikram_month (DATE) OWNER TO full_access;

/*##############################################*/
/*##### get_bikram_month_ne(DATE) ##############*/
/*##############################################*/
/*

Usage :
SELECT get_bikram_month_ne('2018-05-18'::date);
*/
DROP FUNCTION
IF EXISTS get_bikram_month_ne(DATE);
	CREATE
		OR REPLACE FUNCTION get_bikram_month_ne (edate DATE)
	RETURNS TEXT AS $$
SELECT SPLIT_PART(bikram_sambat_ne, '-', 1) || '-' || SPLIT_PART(bikram_sambat_ne, '-', 2)
FROM calendar
WHERE gregorian = edate;$$
LANGUAGE 'sql';

ALTER FUNCTION get_bikram_month_ne (DATE) OWNER TO full_access;



/*##############################################*/
/*##### get_bikram_date(DATE) ##################*/
/*##############################################*/
/*

Usage :
SELECT get_bikram_date('2018-05-18'::date);
*/
DROP FUNCTION
IF EXISTS get_bikram_date(DATE);
	CREATE
		OR REPLACE FUNCTION get_bikram_date (edate DATE)
	RETURNS TEXT AS $$
SELECT bikram_sambat
FROM calendar
WHERE gregorian = edate;$$
LANGUAGE 'sql';

ALTER FUNCTION get_bikram_date (DATE) OWNER TO full_access;

/*##############################################*/
/*##### get_gregorian_date(DATE) ##################*/
/*##############################################*/
/*

Usage :
SELECT get_gregorian_date('2075-01-11');
*/
DROP FUNCTION
IF EXISTS get_gregorian_date(TEXT);
	CREATE
		OR REPLACE FUNCTION get_gregorian_date (bdate TEXT)
	RETURNS DATE AS $$
SELECT gregorian
FROM calendar
WHERE bikram_sambat = bdate;$$
LANGUAGE 'sql';

ALTER FUNCTION get_gregorian_date (TEXT) OWNER TO full_access;

/*##############################################*/
/*##### get_bikram_date_ne(DATE) ###############*/
/*##############################################*/
/*

Usage :
SELECT get_bikram_date_ne('2018-05-18'::date);
*/
DROP FUNCTION
IF EXISTS get_bikram_date_ne(DATE);
	CREATE
		OR REPLACE FUNCTION get_bikram_date_ne (edate DATE)
	RETURNS TEXT AS $$
SELECT bikram_sambat_ne FROM calendar
WHERE gregorian = edate;$$
LANGUAGE 'sql';

ALTER FUNCTION get_bikram_date_ne (DATE) OWNER TO full_access;

/*##############################################*/
/*##### get_nepali_start_date(DATE) ######*/
/*##############################################*/
/*

Usage :

SELECT get_nepali_start_date('2018-05-18'::date);

Use days interval to get the previous month.
Example : (CURRENT_DATE - ' - '31 days'::interval'::Date)
*/
DROP FUNCTION
IF EXISTS get_nepali_start_date(DATE);


CREATE OR REPLACE FUNCTION public.get_nepali_start_date(greg_date date)
 RETURNS date
 LANGUAGE sql
AS $function$

SELECT gregorian FROM calendar 
WHERE  bikram_sambat_ne 
LIKE '%' || get_bikram_month_ne(greg_date)::text || '%'  order by bikram_sambat ASC limit 1

;$function$;

ALTER FUNCTION get_nepali_start_date (DATE) OWNER TO full_access;

/*##############################################*/
/*##### get_nepali_end_date(DATE) ######*/
/*##############################################*/
/*
usage :
SELECT get_nepali_end_date('2018-05-18'::date);

Use days interval to get the previous month.
Example : (CURRENT_DATE - ' - '31 days'::interval'::Date)

*/
DROP FUNCTION
IF EXISTS get_nepali_end_date(DATE);



CREATE OR REPLACE FUNCTION public.get_nepali_end_date(greg_date date)
 RETURNS date
 LANGUAGE sql
AS $function$

SELECT gregorian FROM calendar 
WHERE  bikram_sambat_ne 
LIKE '%' || get_bikram_month_ne(greg_date)::text || '%'  order by bikram_sambat DESC limit 1

;$function$;

ALTER FUNCTION get_nepali_end_date (DATE) OWNER TO full_access;

/*##############################################*/
/*##### get_previous_bikram_month(DATE) #################*/
/*##############################################*/
/*

Usage :
SELECT get_previous_bikram_month('2018-05-18'::date, 2);
*/

DROP FUNCTION
IF EXISTS get_previous_bikram_month(DATE, NUMERIC);
CREATE OR REPLACE FUNCTION get_previous_bikram_month (edate DATE, months_ago NUMERIC ) RETURNS TEXT AS $$
DECLARE
res text;
cnt NUMERIC;
BEGIN
	cnt:= months_ago;
    res:= (select get_bikram_month((get_gregorian_date(get_bikram_month(edate) || '-01') - '1 day'::INTERVAL)::DATE));
   loop
   exit when cnt <= 1;
  cnt := cnt - 1;
 res := (select get_bikram_month((get_gregorian_date(res || '-01') - '1 day'::INTERVAL)::DATE));
 end loop;
  RETURN res;
END;$$
 LANGUAGE 'plpgsql';

ALTER FUNCTION get_previous_bikram_month (DATE, NUMERIC) OWNER TO full_access;

/*##############################################*/
/*##### get_bikram_month_in_roman(TEXT) #################*/
/*##############################################*/
/*

Usage :
SELECT get_bikram_month_in_roman('01');
*/
DROP FUNCTION
IF EXISTS get_bikram_month_in_roman(TEXT);
	CREATE
		OR REPLACE FUNCTION get_bikram_month_in_roman (nmonth TEXT)
	RETURNS TEXT AS $$
SELECT CASE
			WHEN nmonth = '01' THEN 'Baisakh'
			WHEN nmonth = '02' THEN 'Jestha'
			WHEN nmonth = '03' THEN 'Ashadh'
			WHEN nmonth = '04' THEN 'Shrawan'
			WHEN nmonth = '05' THEN 'Bhadra'
			WHEN nmonth = '06' THEN 'Asoj'
			WHEN nmonth = '07' THEN 'Kartik'
			WHEN nmonth = '08' THEN 'Mangsir'
			WHEN nmonth = '09' THEN 'Poush'
			WHEN nmonth = '10' THEN 'Magh'
			WHEN nmonth = '11' THEN 'Falgun'
			WHEN nmonth = '12' THEN 'Chaitra'
			ELSE nmonth:: TEXT
	END;$$
LANGUAGE 'sql';

ALTER FUNCTION get_bikram_month_in_roman (TEXT) OWNER TO full_access;

/*##############################################*/
/*##### get_bikram_date_D_Month(DATE) ##################*/
/*##############################################*/
/*

Usage :
SELECT get_bikram_date_D_Month('2018-05-18'::date);
*/
DROP FUNCTION
IF EXISTS get_bikram_date_D_Month(DATE);
	CREATE
		OR REPLACE FUNCTION get_bikram_date_D_Month (edate DATE)
	RETURNS TEXT AS $$
	
SELECT concat(LTRIM(SUBSTRING(bikram_sambat FROM 9 FOR 2), '0'), ' ', get_bikram_month_in_roman(SUBSTRING(bikram_sambat FROM 6 FOR 2)))
FROM calendar
WHERE gregorian = edate;$$
LANGUAGE 'sql';

ALTER FUNCTION get_bikram_date_D_Month (DATE) OWNER TO full_access;


