--CMSMX_機台資料檔
SELECT
  ,MX001 AS "機台代號"
  ,MX002 AS "生產線代號"
  ,MX003 AS "機台名稱"
  ,MX004 AS "機器產能"
  ,MX005 AS "負荷率"
  ,MX006 AS "備註"
  ,CASE 
   WHEN '0' THEN N'有限產能'
   WHEN '1' THEN N'無限產能'
   ELSE ""
   END AS "產能型態"
  ,MX017 AS "設備規格一"
  ,MX018 AS "設備規格二"
  ,MX019 AS "設備規格三"
  ,MX020 AS "設備規格四"
  ,MX021 AS "設備規格五"
  ,MX022 AS "設備規格六"
  ,MX023 AS "設備規格七"
  ,MX024 AS "設備規格八"
  ,MX025 AS "設備規格九"
  ,MX026 AS "設備規格十"
  ,MX027 AS "設備規格十一"
  ,MX028 AS "設備規格十二"
  ,MX029 AS "設備規格十三"
  ,MX030 AS "設備規格十四"
  ,MX031 AS "設備規格十五"

FROM CMSMX
