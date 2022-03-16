--ACTTT_股東權益變動表項目歸屬檔
SELECT
  ,TT001 AS "會計年度"
  ,TT002 AS "期別"
  ,CASE 
   WHEN '1' THEN N'股東權益期初餘額'
   WHEN '2' THEN N'股東權益項目歸屬檔'
   WHEN '3' THEN N'股東權益各期餘額'
   ELSE ""
   END AS "用途"
  ,TT004 AS "傳票單別"
  ,TT005 AS "傳票單號"
  ,TT006 AS "序號"
  ,TT007 AS "傳票日期"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借貸別"
  ,TT009 AS "科目編號"
  ,TT010 AS "金額"
  ,TT011 AS "項目代號"
  ,TT012 AS "摘要"
  ,TT013 AS "備註"
  ,TT014 AS "帳別代號"
  ,TT017 AS "會計制度"

FROM ACTTT
