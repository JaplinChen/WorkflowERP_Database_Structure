--CMSMW_製程代號檔
SELECT
  ,MW001 AS "製程代號"
  ,MW002 AS "製程名稱"
  ,MW003 AS "製程敘述"
  ,CASE 
   WHEN '1' THEN N'廠內製程'
   WHEN '2' THEN N'託外製程'
   ELSE ""
   END AS "性質"
  ,MW005 AS "線別/廠商代號"
  ,MW006 AS "線別/廠商名稱"
  ,MW007 AS "發包人員"
  ,MW008 AS "備註"
  ,CASE 
   WHEN '0' THEN N'BOdy'
   WHEN '1' THEN N'未測晶圓'
   WHEN '2' THEN N'已測晶圓'
   WHEN '3' THEN N'未測IC'
   WHEN '4' THEN N'已測IC'
   WHEN '7' THEN N'MASK'
   WHEN '8' THEN N'產品型號'
   WHEN '9' THEN N'其他'
   ELSE ""
   END AS "產品屬性"
  ,CASE 
   WHEN '0' THEN N'一般'
   WHEN '1' THEN N'IDL'
   ELSE ""
   END AS "類別"
  ,MW016 AS "產生料號"
  ,MW017 AS "固定前置天數"
  ,MW018 AS "變動前置天數"
  ,MW019 AS "批量"
  ,MW020 AS "採購單位"
  ,MW021 AS "銷售單位"
  ,MW022 AS "贈/備品率"
  ,MW023 AS "DATECODE管理"
  ,MW024 AS "Bin管理"

FROM CMSMW
