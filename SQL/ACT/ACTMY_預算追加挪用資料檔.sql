--ACTMY_預算追加挪用資料檔
SELECT
  ,MY001 AS "預算編號"
  ,MY002 AS "會計年度"
  ,MY003 AS "科目編號"
  ,MY004 AS "部門代號"
  ,MY005 AS "期別"
  ,MY006 AS "版次"
  ,CASE 
   WHEN '1' THEN N'追加'
   WHEN '2' THEN N'挪用'
   ELSE ""
   END AS "類型"
  ,MY008 AS "日期"
  ,MY009 AS "金額"
  ,MY010 AS "目的預算編號"
  ,MY011 AS "目的會計年度"
  ,MY012 AS "目的科目編號"
  ,MY013 AS "目的部門代號"
  ,MY014 AS "目的期別"
  ,MY015 AS "目的版次"
  ,MY016 AS "確認碼"
  ,MY017 AS "確認日期"
  ,MY018 AS "確認者"
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
  ,MY020 AS "原因"
  ,MY106 AS "原版次"
  ,MY115 AS "原目的版次"

FROM ACTMY
