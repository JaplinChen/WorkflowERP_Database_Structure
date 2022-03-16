--CMSMT_程式註記簽核檔
SELECT
  ,MT001 AS "程式代號"
  ,MT002 AS "註記代號"
  ,MT003 AS "簽核代號"
  ,MT004 AS "列印時修改註記"
  ,MT005 AS "列印時修改簽核"
  ,MT006 AS "憑證格式"
  ,MT007 AS "列印時選擇憑證格式"
  ,MT008 AS "每頁列印合計"
  ,MT009 AS "每頁列印註記"
  ,MT010 AS "每頁列印簽核"
  ,MT011 AS "列印製表條件"
  ,MT012 AS "列印製表人"
  ,CASE 
   WHEN 'I' THEN N'銀行買進匯率'
   WHEN 'O' THEN N'銀行賣出匯率'
   WHEN 'E' THEN N'報關買進匯率'
   WHEN 'W' THEN N'報關賣出匯率'
   ELSE ""
   END AS "匯率來源"

FROM CMSMT
