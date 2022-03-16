--EPSTJ_信用狀資料變更單頭檔
SELECT
  ,TJ001 AS "信用狀號"
  ,TJ002 AS "變更版次"
  ,TJ003 AS "變更日期"
  ,TJ004 AS "變更原因"
  ,TJ005 AS "客戶代號"
  ,TJ006 AS "新廠別"
  ,TJ007 AS "新押匯銀行代號"
  ,TJ008 AS "新收到日"
  ,TJ009 AS "新L.裝船日"
  ,TJ010 AS "新L.押匯日"
  ,TJ011 AS "新到期日"
  ,TJ012 AS "新可否分批"
  ,TJ013 AS "新可否轉運"
  ,TJ014 AS "新幣別"
  ,TJ015 AS "新匯率"
  ,TJ016 AS "新總金額"
  ,TJ017 AS "新押匯金額"
  ,TJ018 AS "新通知費用"
  ,TJ019 AS "新結案碼"
  ,TJ020 AS "新訂單金額"
  ,TJ021 AS "確認碼"
  ,TJ022 AS "新備註"
  ,TJ023 AS "單據日期"
  ,TJ024 AS "確認者"
  ,TJ025 AS "列印次數"
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
  ,TJ027 AS "傳送次數"
  ,TJ106 AS "原廠別"
  ,TJ107 AS "原押匯銀行代號"
  ,TJ108 AS "原收到日"
  ,TJ109 AS "原L.裝船日"
  ,TJ110 AS "原L.押匯日"
  ,TJ111 AS "原到期日"
  ,TJ112 AS "原可否分批"
  ,TJ113 AS "原可否轉運"
  ,TJ114 AS "原幣別"
  ,TJ115 AS "原匯率"
  ,TJ116 AS "原總金額"
  ,TJ117 AS "原押匯金額"
  ,TJ118 AS "原通知費用"
  ,TJ119 AS "原結案碼"
  ,TJ120 AS "原訂單金額"
  ,TJ121 AS "原備註"

FROM EPSTJ
