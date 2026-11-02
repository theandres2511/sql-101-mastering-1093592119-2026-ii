-- Exercise 05 - b
-- Collection points without registered phone

SELECT
    T1.point_name AS point,
    T1.phone_number AS phone_number
FROM buy.collection_points AS T1
WHERE T1.phone_number IS NULL
ORDER BY T1.point_name;
/*
             point              | phone_number
--------------------------------+--------------
 Punto de Compra Aipe 1         |
 Punto de Compra Anserma 1      |
 Punto de Compra Apía 2         |
 Punto de Compra Baraya 1       |
 Punto de Compra Bochalema 1    |
 Punto de Compra Bosconia 1     |
 Punto de Compra Cajibío 1      |
 Punto de Compra Cisneros 1     |
 Punto de Compra Coello 1       |
 Punto de Compra El Carmen 2    |
 (26 filas)
*/
