--FCSMO_關係人合併未實現(已實現)
SELECT
  ,MO001 AS "科目編號"
  ,MO002 AS "會計年度"
  ,MO003 AS "期別"
  ,MO004 AS "記帳幣別"
  ,MO005 AS "記帳借方金額"
  ,MO006 AS "記帳貸方金額"
  ,MO007 AS "功能幣別"
  ,MO008 AS "功能匯率"
  ,MO009 AS "功能借方金額"
  ,MO010 AS "功能貸方金額"
  ,MO011 AS "合併幣別"
  ,MO012 AS "合併匯率"
  ,MO013 AS "合併借方金額"
  ,MO014 AS "合併貸方金額"
  ,MO015 AS "統制科目編號"
  ,MO016 AS "關係人代號"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   WHEN '3' THEN N'側流交易公司'
   ELSE ""
   END AS "公司別"
  ,MO018 AS "公司代號"
  ,MO019 AS "帳別代號"
  ,MO020 AS "合併代號"

FROM FCSMO
