--HRSTH_面試記錄單頭檔
SELECT
  ,TH001 AS "人才編號"
  ,TH002 AS "序號"
  ,TH003 AS "面試日期"
  ,TH004 AS "面試部門"
  ,TH005 AS "面試職務"
  ,TH006 AS "面試主管"
  ,TH007 AS "可接受最低待遇"
  ,CASE 
   WHEN '1' THEN N'預約'
   WHEN '2' THEN N'取消預約'
   WHEN '3' THEN N'初試'
   WHEN '4' THEN N'複試'
   WHEN '5' THEN N'錄取'
   WHEN '6' THEN N'不錄取'
   WHEN '7' THEN N'錄取未到職'
   ELSE ""
   END AS "面試結果"
  ,TH009 AS "錄取職務"
  ,CASE 
   WHEN '1' THEN N'月薪'
   WHEN '2' THEN N'日薪'
   ELSE ""
   END AS "薪資別"
  ,TH011 AS "薪資"
  ,TH012 AS "總分"
  ,TH013 AS "總評"
  ,TH014 AS "預定到職日"
  ,TH015 AS "確認日期"
  ,TH016 AS "確認者"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
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
  ,TH019 AS "人力需求單別"
  ,TH020 AS "人力需求單號"
  ,TH021 AS "人力需求序號"
  ,TH022 AS "預約日期"
  ,TH023 AS "預約時間"
  ,TH024 AS "隱藏單別"

FROM HRSTH
