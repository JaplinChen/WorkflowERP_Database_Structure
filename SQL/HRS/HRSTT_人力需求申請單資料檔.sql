--HRSTT_人力需求申請單資料檔
SELECT
  ,TT001 AS "單別"
  ,TT002 AS "單號"
  ,TT003 AS "部門代號"
  ,TT004 AS "申請日期"
  ,TT005 AS "申請人"
  ,TT006 AS "備註"
  ,TT007 AS "確認者"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TT009 AS "確認日期"
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
  ,TT011 AS "主考人(一)"
  ,TT012 AS "主考人(二)"
  ,TT013 AS "主考人(三)"
  ,TT014 AS "人力需求申請理由(一)"
  ,TT015 AS "人力需求申請理由(二)"
  ,TT016 AS "人力需求申請理由(三)"

FROM HRSTT
