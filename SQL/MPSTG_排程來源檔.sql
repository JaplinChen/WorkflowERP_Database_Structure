--MPSTG_排程來源檔
SELECT
  ,TG001 AS "計劃批號"
  ,TG002 AS "優先順序"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'銷售預測'
   WHEN '3' THEN N'獨立需求'
   ELSE ""
   END AS "需求來源"
  ,TG004 AS "來源單別"
  ,TG005 AS "來源單號"
  ,TG006 AS "來源序號"
  ,TG007 AS "品號"
  ,TG008 AS "需求數量"
  ,TG009 AS "單位"
  ,TG010 AS "預交日期"
  ,TG011 AS "庫存單位需求數量"
  ,TG012 AS "最晚開工日"
  ,TG013 AS "預計開工日"
  ,TG014 AS "預計完工日"
  ,TG015 AS "生產天數"
  ,TG016 AS "客戶簡稱"
  ,TG017 AS "備註"
  ,TG018 AS "狀態碼"
  ,TG024 AS "訂單需求量"
  ,TG025 AS "預估片數"
  ,TG026 AS "生產片數"

FROM MPSTG
