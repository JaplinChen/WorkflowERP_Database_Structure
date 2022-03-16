--BCHMF_保稅材料用量單頭檔
SELECT
  ,MF001 AS "主件品號"
  ,MF002 AS "標準批量"
  ,MF003 AS "保留欄位"
  ,MF004 AS "使用日期"
  ,MF005 AS "核準文號"
  ,MF006 AS "備註"
  ,CASE 
   WHEN '1' THEN N'系統轉入'
   WHEN '2' THEN N'自行輸入'
   WHEN '3' THEN N'轉入後修改'
   ELSE ""
   END AS "資料來源"
  ,MF008 AS "生效日期"
  ,MF009 AS "BOM編號"
  ,MF010 AS "BOM送審文號"
  ,MF011 AS "主件碼"

FROM BCHMF
