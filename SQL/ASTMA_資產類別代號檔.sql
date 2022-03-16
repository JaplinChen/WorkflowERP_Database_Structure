--ASTMA_資產類別代號檔
SELECT
  ,MA001 AS "資產類別代號"
  ,MA002 AS "資產類別名稱"
  ,MA003 AS "資產科目"
  ,MA004 AS "累計折舊科目"
  ,MA005 AS "折舊科目"
  ,CASE 
   WHEN '0' THEN N'不提折舊'
   WHEN '1' THEN N'平均法'
   WHEN '2' THEN N'定率遞減法'
   ELSE ""
   END AS "折舊方法"
  ,MA007 AS "耐用年限"
  ,MA008 AS "折畢續提"
  ,MA009 AS "折畢續提耐用年限"
  ,MA010 AS "累計減損科目"
  ,CASE 
   WHEN '1' THEN N'成本法'
   WHEN '2' THEN N'公平市價法'
   ELSE ""
   END AS "評價依據"

FROM ASTMA
