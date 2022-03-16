--IDLTJ_NewCode申請單單頭資料檔
SELECT
  ,TJ001 AS "單別"
  ,TJ002 AS "單號"
  ,TJ003 AS "單據日期"
  ,TJ004 AS "客戶代號"
  ,TJ005 AS "業務人員"
  ,TJ006 AS "BODY代號"
  ,TJ007 AS "編碼原則"
  ,TJ009 AS "備註"
  ,TJ010 AS "確認碼"
  ,TJ011 AS "確認日期"
  ,TJ012 AS "確認者"
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
  ,TJ015 AS "列印次數"
  ,TJ016 AS "傳送次數"
  ,TJ018 AS "指定TapeOut日期"
  ,TJ019 AS "取消TapeOut日期"
  ,TJ020 AS "取消TapeOut時間"
  ,TJ021 AS "Body版本"

FROM IDLTJ
