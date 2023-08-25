-- Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
SELECT first_name,last_name FROM patients
WHERE weight >= 100 AND weight <= 120;

SELECT first_name, last_name
FROM patients
WHERE weight BETWEEN 100 AND 120;

--Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
UPDATE patients
SET allergies = 'NKA'
WHERE allergies IS NULL;

--Show first name and last name concatinated into one column to show their full name.
SELECT concat(first_name,' ',last_name) AS full_name
FROM patients;

--Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'
SELECT p.first_name,p.last_name,pr.province_name
FROM patients AS p 
JOIN province_names AS pr 
ON p.province_id = pr.province_id;