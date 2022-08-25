WITH t1 AS
  (SELECT name,
          YEAR
   FROM participation
   ORDER BY 1 ASC, 2 ASC),
     t2 AS
  (SELECT name,
          YEAR,
          LEAD(YEAR, 1) OVER (PARTITION BY name
                              ORDER BY YEAR) next_year
   FROM t1),
     t3 AS
  (SELECT name,
          YEAR,
          next_year,
          (next_year - YEAR) AS year_dif
   FROM t2),
     t4 AS
  (SELECT *
   FROM t3
   WHERE t3.year_dif IS NOT NULL
     AND t3.year_dif = 1)
SELECT name
FROM t4
GROUP BY name
HAVING SUM(t4.year_dif) >= 2;
