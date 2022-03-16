--APSTB_排程優先權維護單身檔
SELECT
  ,TB001 AS "計劃批號"
  ,TB002 AS "優先順序"
  ,CASE 
   WHEN '1' THEN N'訂單'
   WHEN '2' THEN N'銷售預測'
   WHEN '3' THEN N'獨立需求'
   WHEN '4' THEN N'製令'
   ELSE ""
   END AS "需求來源"
  ,TB004 AS "來源單別"
  ,TB005 AS "來源單號"
  ,TB006 AS "來源序號"
  ,TB007 AS "品號"
  ,TB008 AS "訂單數量"
  ,TB009 AS "已交數量"
  ,TB010 AS "需求數量"
  ,TB011 AS "單位"
  ,TB012 AS "預交日期"
  ,TB013 AS "庫存單位需求數量"
  ,TB015 AS "預計開工日"
  ,TB016 AS "預計完工日"
  ,TB017 AS "生產天數"
  ,TB018 AS "客戶代號"
  ,TB019 AS "客戶簡稱"
  ,TB020 AS "備註"
  ,TB021 AS "單據日期"
  ,TB022 AS "鎖定交期"
  ,CASE 
   WHEN 'Y' THEN N'已發放'
   WHEN 'N' THEN N'未發放'
   ELSE ""
   END AS "發放碼"
  ,TB024 AS "客戶單號"
  ,TB025 AS "製程代號"
  ,TB026 AS "被取替代品號"
  ,TB027 AS "被取替代製程"

FROM APSTB
