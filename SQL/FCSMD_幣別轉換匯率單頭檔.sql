--FCSMD_幣別轉換匯率單頭檔
SELECT
  ,MD001 AS "來源幣別"
  ,MD002 AS "幣別名稱"
  ,MD003 AS "會計年度"
  ,MD004 AS "備註"
  ,MD010 AS "轉換幣別"

FROM FCSMD
