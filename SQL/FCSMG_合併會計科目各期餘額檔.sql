--FCSMG_合併會計科目各期餘額檔
SELECT
  ,MG001 AS "科目編號"
  ,MG002 AS "會計年度"
  ,MG003 AS "期別"
  ,MG004 AS "記帳幣別"
  ,MG005 AS "記帳借方金額"
  ,MG006 AS "記帳貸方金額"
  ,MG007 AS "功能幣別"
  ,MG008 AS "功能匯率"
  ,MG009 AS "功能借方金額"
  ,MG010 AS "功能貸方金額"
  ,MG011 AS "合併幣別"
  ,MG012 AS "合併匯率"
  ,MG013 AS "合併借方金額"
  ,MG014 AS "合併貸方金額"
  ,MG015 AS "統制科目編號"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MG017 AS "公司代號"
  ,MG018 AS "帳別代號"
  ,MG019 AS "合併代號"
  ,CASE 
   WHEN '1' THEN N'餘額資料'
   WHEN '2' THEN N'平衡資料'
   WHEN '3' THEN N'沖銷資料'
   ELSE ""
   END AS "資料性質"

FROM FCSMG
