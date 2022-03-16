--HRSTV_人力需求申請單單身資料檔
SELECT
  ,TV001 AS "單別"
  ,TV002 AS "單號"
  ,TV003 AS "序號"
  ,TV004 AS "申請職務"
  ,TV005 AS "申請職等"
  ,TV006 AS "申請人數"
  ,TV007 AS "預定薪資"
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
  ,TV010 AS "異動員工代號"
  ,TV011 AS "異動日期"
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
  ,TV014 AS "定期契約起始日期"
  ,TV015 AS "定期契約截止日期"
  ,TV016 AS "需求日期"
  ,TV017 AS "需求地點"
  ,TV018 AS "專長"
  ,TV019 AS "科系代號"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "確認碼"
  ,TV021 AS "來源代號"
  ,TV022 AS "學歷代號"
  ,TV023 AS "經歷"
  ,CASE 
   WHEN 'Y' THEN N'自動結案'
   WHEN 'y' THEN N'指定結案'
   WHEN 'N' THEN N'未結案'
   ELSE ""
   END AS "結案碼"
  ,TV025 AS "有效日期"
  ,TV026 AS "已錄取人數"
  ,TV027 AS "已報到人數"
  ,CASE 
   WHEN '1' THEN N'男'
   WHEN '2' THEN N'女'
   WHEN '3' THEN N'不限'
   ELSE ""
   END AS "需求性別"
  ,TV029 AS "年齡限制"
  ,TV030 AS "申請薪等"
  ,TV031 AS "申請薪級"
  ,TV032 AS "履歷收件者代號"
  ,TV033 AS "轉調者代號"

FROM HRSTV
