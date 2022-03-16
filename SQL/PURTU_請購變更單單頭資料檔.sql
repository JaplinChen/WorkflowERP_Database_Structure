--PURTU_請購變更單單頭資料檔
SELECT
  ,TU001 AS "請購變更單別"
  ,TU002 AS "請購變更單號"
  ,TU003 AS "版次"
  ,TU004 AS "變更日期"
  ,TU005 AS "單據日期"
  ,TU006 AS "請購部門"
  ,TU007 AS "請購人員"
  ,TU008 AS "整張結案"
  ,TU009 AS "變更原因"
  ,CASE 
   WHEN '1' THEN N'MRP'
   WHEN '2' THEN N'LRP'
   WHEN '3' THEN N'再補貨建議表'
   WHEN '4' THEN N'BOM 自動請購'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "來源別"
  ,TU011 AS "廠別"
  ,TU012 AS "確認碼"
  ,TU013 AS "確認者"
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
  ,TU015 AS "列印次數"
  ,TU016 AS "傳送次數"
  ,TU017 AS "原請購日期"
  ,TU018 AS "新備註"
  ,TU019 AS "本幣金額合計"
  ,TU020 AS "預算部門"
  ,TU103 AS "原版次"
  ,TU106 AS "原請購部門"
  ,TU107 AS "原請購人員"
  ,TU108 AS "原備註"
  ,TU109 AS "原本幣金額合計"
  ,TU120 AS "原預算部門"

FROM PURTU
