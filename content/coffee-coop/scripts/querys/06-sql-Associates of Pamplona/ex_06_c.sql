-- Exercise 06 - c
-- Farmers with inactive membership

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
AND T1.is_active = FALSE
ORDER BY T1.membership_date;
/*
  document  |    first_name    |     last_name      | membership_date
------------+------------------+--------------------+-----------------
 230971064  | Manuel           | Agudelo Jiménez    | 1997-03-29
 534023693  | Myriam           | Valencia Moreno    | 1998-11-03
 33787285   | Rubén            | Ramos Chamorro     | 1999-03-02
 1135293825 | Abelardo         | Pérez Castro       | 2003-06-19
 478755763  | Nicolás          | Rivera Duque       | 2003-08-11
 160538872  | Liliana          | Mosquera Uribe     | 2007-09-27
 223974138  | Rodrigo Nelson   | Cabrera Villamizar | 2009-05-02
 10424994   | Cristian         | Herrera Zuluaga    | 2010-04-28
 1015411133 | Santiago         | Bermúdez Ruiz      | 2010-11-30
 1090968710 | Ruth             | Rodríguez Pérez    | 2010-12-11
 (21 filas)
 */
 