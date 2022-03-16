--HRSTG_人力需求申請單資料檔
SELECT
  ,TG001 AS "部門代號"
  ,TG002 AS "申請日期"
  ,TG003 AS "申請職務"
  ,TG004 AS "申請職等"
  ,TG005 AS "申請人數"
  ,TG006 AS "預定薪資"
  ,CASE 
   WHEN '1' THEN N'新增'
   WHEN '2' THEN N'遞補'
   ELSE ""
   END AS "職缺"
  ,CASE 
   WHEN '1' THEN N'離職'
   WHEN '2' THEN N'調動'
   WHEN '3' THEN N'退休'
   ELSE ""
   END AS "遞補"
  ,TG009 AS "異動員工代號"
  ,TG010 AS "異動日期"
  ,CASE 
   WHEN '1' THEN N'預算內'
   WHEN '2' THEN N'預算外'
   ELSE ""
   END AS "員額"
  ,CASE 
   WHEN '1' THEN N'不定期'
   WHEN '2' THEN N'定期'
   ELSE ""
   END AS "勞動契約"
  ,TG013 AS "定期契約起始日期"
  ,TG014 AS "定期契約截止日期"
  ,TG015 AS "需求日期"
  ,TG016 AS "需求地點"
  ,TG017 AS "人力需求申請理由1"
  ,TG018 AS "人力需求申請理由2"
  ,TG019 AS "確認日期"
  ,TG020 AS "確認者"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TG022 AS "備註"
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
  ,TG024 AS "序號"

FROM HRSTG
