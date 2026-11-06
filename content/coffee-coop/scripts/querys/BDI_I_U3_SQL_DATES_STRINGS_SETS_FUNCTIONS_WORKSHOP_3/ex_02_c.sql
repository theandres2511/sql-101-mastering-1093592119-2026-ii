-- Exercise 02 - c
-- Farmer count and average age by municipality in Norte de Santander; average above 51
SELECT
    T1.municipality_name AS municipality,
    COUNT(T2.farmer_id) AS farmers_count,
    ROUND(AVG(DATE_PART('year', AGE(DATE '2026-09-30', T2.birth_date)))::NUMERIC, 2) AS avg_age_years
FROM geo.municipalities AS T1
INNER JOIN farm.farmers AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T1.department_code = '54'
GROUP BY T1.municipality_code, T1.municipality_name
HAVING AVG(DATE_PART('year', AGE(DATE '2026-09-30', T2.birth_date))) > 51
ORDER BY T1.municipality_name;
/*
   municipality   | farmers_count | avg_age_years
------------------+---------------+---------------
 Arboledas        |           235 |         51.49
 Bochalema        |           224 |         51.59
 Bucarasica       |           188 |         51.49
 Cáchira          |           206 |         51.73
 Cácota           |           222 |         51.78
 Chitagá          |           209 |         51.21
 El Carmen        |           218 |         52.60
 La Esperanza     |           199 |         51.28
 Mutiscua         |           216 |         51.86
 Puerto Santander |           194 |         51.79
 (13 filas)
*/