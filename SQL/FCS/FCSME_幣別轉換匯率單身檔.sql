--FCSME_幣別轉換匯率單身檔
SELECT
  ,ME001 AS "來源幣別"
  ,ME002 AS "會計年度"
  ,ME003 AS "期別"
  ,ME004 AS "現時匯率"
  ,ME005 AS "平均匯率"
  ,ME011 AS "歷史匯率"
  ,ME012 AS "轉換幣別"
  ,ME013 AS "備註"

FROM FCSME
