--ADMMD_欄位資料
SELECT
  ,MD001 AS "檔案代碼"
  ,MD002 AS "序號"
  ,MD003 AS "欄位編號"
  ,MD004 AS "欄位名稱"
  ,CASE 
   WHEN 'C' THEN N'Char'
   WHEN 'N' THEN N'Numeric'
   WHEN 'V' THEN N'Varchar'
   WHEN 'D' THEN N'Datetime'
   ELSE ""
   END AS "型態"
  ,MD006 AS "長度"
  ,MD007 AS "欄位說明"
  ,MD008 AS "實體型態"
  ,CASE 
   WHEN '1' THEN N'通用'
   WHEN '2' THEN N'基本資料'
   WHEN '3' THEN N'地址資料'
   WHEN '4' THEN N'交易資料(一)'
   WHEN '5' THEN N'交易資料(二)'
   WHEN '6' THEN N'國外資料'
   WHEN '7' THEN N'倉管'
   WHEN '8' THEN N'採購'
   WHEN '9' THEN N'業務'
   WHEN 'A' THEN N'會計'
   WHEN 'B' THEN N'SHIPPING'
   WHEN 'C' THEN N'生管'
   WHEN 'D' THEN N'品管'
   ELSE ""
   END AS "欄位類別"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'CheckBox'
   WHEN '3' THEN N'ComboBox'
   ELSE ""
   END AS "欄位UI"
  ,MD011 AS "欄位對應值"

FROM ADMMD
