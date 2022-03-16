--FCSMH_關係人合併會計科目各期餘
SELECT
  ,MH001 AS "科目編號"
  ,MH002 AS "會計年度"
  ,MH003 AS "期別"
  ,MH004 AS "記帳幣別"
  ,MH005 AS "記帳借方金額"
  ,MH006 AS "記帳貸方金額"
  ,MH007 AS "功能幣別"
  ,MH008 AS "功能匯率"
  ,MH009 AS "功能借方金額"
  ,MH010 AS "功能貸方金額"
  ,MH011 AS "合併幣別"
  ,MH012 AS "合併匯率"
  ,MH013 AS "合併借方金額"
  ,MH014 AS "合併貸方金額"
  ,MH015 AS "統制科目編號"
  ,MH016 AS "關係人代號"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MH018 AS "公司代號"
  ,MH019 AS "帳別代號"
  ,MH020 AS "合併代號"

FROM FCSMH
