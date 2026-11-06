-- Exercise 10 - c
-- Settlements without deductions and gross amount verification

SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.deductions_amount AS deductions_cop,
    T1.gross_amount AS gross_cop,
    T1.net_weight_kg * T1.price_per_kg_applied AS check_gross_cop
FROM pay.settlements AS T1
WHERE T1.settled_at >= '2026-09-30 00:00:00'
AND T1.settled_at < '2026-10-01 00:00:00'
AND T1.deductions_amount = 0;
/*
     settlement      |      delivery       | net_weight_kg | price_per_kg | deductions_cop | gross_cop  | check_gross_cop
---------------------+---------------------+---------------+--------------+----------------+------------+-----------------
 STL-20260930-000011 | DLV-20260927-000088 |        211.64 |     22841.00 |           0.00 | 4834069.24 |    4834069.2400
 STL-20260930-000018 | DLV-20260927-000097 |        216.32 |     21645.00 |           0.00 | 4682246.40 |    4682246.4000
 STL-20260930-000016 | DLV-20260928-000207 |        180.13 |     21779.00 |           0.00 | 3923051.27 |    3923051.2700
 STL-20260930-000038 | DLV-20260928-000241 |        247.93 |     21622.00 |           0.00 | 5360742.46 |    5360742.4600
 STL-20260930-000068 | DLV-20260928-000311 |        192.15 |     22592.00 |           0.00 | 4341052.80 |    4341052.8000
 STL-20260930-000033 | DLV-20260929-000007 |        183.79 |     22164.00 |           0.00 | 4073521.56 |    4073521.5600
 STL-20260930-000041 | DLV-20260929-000018 |        308.65 |     20455.00 |           0.00 | 6313435.75 |    6313435.7500
 STL-20260930-000067 | DLV-20260929-000046 |        211.99 |     22790.00 |           0.00 | 4831252.10 |    4831252.1000
 STL-20260930-000043 | DLV-20260929-000072 |         42.04 |     21902.00 |           0.00 |  920760.08 |     920760.0800
 STL-20260930-000001 | DLV-20260929-000080 |        138.86 |     22176.00 |           0.00 | 3079359.36 |    3079359.3600
 (37 filas)
 explicacion 
 lo que pasa es que las dos utilizan las mismas formula para calcular la cual es
  T1.net_weight_kg * T1.price_per_kg_applied
  y como no existen las deducciones el valor neto es igual que el valor bruto
  

*/