--MTPTE_多角貿易拋轉紀錄檔
SELECT
  ,TE001 AS "單別"
  ,TE002 AS "單號"
  ,CASE 
   WHEN '1' THEN N'採購'
   WHEN '2' THEN N'訂單'
   WHEN '3' THEN N'進貨'
   WHEN '4' THEN N'銷貨'
   WHEN '5' THEN N'進退'
   WHEN '6' THEN N'銷退'
   WHEN '7' THEN N'應付'
   WHEN '8' THEN N'結帳'
   WHEN '9' THEN N'採購變更'
   WHEN 'A' THEN N'訂單變更'
   ELSE ""
   END AS "型態"
  ,TE004 AS "下游廠商"
  ,TE005 AS "產生日期"
  ,TE006 AS "序號"
  ,TE007 AS "新增"
  ,TE008 AS "確認"
  ,TE009 AS "變更日期"
  ,TE010 AS "備註"

FROM MTPTE
