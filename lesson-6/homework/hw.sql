1-SELECT DISTINCT LEAST(col1, col2) AS col1, GREATEST(col1, col2) AS col2 FROM InputTbl;
WITH Sorted AS (
  SELECT CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
         CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
  FROM InputTbl
)
SELECT DISTINCT * FROM Sorted;
2-SELECT * FROM TestMultipleZero WHERE COALESCE(A,0) + COALESCE(B,0) + COALESCE(C,0) + COALESCE(D,0) <> 0;
3-SELECT * FROM section1 WHERE id % 2 = 1;
4-SELECT * FROM section1 ORDER BY id LIMIT 1;
5-SELECT * FROM section1 ORDER BY id DESC LIMIT 1;
6-SELECT * FROM section1 WHERE name LIKE 'b%';
7-SELECT * FROM ProductCodes WHERE Code LIKE '%\_%' ESCAPE '\';
