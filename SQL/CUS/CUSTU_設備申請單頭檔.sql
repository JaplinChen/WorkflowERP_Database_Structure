--CUSTU_設備申請單頭檔
SELECT
  ,TU001 AS "設備申請單別"
  ,TU002 AS "設備申請單號"
  ,TU003 AS "設備申請編號"
  ,TU004 AS "申請日期"
  ,TU005 AS "單據日期"
  ,TU006 AS "收貨人"
  ,TU007 AS "申請人員"
  ,TU008 AS "電話"
  ,TU009 AS "預計進口日期"
  ,TU010 AS "預計到港日期"
  ,TU011 AS "免稅證明編號"
  ,TU012 AS "預報關單號"
  ,TU013 AS "有效期限"
  ,TU014 AS "狀態"
  ,TU015 AS "備註"
  ,TU016 AS "列印次數"
  ,TU017 AS "確認者"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不運行電子簽核'
   ELSE ""
   END AS "簽核狀態碼"
  ,TU019 AS "傳送次數"

FROM CUSTU
