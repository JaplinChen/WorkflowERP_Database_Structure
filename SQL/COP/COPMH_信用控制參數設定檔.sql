--COPMH_信用控制參數設定檔
SELECT
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "訂單信用查核方式"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "銷貨信用查核方式"
  ,MH003 AS "LC收狀金額比率"
  ,MH004 AS "未兌現應收票據比率"
  ,MH005 AS "應收帳款比率"
  ,MH006 AS "未結帳銷貨金額比率"
  ,MH007 AS "未出貨訂單金額比率"
  ,MH008 AS "未歸還暫出金額比率"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "出貨通知信用查核方式"
  ,CASE 
   WHEN '1' THEN N'不檢查'
   WHEN '2' THEN N'警告'
   WHEN '3' THEN N'拒絕'
   ELSE ""
   END AS "暫出單信用查核方式"

FROM COPMH
