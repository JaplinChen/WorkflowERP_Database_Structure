--IDLND_委外加工計價設定檔
SELECT
  ,ND001 AS "計價方式代號"
  ,ND002 AS "計價方式名稱"
  ,ND003 AS "單位"
  ,CASE 
   WHEN '1' THEN N'計價數量'
   WHEN '2' THEN N'驗收數量'
   ELSE ""
   END AS "計價依據"
  ,ND005 AS "不良品"
  ,ND006 AS "廢品"
  ,ND007 AS "備註"
  ,ND013 AS "計價"
  ,ND014 AS "驗收"

FROM IDLND
