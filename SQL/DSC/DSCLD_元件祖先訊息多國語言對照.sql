--DSCLD_元件祖先訊息多國語言對照
SELECT
  ,CASE 
   WHEN '1' THEN N'鼎新預設'
   WHEN '2' THEN N'客製化'
   WHEN '3' THEN N'客戶自訂字詞'
   WHEN '4' THEN N'客戶自訂語系'
   ELSE ""
   END AS "類別"
  ,LD002 AS "CLASSID"
  ,LD003 AS "物件名稱"
  ,LD004 AS "繁體"
  ,LD005 AS "簡體"
  ,LD006 AS "英文"
  ,LD007 AS "越南文"
  ,LD008 AS "馬來文"
  ,LD009 AS "泰文值"
  ,LD010 AS "保留欄位"
  ,LD011 AS "保留欄位"
  ,LD012 AS "保留欄位"
  ,LD013 AS "保留欄位"
  ,LD014 AS "保留欄位"
  ,LD015 AS "版本"
  ,LD016 AS "備註"

FROM DSCLD
