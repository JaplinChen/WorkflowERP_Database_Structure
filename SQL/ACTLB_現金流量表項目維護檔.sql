--ACTLB_現金流量表項目維護檔
SELECT
  ,LB001 AS "科目編號"
  ,LB002 AS "傳票單別"
  ,LB003 AS "傳票單號"
  ,LB004 AS "序號"
  ,LB005 AS "傳票日期"
  ,CASE 
   WHEN '1' THEN N'借'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借/貸"
  ,LB007 AS "金額"
  ,LB008 AS "現金流量表項目"
  ,LB009 AS "現金類科目"
  ,LB010 AS "摘要"
  ,LB016 AS "帳別代號"
  ,LB017 AS "過帳碼"
  ,LB018 AS "關係人"

FROM ACTLB
