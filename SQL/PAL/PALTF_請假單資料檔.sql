--PALTF_請假單資料檔
SELECT
  ,TF001 AS "員工代號"
  ,TF002 AS "請假日期"
  ,TF003 AS "序號"
  ,TF004 AS "假別"
  ,TF005 AS "請假起始時分"
  ,TF006 AS "請假截止時分"
  ,TF007 AS "請假時分"
  ,TF008 AS "請假數量"
  ,TF009 AS "單位"
  ,TF010 AS "備註"
  ,TF011 AS "確認碼"
  ,TF012 AS "確認日期"
  ,TF013 AS "確認者"
  ,TF014 AS "班別"
  ,TF015 AS "請假天數"
  ,TF016 AS "歸屬日期"
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
  ,TF018 AS "歸屬計薪年月"
  ,CASE 
   WHEN '1' THEN N'上半月'
   WHEN '2' THEN N'下半月'
   ELSE ""
   END AS "歸屬上下半月"

FROM PALTF
