--DSCLB_多國語言對照檔
SELECT
  ,CASE 
   WHEN '1' THEN N'鼎新預設'
   WHEN '2' THEN N'客製化'
   WHEN '3' THEN N'客戶自訂'
   ELSE ""
   END AS "類別"
  ,LB002 AS "CLASSID"
  ,LB003 AS "物件名稱"
  ,LB004 AS "擁有者"
  ,LB005 AS "屬性"
  ,LB006 AS "屬性值"
  ,LB007 AS "初始值"
  ,LB008 AS "繁體中文"
  ,LB009 AS "簡體中文"
  ,LB010 AS "英文"
  ,LB011 AS "越南文"
  ,LB012 AS "馬來文"
  ,LB013 AS "泰文值"
  ,LB014 AS "保留欄位"
  ,LB015 AS "保留欄位"
  ,LB016 AS "保留欄位"
  ,LB017 AS "保留欄位"
  ,LB018 AS "保留欄位"
  ,LB019 AS "版本"
  ,LB020 AS "備註"

FROM DSCLB
