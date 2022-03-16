--FCSMI_合併前會計科目各期餘額檔
SELECT
  ,MI001 AS "科目編號"
  ,MI002 AS "會計年度"
  ,MI003 AS "期別"
  ,MI004 AS "本幣借方金額"
  ,MI005 AS "本幣貸方金額"
  ,MI006 AS "借方筆數"
  ,MI007 AS "貸方筆數"
  ,MI008 AS "幣別"
  ,MI009 AS "原幣借方金額"
  ,MI010 AS "原幣貸方金額"
  ,MI017 AS "公司代號"
  ,MI018 AS "帳別代號"
  ,CASE 
   WHEN '1' THEN N'餘額資料'
   WHEN '2' THEN N'平衡資料'
   WHEN '3' THEN N'調整資料'
   ELSE ""
   END AS "資料性質"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MI026 AS "合併代號"

FROM FCSMI
