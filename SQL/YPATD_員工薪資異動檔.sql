--YPATD_員工薪資異動檔
SELECT
  ,TD001 AS "員工編號"
  ,TD002 AS "異動日期"
  ,TD003 AS "異動項目"
  ,TD004 AS "異動前金額"
  ,TD005 AS "異動後金額"
  ,TD006 AS "備註"
  ,TD007 AS "異動項目名稱"
  ,TD008 AS "確認碼"
  ,TD009 AS "確認日期"
  ,TD010 AS "確認者"
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

FROM YPATD
