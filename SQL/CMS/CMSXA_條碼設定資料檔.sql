--CMSXA_條碼設定資料檔
SELECT
  ,XA001 AS "條碼編號"
  ,XA002 AS "條碼名稱"
  ,XA003 AS "單別"
  ,XA004 AS "廠別"
  ,CASE 
   WHEN '1' THEN N'廠內'
   WHEN '2' THEN N'托外'
   ELSE ""
   END AS "製令性質"
  ,XA006 AS "生產線別"
  ,XA007 AS "供應商"

FROM CMSXA
