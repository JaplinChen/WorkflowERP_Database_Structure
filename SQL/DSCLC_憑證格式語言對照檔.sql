--DSCLC_憑證格式語言對照檔
SELECT
  ,CASE 
   WHEN '1' THEN N'鼎新預設'
   WHEN '2' THEN N'客製化'
   WHEN '3' THEN N'客戶自訂'
   ELSE ""
   END AS "類別"
  ,LC002 AS "CLASSID"
  ,LC003 AS "物件名稱"
  ,LC004 AS "擁有者"
  ,LC005 AS "屬性"
  ,LC006 AS "屬性值"
  ,LC007 AS "初始值"
  ,LC008 AS "繁體"
  ,LC009 AS "簡體"
  ,LC010 AS "英文"
  ,LC011 AS "越南文"
  ,LC012 AS "馬來文"
  ,LC013 AS "泰文值"
  ,LC014 AS "保留欄位"
  ,LC015 AS "保留欄位"
  ,LC016 AS "保留欄位"
  ,LC017 AS "保留欄位"
  ,LC018 AS "保留欄位"
  ,LC019 AS "版本"
  ,LC020 AS "備註"

FROM DSCLC
