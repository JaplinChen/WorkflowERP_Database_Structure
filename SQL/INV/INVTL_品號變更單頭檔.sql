--INVTL_品號變更單頭檔
SELECT
  ,TL001 AS "品號"
  ,TL002 AS "原品名"
  ,TL003 AS "原規格"
  ,TL004 AS "變更版次"
  ,TL005 AS "變更日期"
  ,TL006 AS "刪除品號"
  ,TL007 AS "新品名"
  ,TL008 AS "新規格"
  ,TL009 AS "修改者"
  ,TL010 AS "備註"
  ,CASE 
   WHEN '0' THEN N'通用'
   WHEN '1' THEN N'全部'
   WHEN '2' THEN N'基本資料'
   WHEN '7' THEN N'倉管'
   WHEN '8' THEN N'採購'
   WHEN '9' THEN N'業務'
   WHEN 'A' THEN N'會計'
   WHEN 'B' THEN N'SHIPPING'
   WHEN 'C' THEN N'生管'
   WHEN 'D' THEN N'品管'
   ELSE ""
   END AS "修改欄位類別"
  ,TL012 AS "確認者"
  ,TL013 AS "確認日期"
  ,TL014 AS "確認碼"
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
   END AS "簽核狀態"
  ,TL016 AS "列印次數"
  ,TL017 AS "傳送次數"
  ,TL023 AS "原版次"
  ,TL200 AS "­原設變碼"
  ,TL201 AS "新設變碼"

FROM INVTL
