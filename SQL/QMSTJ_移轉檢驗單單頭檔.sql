--QMSTJ_移轉檢驗單單頭檔
SELECT
  ,TJ001 AS "移轉單別"
  ,TJ002 AS "移轉單號"
  ,TJ003 AS "移轉序號"
  ,TJ004 AS "檢驗日期"
  ,TJ005 AS "檢驗期限"
  ,TJ006 AS "檢驗人員"
  ,TJ007 AS "破壞數"
  ,TJ008 AS "驗退數"
  ,TJ009 AS "扣款金額"
  ,TJ010 AS "扣款原因"
  ,TJ011 AS "判定"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'減量'
   WHEN '2' THEN N'正常'
   WHEN '3' THEN N'加嚴'
   WHEN '4' THEN N'全檢'
   ELSE ""
   END AS "檢驗方式"
  ,TJ013 AS "列印次數"
  ,TJ014 AS "確認碼"
  ,TJ015 AS "備註"
  ,TJ019 AS "單據日期"
  ,TJ020 AS "確認者"
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
  ,TJ022 AS "總抽樣數量"
  ,TJ023 AS "不良數量合計"
  ,TJ024 AS "傳送次數"
  ,TJ025 AS "品管類別"

FROM QMSTJ
