--HRSTX_人力需求申請單單身資料檔
SELECT
  ,TX001 AS "單別"
  ,TX002 AS "單號"
  ,TX003 AS "變更版次"
  ,TX004 AS "新序號"
  ,TX005 AS "新申請職務"
  ,TX006 AS "新申請職等"
  ,TX007 AS "新申請人數"
  ,TX008 AS "新預定薪資"
  ,CASE 
   WHEN '1' THEN N'新增'
   WHEN '2' THEN N'遞補'
   ELSE ""
   END AS "新職缺"
  ,CASE 
   WHEN '1' THEN N'離職'
   WHEN '2' THEN N'調動'
   WHEN '3' THEN N'退休'
   ELSE ""
   END AS "新遞補"
  ,TX011 AS "新異動員工代號"
  ,TX012 AS "新異動日期"
  ,CASE 
   WHEN '1' THEN N'預算內'
   WHEN '2' THEN N'預算外'
   ELSE ""
   END AS "新員額"
  ,CASE 
   WHEN '1' THEN N'不定期'
   WHEN '2' THEN N'定期'
   ELSE ""
   END AS "新勞動契約"
  ,TX015 AS "新定期契約起始日期"
  ,TX016 AS "新定期契約截止日期"
  ,TX017 AS "新需求日期"
  ,TX018 AS "新需求地點"
  ,TX019 AS "新專長"
  ,TX020 AS "新科系代號"
  ,CASE 
   WHEN 'Y' THEN N'已確認'
   WHEN 'N' THEN N'未確認'
   WHEN 'V' THEN N'作廢'
   ELSE ""
   END AS "新確認碼"
  ,TX022 AS "新來源代號"
  ,TX023 AS "新學歷代號"
  ,TX024 AS "新經歷"
  ,CASE 
   WHEN 'Y' THEN N'自動結案'
   WHEN 'y' THEN N'指定結案'
   WHEN 'N' THEN N'未結案'
   ELSE ""
   END AS "新結案碼"
  ,TX026 AS "新有效日期"
  ,TX027 AS "變更原因"
  ,CASE 
   WHEN '1' THEN N'男'
   WHEN '2' THEN N'女'
   WHEN '3' THEN N'不限'
   ELSE ""
   END AS "新需求性別"
  ,TX029 AS "新年齡限制"
  ,TX030 AS "新申請薪等"
  ,TX031 AS "新申請薪級"
  ,TX032 AS "新履歷收件者代號"
  ,TX033 AS "新轉調者代號"
  ,TX104 AS "原序號"
  ,TX105 AS "原申請職務"
  ,TX106 AS "原申請職等"
  ,TX107 AS "原申請人數"
  ,TX108 AS "原預定薪資"
  ,CASE 
   WHEN '1' THEN N'新增'
   WHEN '2' THEN N'遞補'
   ELSE ""
   END AS "原職缺"
  ,CASE 
   WHEN '1' THEN N'離職'
   WHEN '2' THEN N'調動'
   WHEN '3' THEN N'退休'
   ELSE ""
   END AS "原遞補"
  ,TX111 AS "原異動員工代號"
  ,TX112 AS "原異動日期"
  ,CASE 
   WHEN '1' THEN N'預算內'
   WHEN '2' THEN N'預算外'
   ELSE ""
   END AS "原員額"
  ,CASE 
   WHEN '1' THEN N'不定期'
   WHEN '2' THEN N'定期'
   ELSE ""
   END AS "原勞動契約"
  ,TX115 AS "原定期契約起始日期"
  ,TX116 AS "原定期契約截止日期"
  ,TX117 AS "原需求日期"
  ,TX118 AS "原需求地點"
  ,TX119 AS "專長"
  ,TX120 AS "科系代號"
  ,TX122 AS "原來源代號"
  ,TX123 AS "原學歷代號"
  ,TX124 AS "原經歷"
  ,CASE 
   WHEN 'Y' THEN N'自動結案'
   WHEN 'y' THEN N'指定結案'
   WHEN 'N' THEN N'未結案'
   ELSE ""
   END AS "原結案碼"
  ,TX126 AS "原有效日期"
  ,CASE 
   WHEN '1' THEN N'男'
   WHEN '2' THEN N'女'
   WHEN '3' THEN N'不限'
   ELSE ""
   END AS "原需求性別"
  ,TX129 AS "原年齡限制"
  ,TX130 AS "原申請薪等"
  ,TX131 AS "原申請薪級"
  ,TX132 AS "原履歷收件者代號"
  ,TX133 AS "原轉調者代號"

FROM HRSTX
