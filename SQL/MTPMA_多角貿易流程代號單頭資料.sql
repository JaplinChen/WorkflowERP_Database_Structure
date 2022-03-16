--MTPMA_多角貿易流程代號單頭資料
SELECT
  ,MA001 AS "流程代號"
  ,MA002 AS "流程名稱"
  ,CASE 
   WHEN '1' THEN N'全額申報'
   WHEN '2' THEN N'差額申報'
   WHEN '3' THEN N'不申報'
   ELSE ""
   END AS "營業額申報方式"
  ,MA004 AS "計價幣別"
  ,MA005 AS "來源主機IP"
  ,MA006 AS "來源公司"
  ,MA007 AS "來源資料庫"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'採購單'
   WHEN 'Z' THEN N'合併報表'
   ELSE ""
   END AS "性質"
  ,MA012 AS "對應客戶"
  ,MA014 AS "廠別"
  ,MA015 AS "庫別"
  ,MA016 AS "拋轉出口資料"

FROM MTPMA
