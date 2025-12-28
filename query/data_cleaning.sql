
-- add year column in hospital_bed table
ALTER TABLE hospital_beds
ADD COLUMN year INTEGER;

UPDATE hospital_beds
SET year = CAST(strftime('%Y', date) AS INTEGER)
-- create new table for hospital_bed
SELECT 
	year,
	state,
	sum(bed) as total_bed,
	CASE
		WHEN type = 'hospital_moh' THEN 'Public'
		WHEN type = 'special_medical_institution' THEN 'Public'
		WHEN type = 'hospital_non_moh' THEN 'Private'
	END AS 'category'
from hospital_beds
WHERE type != 'all'
GROUP BY year, state, category
ORDER BY state, year


-- add year column in hospital staff
ALTER TABLE hospital_beds
ADD COLUMN year INTEGER;

UPDATE hospital_beds
SET year = CAST(strftime('%Y', date) AS INTEGER)
-- cleaned table for staff
CREATE TABLE cleaned_staff AS
SELECT 
    year,
    state,
    staff_num
FROM healthcare_staff
WHERE (state != 'Malaysia' OR state IS NULL)
  AND LOWER(TRIM(role_type)) = 'all'
  AND year != 2014;
  
-- comment: staff data is only available for public hospitals.
-- comment: Keep private hospitals in the dataset to show completeness and avoid selection bias.

-- create hospital & staff table
CREATE TABLE hospital_and_staff as

SELECT 
    h.year,
    h.state,
	category,
    h.total_bed,
	CASE WHEN h.category = 'Public' THEN s.staff_num ELSE NULL END AS staff_num
FROM cleaned_hospital_beds h
LEFT JOIN cleaned_staff s
    ON h.year = s.year
   AND h.state = s.state

-- calculate and create bed-to-staff ratio table
CREATE TABLE bed_staff_ratio as

SELECT
	*,
	round((total_bed * 1.0 / staff_num), 2) as bed_to_staff_ratio
from hospital_and_staff
WHERE category = 'Public'
-- Bed-to-staff ratio is calculated for public hospitals only because staff data are unavailable for private hospitals.
