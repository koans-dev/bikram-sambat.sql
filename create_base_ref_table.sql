/*##############################################*/
/*##### BIKRAM SAMBAT DATES REFERENCE TABLE ####*/
/*##############################################*/


/*Creating daysInmonth table for year 2000 to 2090 */ 

DROP TABLE IF EXISTS daysInmonth;


CREATE TABLE daysInmonth (
		nyear INT
		,nfirst_month INT
		,nsecond_month INT
		,nthird_month INT
		,nfourth_month INT
		,nfifth_month INT
		,nsixth_month INT
		,nseventh_month INT
		,neighth_month INT
		,nninth_month INT
		,ntenth_month INT
		,neleventh_month INT
		,ntwelfth_month INT
		);


------ Adding days in 12 month each nepali year-----------
INSERT INTO daysInmonth
VALUES
	(2000 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2001 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2002 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2003 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2004 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2005 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2006 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2007 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2008 ,31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31),
	(2009 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2010 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2011 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2012 ,31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
	(2013 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2014 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2015 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2016 ,31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
	(2017 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2018 ,31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2019 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2020 ,31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
	(2021 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2022 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
	(2023 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2024 ,31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
	(2025 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2026 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2027 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2028 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2029 ,31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30),
	(2030 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2031 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2032 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2033 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2034 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2035 ,30, 32, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31),
	(2036 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2037 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2038 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2039 ,31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
	(2040 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2041 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2042 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2043 ,31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
	(2044 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2045 ,31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2046 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2047 ,31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
	(2048 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2049 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
	(2050 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2051 ,31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
	(2052 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2053 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
	(2054 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2055 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2056 ,31, 31, 32, 31, 32, 30, 30, 29, 30, 29, 30, 30),
	(2057 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2058 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2059 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2060 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2061 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2062 ,30, 32, 31, 32, 31, 31, 29, 30, 29, 30, 29, 31),
	(2063 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2064 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2065 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2066 ,31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 29, 31),
	(2067 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2068 ,31, 31, 32, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2069 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2070 ,31, 31, 31, 32, 31, 31, 29, 30, 30, 29, 30, 30),
	(2071 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2072 ,31, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30),
	(2073 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 31),
	(2074 ,31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
	(2075 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2076 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
	(2077 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 30, 29, 31),
	(2078 ,31, 31, 31, 32, 31, 31, 30, 29, 30, 29, 30, 30),
	(2079 ,31, 31, 32, 31, 31, 31, 30, 29, 30, 29, 30, 30),
	(2080 ,31, 32, 31, 32, 31, 30, 30, 30, 29, 29, 30, 30),
	(2081 ,31, 31, 32, 32, 31, 30, 30, 30, 29, 30, 30, 30),
	(2082 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
	(2083 ,31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30),
	(2084 ,31, 31, 32, 31, 31, 30, 30, 30, 29, 30, 30, 30),
	(2085 ,31, 32, 31, 32, 30, 31, 30, 30, 29, 30, 30, 30),
	(2086 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
	(2087 ,31, 31, 32, 31, 31, 31, 30, 30, 29, 30, 30, 30),
	(2088 ,30, 31, 32, 32, 30, 31, 30, 30, 29, 30, 30, 30),
	(2089 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30),
	(2090 ,30, 32, 31, 32, 31, 30, 30, 30, 29, 30, 30, 30);

	ALTER TABLE daysInmonth OWNER TO full_access;


/*#######################################*/
/*##### CALENDAR REFERENCE TABLE #####*/
/*#######################################*/

DROP TABLE IF EXISTS calendar;

CREATE TABLE calendar AS (
	WITH tmp AS(
	 SELECT nyear, 1::INT AS nmonth, nfirst_month AS nday FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 2, nsecond_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 3, nthird_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 4, nfourth_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 5, nfifth_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 6, nsixth_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 7, nseventh_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 8, neighth_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 9, nninth_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 10, ntenth_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 11, neleventh_month FROM daysInmonth
		
		UNION ALL
		
		SELECT nyear, 12, ntwelfth_month FROM daysInmonth

) SELECT
	'1943-04-14'::DATE + ROW_NUMBER() OVER(
	ORDER BY
		nyear,
		nmonth,
		nday
	)::INT - 1 AS gregorian,
	nyear || '-' || LPAD(
		nmonth::TEXT,
		2,
		'0'
	)|| '-' ||(
		LPAD(
			nday::TEXT,
			2,
			'0'
		)
	) AS bikram_sambat,
		CASE	
			WHEN nyear=2000 THEN '२०००'
			WHEN nyear=2001 THEN '२००१'
			WHEN nyear=2002 THEN '२००२'
			WHEN nyear=2003 THEN '२००३'
			WHEN nyear=2004 THEN '२००४'
			WHEN nyear=2005 THEN '२००५'
			WHEN nyear=2006 THEN '२००६'
			WHEN nyear=2007 THEN '२००७'
			WHEN nyear=2008 THEN '२००८'
			WHEN nyear=2009 THEN '२००९'
			WHEN nyear=2010 THEN '२०१०'
			WHEN nyear=2011 THEN '२०११'
			WHEN nyear=2012 THEN '२०१२'
			WHEN nyear=2013 THEN '२०१३'
			WHEN nyear=2014 THEN '२०१४'
			WHEN nyear=2015 THEN '२०१५'
			WHEN nyear=2016 THEN '२०१६'
			WHEN nyear=2017 THEN '२०१७'
			WHEN nyear=2018 THEN '२०१८'
			WHEN nyear=2019 THEN '२०१९'
			WHEN nyear=2020 THEN '२०२०'
			WHEN nyear=2021 THEN '२०२१'
			WHEN nyear=2022 THEN '२०२२'
			WHEN nyear=2023 THEN '२०२३'
			WHEN nyear=2024 THEN '२०२४'
			WHEN nyear=2025 THEN '२०२५'
			WHEN nyear=2026 THEN '२०२६'
			WHEN nyear=2027 THEN '२०२७'
			WHEN nyear=2028 THEN '२०२८'
			WHEN nyear=2029 THEN '२०२९'
			WHEN nyear=2030 THEN '२०३०'
			WHEN nyear=2031 THEN '२०३१'
			WHEN nyear=2032 THEN '२०३२'
			WHEN nyear=2033 THEN '२०३३'
			WHEN nyear=2034 THEN '२०३४'
			WHEN nyear=2035 THEN '२०३५'
			WHEN nyear=2036 THEN '२०३६'
			WHEN nyear=2037 THEN '२०३७'
			WHEN nyear=2038 THEN '२०३८'
			WHEN nyear=2039 THEN '२०३९'
			WHEN nyear=2040 THEN '२०४०'
			WHEN nyear=2041 THEN '२०४१'
			WHEN nyear=2042 THEN '२०४२'
			WHEN nyear=2043 THEN '२०४३'
			WHEN nyear=2044 THEN '२०४४'
			WHEN nyear=2045 THEN '२०४५'
			WHEN nyear=2046 THEN '२०४६'
			WHEN nyear=2047 THEN '२०४७'
			WHEN nyear=2048 THEN '२०४८'
			WHEN nyear=2049 THEN '२०४९'
			WHEN nyear=2050 THEN '२०५०'
			WHEN nyear=2051 THEN '२०५१'
			WHEN nyear=2052 THEN '२०५२'
			WHEN nyear=2053 THEN '२०५३'
			WHEN nyear=2054 THEN '२०५४'
			WHEN nyear=2055 THEN '२०५५'
			WHEN nyear=2056 THEN '२०५६'
			WHEN nyear=2057 THEN '२०५७'
			WHEN nyear=2058 THEN '२०५८'
			WHEN nyear=2059 THEN '२०५९'
			WHEN nyear=2060 THEN '२०६०'
			WHEN nyear=2061 THEN '२०६१'
			WHEN nyear=2062 THEN '२०६२'
			WHEN nyear=2063 THEN '२०६३'
			WHEN nyear=2064 THEN '२०६४'
			WHEN nyear=2065 THEN '२०६५'
			WHEN nyear=2066 THEN '२०६६'
			WHEN nyear=2067 THEN '२०६७'
			WHEN nyear=2068 THEN '२०६८'
			WHEN nyear=2069 THEN '२०६९'
			WHEN nyear=2070 THEN '२०७०'
			WHEN nyear=2071 THEN '२०७१'
			WHEN nyear=2072 THEN '२०७२'
			WHEN nyear=2073 THEN '२०७३'
			WHEN nyear=2074 THEN '२०७४'
			WHEN nyear=2075 THEN '२०७५'
			WHEN nyear=2076 THEN '२०७६'
			WHEN nyear=2077 THEN '२०७७'
			WHEN nyear=2078 THEN '२०७८'
			WHEN nyear=2079 THEN '२०७९'
			WHEN nyear=2080 THEN '२०८०'
			WHEN nyear=2081 THEN '२०८१'
			WHEN nyear=2082 THEN '२०८२'
			WHEN nyear=2083 THEN '२०८३'
			WHEN nyear=2084 THEN '२०८४'
			WHEN nyear=2085 THEN '२०८५'
			WHEN nyear=2086 THEN '२०८६'
			WHEN nyear=2087 THEN '२०८७'
			WHEN nyear=2088 THEN '२०८८'
			WHEN nyear=2089 THEN '२०८९'
			WHEN nyear=2090 THEN '२०९०'
		ELSE nyear ::TEXT
		END
	
	|| '-' || 
		CASE
			WHEN nmonth = '1' THEN 'वैशाख'
			WHEN nmonth = '2' THEN 'जेष्ठ'
			WHEN nmonth = '3' THEN 'आषाढ़'
			WHEN nmonth = '4' THEN 'साउन'
			WHEN nmonth = '5' THEN 'भदौ'
			WHEN nmonth = '6' THEN 'असोज'
			WHEN nmonth = '7' THEN 'कात्तिक'
			WHEN nmonth = '8' THEN 'मंसिर'
			WHEN nmonth = '9' THEN 'पुष'
			WHEN nmonth = '10' THEN 'माघ'
			WHEN nmonth = '11' THEN 'फागुन'
			WHEN nmonth = '12' THEN 'चैत'
			ELSE nmonth:: TEXT
	END || '-' ||(
		CASE
			WHEN nday = 1 THEN '१'
			WHEN nday = 2 THEN '२'
			WHEN nday = 3 THEN '३'
			WHEN nday = 4 THEN '४'
			WHEN nday = 5 THEN '५'
			WHEN nday = 6 THEN '६'
			WHEN nday = 7 THEN '७'
			WHEN nday = 8 THEN '८'
			WHEN nday = 9 THEN '९'
			WHEN nday = 10 THEN '१०'
			WHEN nday = 11 THEN '११'
			WHEN nday = 12 THEN '१२'
			WHEN nday = 13 THEN '१३'
			WHEN nday = 14 THEN '१४'
			WHEN nday = 15 THEN '१५'
			WHEN nday = 16 THEN '१६'
			WHEN nday = 17 THEN '१७'
			WHEN nday = 18 THEN '१८'
			WHEN nday = 19 THEN '१९'
			WHEN nday = 20 THEN '२०'
			WHEN nday = 21 THEN '२१'
			WHEN nday = 22 THEN '२२'
			WHEN nday = 23 THEN '२३'
			WHEN nday = 24 THEN '२४'
			WHEN nday = 25 THEN '२५'
			WHEN nday = 26 THEN '२६'
			WHEN nday = 27 THEN '२७'
			WHEN nday = 28 THEN '२८'
			WHEN nday = 29 THEN '२९'
			WHEN nday = 30 THEN '३०'
			WHEN nday = 31 THEN '३१'
			WHEN nday = 32 THEN '३२'
			ELSE nday :: TEXT
		END
	) AS bikram_sambat_ne
FROM
	(
		SELECT
			nyear,
			nmonth,
			GENERATE_SERIES(
				1,
				nday
			) AS nday
		FROM
			tmp
	) x
	);

DROP INDEX IF EXISTS gregorian_date_uidx;

CREATE UNIQUE INDEX gregorian_date_uidx ON calendar (gregorian);

ALTER TABLE  calendar OWNER TO full_access;

/*cleaning of table */ 

DROP TABLE daysInmonth;

