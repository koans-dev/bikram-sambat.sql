/*
 * Fiscal ref table build script 
 * 
 * */
DROP TABLE
IF EXISTS bikram_sambat_ref_tbl;
	SELECT *
	INTO bikram_sambat_ref_tbl
	FROM (
		WITH fiscal_yr_tbl AS (
				SELECT ROW_NUMBER() OVER (
						ORDER BY gregorian ASC
						) AS rowNumber
					,gregorian AS start_date_ad
					,PUBLIC.get_bikram_date((gregorian - INTERVAL '1 DAY')::DATE) AS end_date_bs
					,(gregorian - INTERVAL '1 DAY')::DATE AS end_date_ad
					,bikram_sambat
				FROM calendar
				WHERE bikram_sambat LIKE '%-04-01%'
				)
		SELECT fiscal_yr_tbl.start_date_ad
			,fiscal_yr_tbl.bikram_sambat AS start_date_bs
			,fiscal_yr_tbl_next.end_date_ad
			,fiscal_yr_tbl_next.end_date_bs
			,left(fiscal_yr_tbl.bikram_sambat, 4)::INT fy_start_yr_bs
			,left(fiscal_yr_tbl_next.end_date_bs, 4)::INT AS fy_end_yr_bs
			,'fy'::TEXT AS intervalType
			,1 AS time_peroid
		FROM fiscal_yr_tbl
		LEFT JOIN fiscal_yr_tbl AS fiscal_yr_tbl_next ON fiscal_yr_tbl.rowNumber + 1 = fiscal_yr_tbl_next.rowNumber
		/*
 * Half-year ref table 
 * 
 * 
 */
		
		UNION ALL
		
		SELECT a.gregorian AS start_date_ad
			,a.bikram_sambat AS start_date_bs
			,(b.gregorian - INTERVAL '1 DAY')::DATE AS end_date_ad
			,get_bikram_date((b.gregorian - INTERVAL '1 DAY')::DATE) AS end_date_bs
			,left(a.bikram_sambat, 4)::INT fy_start_yr_bs
			,left(b.bikram_sambat, 4)::INT + 1 fy_end_yr_bs
			,'hy'::TEXT AS intervalType
			,1 AS time_peroid
		FROM calendar AS a
		INNER JOIN calendar AS b ON (left(b.bikram_sambat, 4) = left(a.bikram_sambat, 4) AND b.bikram_sambat LIKE '%-10-01')
		WHERE a.bikram_sambat LIKE '%-04-01'
		
		UNION ALL
		
		SELECT a.gregorian AS start_date_ad
			,a.bikram_sambat AS start_date_bs
			,(b.gregorian - INTERVAL '1 DAY')::DATE AS end_date_ad
			,get_bikram_date((b.gregorian - INTERVAL '1 DAY')::DATE) AS end_date_bs
			,left(a.bikram_sambat, 4)::INT fy_start_yr_bs
			,left(b.bikram_sambat, 4)::INT fy_end_yr_bs
			,'hy'::TEXT AS intervalType
			,2 AS time_peroid
		FROM calendar AS a
		INNER JOIN calendar AS b ON (left(b.bikram_sambat, 4)::int  = left(a.bikram_sambat, 4)::int +1 AND b.bikram_sambat LIKE '%-04-01')
		WHERE a.bikram_sambat LIKE '%-10-01'
		/*
 *  Nepali quarterly ref table
 * 
 * 
 */
		-- 1st Quarter: Shawan, Bhadau, Ashoj, Kartik
		
		UNION ALL
		
		SELECT a.gregorian AS start_date_ad
			,a.bikram_sambat AS start_date_bs
			,(b.gregorian - INTERVAL '1 DAY')::DATE AS end_date_ad
			,get_bikram_date((b.gregorian - INTERVAL '1 DAY')::DATE) AS end_date_bs
			,left(a.bikram_sambat, 4)::INT fy_start_yr_bs
			,left(b.bikram_sambat, 4)::INT + 1 fy_end_yr_bs
			,'qy'::TEXT AS intervalType
			,1 AS time_peroid
		FROM calendar AS a
		INNER JOIN calendar AS b ON (left(b.bikram_sambat, 4) = left(a.bikram_sambat, 4) AND b.bikram_sambat LIKE '%-08-01')
		WHERE a.bikram_sambat LIKE '%-04-01'
		
		UNION ALL
		
		-- 2nd Quarter: Mangsir, Poush, Magh, Falgun
		SELECT a.gregorian AS start_date_ad
			,a.bikram_sambat AS start_date_bs
			,(b.gregorian - INTERVAL '1 DAY')::DATE AS end_date_ad
			,get_bikram_date((b.gregorian - INTERVAL '1 DAY')::DATE) AS end_date_bs
			,left(a.bikram_sambat, 4)::INT fy_start_yr_bs
			,left(b.bikram_sambat, 4)::INT + 1 fy_end_yr_bs
			,'qy'::TEXT AS intervalType
			,2 AS time_peroid
		FROM calendar AS a
		INNER JOIN calendar AS b ON (left(b.bikram_sambat, 4) = left(a.bikram_sambat, 4) AND b.bikram_sambat LIKE '%-12-01')
		WHERE a.bikram_sambat LIKE '%-08-01'
		
		UNION ALL
		
		--
		SELECT a.gregorian AS start_date_ad
			,a.bikram_sambat AS start_date_bs
			,(b.gregorian - INTERVAL '1 DAY')::DATE AS end_date_ad
			,get_bikram_date((b.gregorian - INTERVAL '1 DAY')::DATE) AS end_date_bs
			,left(a.bikram_sambat, 4)::INT fy_start_yr_bs
			,left(b.bikram_sambat, 4)::INT fy_end_yr_bs
			,'qy'::TEXT AS intervalType
			,3 AS time_peroid
		FROM calendar AS a
		INNER JOIN calendar AS b ON (left(b.bikram_sambat, 4)::INT - 1 = left(a.bikram_sambat, 4)::INT AND b.bikram_sambat LIKE '%-04-01')
		WHERE a.bikram_sambat LIKE '%-12-01'
		) AS x;
/*
 * Get time range for the fiscal year, fiscal-half yearly, fiscal-quarterly 
 * */

DROP FUNCTION
IF EXISTS get_bikram_sambat_date_range(DATE, TEXT);
	CREATE OR REPLACE FUNCTION get_bikram_sambat_date_range (
		curr_ref_date DATE
		,fiscal_interval_type TEXT
		)
	RETURNS TABLE (
			start_date DATE
			,end_date DATE
			,start_fiscal_yr INT
			,end_fiscal_yr INT
			,interval_division INT
			,interval_type TEXT
			) LANGUAGE plpgsql AS $$
DECLARE
BEGIN
	RETURN QUERY(
	SELECT start_date_ad, 
		   end_date_ad, 
		   fy_start_yr_bs, 
		   fy_end_yr_bs, 
		   time_peroid, 
		   intervaltype 
    FROM bikram_sambat_ref_tbl 
    WHERE end_date_ad >= curr_ref_date 
    AND intervaltype = fiscal_interval_type 
    ORDER BY end_date_ad ASC limit 1);
END;$$;

