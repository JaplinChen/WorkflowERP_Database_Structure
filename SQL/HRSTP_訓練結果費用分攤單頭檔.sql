--HRSTP_訓練結果費用分攤單頭檔
SELECT
  ,TP001 AS "訓練代號"
  ,TP002 AS "登錄日期"
  ,TP003 AS "費用歸屬年度"
  ,TP004 AS "費用歸屬期別"
  ,TP005 AS "費用總計"
  ,TP006 AS "備註"
  ,TP007 AS "確認日期"
  ,TP008 AS "確認者"
  ,TP009 AS "確認碼"
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
  ,CASE 
   WHEN '1' THEN N'不分攤'
   WHEN '2' THEN N'依人數'
   WHEN '3' THEN N'依比例'
   ELSE ""
   END AS "費用分攤方式"
  ,TP012 AS "訓練結果單別"
  ,TP013 AS "訓練結果單號"

FROM HRSTP
