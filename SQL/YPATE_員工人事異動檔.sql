--YPATE_員工人事異動檔
SELECT
  ,TE001 AS "員工編號"
  ,TE002 AS "異動日期"
  ,TE003 AS "異動項目"
  ,TE004 AS "異動前"
  ,TE005 AS "異動後"
  ,TE006 AS "備註"
  ,TE007 AS "異動項目名稱"
  ,TE008 AS "異動前名稱"
  ,TE009 AS "異動後名稱"
  ,TE010 AS "確認碼"
  ,TE011 AS "確認日期"
  ,TE012 AS "確認者"
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

FROM YPATE
