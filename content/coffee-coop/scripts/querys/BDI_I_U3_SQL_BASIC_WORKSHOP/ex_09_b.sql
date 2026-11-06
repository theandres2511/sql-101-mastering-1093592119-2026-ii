-- Exercise 09 - b
-- Quality analyses outside the accepted moisture range

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisturepct,
    T1.analyst_name AS analyst,
    T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.analysis_id LIKE 'QA-20260930-%'
AND T1.moisture_pct NOT BETWEEN 10 AND 12;
/*
      analysis      |      delivery       | moisturepct |      analyst       |                          observations
--------------------+---------------------+-------------+--------------------+-----------------------------------------------------------------
 QA-20260930-000026 | DLV-20260930-000005 |       12.19 | Wilson Galvis      |
 QA-20260930-000018 | DLV-20260930-000006 |       17.24 | Nicolßs Serrano    | CafÚ con humedad alta, requiere mßs secado.
 QA-20260930-000023 | DLV-20260930-000046 |       12.23 | Alejandra Torres   | CafÚ de buena presentaci¾n, sin olores extra±os.
 QA-20260930-000012 | DLV-20260930-000057 |       12.16 | Guillermo Acevedo  |
 QA-20260930-000022 | DLV-20260930-000070 |       12.95 | Santiago Rojas     | CafÚ con humedad alta, requiere mßs secado.
 QA-20260930-000025 | DLV-20260930-000083 |       16.00 | Germßn Pe±a        |
 QA-20260930-000078 | DLV-20260930-000093 |       12.01 | Heriberto Galvis   |
 QA-20260930-000045 | DLV-20260930-000104 |       12.11 | Ruth PolanÝa       |
 QA-20260930-000069 | DLV-20260930-000109 |       15.30 | EfraÝn Betancur    |
 QA-20260930-000082 | DLV-20260930-000111 |       12.38 | Sara Sßnchez       |
 (40 filas)
 */