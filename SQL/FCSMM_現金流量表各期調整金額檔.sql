--FCSMM_現金流量表各期調整金額檔
SELECT
  ,MM001 AS "科目編號/項目代號"
  ,MM002 AS "會計年度"
  ,MM003 AS "期別"
  ,MM004 AS "記帳幣別"
  ,MM005 AS "記帳調整金額"
  ,MM006 AS "功能幣別"
  ,MM007 AS "功能匯率"
  ,MM008 AS "功能調整金額"
  ,MM009 AS "合併幣別"
  ,MM010 AS "合併匯率"
  ,MM011 AS "合併調整金額"
  ,MM012 AS "項目名稱"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MM014 AS "公司代號"
  ,MM015 AS "帳別代號"
  ,MM016 AS "合併代號"

FROM FCSMM
