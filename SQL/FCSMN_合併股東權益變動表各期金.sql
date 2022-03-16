--FCSMN_合併股東權益變動表各期金
SELECT
  ,MN001 AS "會計年度"
  ,MN002 AS "期別"
  ,CASE 
   WHEN '1' THEN N'股東權益期初餘額'
   WHEN '2' THEN N'股東權益項目歸屬檔'
   WHEN '3' THEN N'股東權益各期餘額'
   ELSE ""
   END AS "用途"
  ,MN004 AS "分類代號"
  ,MN005 AS "項目代號"
  ,MN006 AS "記帳幣別"
  ,MN007 AS "記帳金額"
  ,MN008 AS "功能幣別"
  ,MN009 AS "功能匯率"
  ,MN010 AS "功能金額"
  ,MN011 AS "合併幣別"
  ,MN012 AS "合併匯率"
  ,MN013 AS "合併金額"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MN015 AS "公司代號"
  ,MN016 AS "帳別代號"
  ,MN017 AS "合併代號"

FROM FCSMN
