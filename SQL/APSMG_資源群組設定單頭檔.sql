--APSMG_資源群組設定單頭檔
SELECT
  ,MG001 AS "群組代號"
  ,MG002 AS "群組名稱"
  ,CASE 
   WHEN '0' THEN N'生產線'
   WHEN '1' THEN N'機台'
   ELSE ""
   END AS "資源類型"
  ,MG004 AS "備註"
  ,MG005 AS "廠別代號"

FROM APSMG
