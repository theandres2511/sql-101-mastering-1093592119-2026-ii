-- Exercise 02 - b
-- Farmers in municipality 54518 without a registered farm

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518'
  AND T2.farm_id IS NULL
ORDER BY T1.last_name ;