--FCSMT_合併前現金流量表項目科目
SELECT
  ,MT001 AS "現金流量表項目"
  ,MT002 AS "會計年度"
  ,MT003 AS "期別"
  ,MT004 AS "餘額"
  ,MT005 AS "公司代號"
  ,MT006 AS "帳別代號"
  ,MT012 AS "關係人"
  ,MT013 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MT015 AS "合併代號"

FROM FCSMT
