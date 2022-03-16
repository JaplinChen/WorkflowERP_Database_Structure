--QMSMB_MIL-STD-105D單頭資料檔
SELECT
  ,CASE 
   WHEN '1' THEN N'一般(I)'
   WHEN '2' THEN N'一般(II)'
   WHEN '3' THEN N'一般(III)S'
   WHEN '1' THEN N'特殊(S-1)S'
   WHEN '2' THEN N'特殊(S-2)S'
   WHEN '3' THEN N'特殊(S-3)S'
   WHEN '4' THEN N'特殊(S-4)U'
   WHEN '1' THEN N'自訂1U'
   WHEN '2' THEN N'自訂2U'
   WHEN '3' THEN N'自訂3U'
   WHEN '4' THEN N'自訂4U'
   WHEN '5' THEN N'自訂5U'
   WHEN '6' THEN N'自訂6U'
   WHEN '7' THEN N'自訂7U'
   WHEN '8' THEN N'自訂8U'
   WHEN '9' THEN N'自訂9'
   ELSE ""
   END AS "檢驗水準"
  ,CASE 
   WHEN '1' THEN N'減量'
   WHEN '2' THEN N'正常'
   WHEN '3' THEN N'加嚴'
   ELSE ""
   END AS "寬嚴程度"
  ,MB003 AS "備註"

FROM QMSMB
