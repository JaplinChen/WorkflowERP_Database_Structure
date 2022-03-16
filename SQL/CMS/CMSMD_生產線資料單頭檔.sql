--CMSMD_生產線資料單頭檔
SELECT
  ,MD001 AS "生產線代號"
  ,MD002 AS "生產線名稱"
  ,MD003 AS "廠別代號"
  ,MD004 AS "每日人工產能"
  ,MD005 AS "每日機器產能"
  ,MD006 AS "標準人工效率"
  ,MD007 AS "標準機器負荷"
  ,CASE 
   WHEN '1' THEN N'人時'
   WHEN '2' THEN N'機時'
   WHEN '3' THEN N'人工'
   ELSE ""
   END AS "製費一分攤依據"
  ,MD009 AS "標準單位人工成本"
  ,MD010 AS "總標準單位製造費用"
  ,MD011 AS "備註"
  ,CASE 
   WHEN '0' THEN N'有限產能'
   WHEN '1' THEN N'無限產能'
   ELSE ""
   END AS "產能型態"
  ,MD023 AS "設備規格一"
  ,MD024 AS "設備規格二"
  ,MD025 AS "設備規格三"
  ,MD026 AS "設備規格四"
  ,MD027 AS "設備規格五"
  ,MD028 AS "設備規格六"
  ,MD029 AS "設備規格七"
  ,MD030 AS "設備規格八"
  ,MD031 AS "設備規格九"
  ,MD032 AS "設備規格十"
  ,MD033 AS "設備規格十一"
  ,MD034 AS "設備規格十二"
  ,MD035 AS "設備規格十三"
  ,MD036 AS "設備規格十四"
  ,MD037 AS "設備規格十五"
  ,CASE 
   WHEN '1' THEN N'人時'
   WHEN '2' THEN N'機時'
   WHEN '3' THEN N'人工'
   ELSE ""
   END AS "製費二分攤依據"
  ,CASE 
   WHEN '1' THEN N'人時'
   WHEN '2' THEN N'機時'
   WHEN '3' THEN N'人工'
   ELSE ""
   END AS "製費三分攤依據"
  ,CASE 
   WHEN '1' THEN N'人時'
   WHEN '2' THEN N'機時'
   WHEN '3' THEN N'人工'
   ELSE ""
   END AS "製費四分攤依據"
  ,CASE 
   WHEN '1' THEN N'人時'
   WHEN '2' THEN N'機時'
   WHEN '3' THEN N'人工'
   ELSE ""
   END AS "製費五分攤依據"
  ,MD042 AS "標準單位製費一"
  ,MD043 AS "標準單位製費二"
  ,MD044 AS "標準單位製費三"
  ,MD045 AS "標準單位製費四"
  ,MD046 AS "標準單位製費五"
  ,MD047 AS "每月標準人工產能"
  ,MD048 AS "每月標準機器產能"
  ,MD049 AS "移轉時數"
  ,CASE 
   WHEN '1' THEN N'組裝線'
   WHEN '2' THEN N'加工線'
   ELSE ""
   END AS "生產型態"
  ,CASE 
   WHEN '1' THEN N'單件加工'
   WHEN '2' THEN N'批量加工'
   WHEN '3' THEN N'集批加工'
   WHEN '4' THEN N'連鎖批量'
   ELSE ""
   END AS "製造模式"

FROM CMSMD
