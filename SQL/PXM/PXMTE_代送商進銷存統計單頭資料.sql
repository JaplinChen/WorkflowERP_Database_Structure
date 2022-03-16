--PXMTE_代送商進銷存統計單頭資料
SELECT
  ,TE001 AS "庫存年月"
  ,TE002 AS "代送商代號"
  ,TE003 AS "備註"
  ,TE004 AS "銷貨單別"
  ,TE005 AS "銷貨單號"
  ,TE006 AS "銷退單別"
  ,TE007 AS "銷退單號"
  ,TE008 AS "回籠單別"
  ,TE009 AS "回籠單號"
  ,TE010 AS "確認碼"
  ,TE011 AS "確認者"
  ,TE012 AS "確認日期"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"
  ,TE014 AS "期初存量合計"
  ,TE015 AS "公教銷貨數量合計"
  ,TE016 AS "盤點數量合計"
  ,TE017 AS "調撥數量合計"
  ,TE018 AS "公教銷退數量合計"
  ,TE019 AS "自結數量合計"
  ,TE020 AS "回籠訂單數量合計"
  ,TE021 AS "期末存量合計"

FROM PXMTE
