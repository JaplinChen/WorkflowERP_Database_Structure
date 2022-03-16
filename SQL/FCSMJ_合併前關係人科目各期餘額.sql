--FCSMJ_合併前關係人科目各期餘額
SELECT
  ,MJ001 AS "科目編號"
  ,MJ002 AS "會計年度"
  ,MJ003 AS "期別"
  ,MJ004 AS "本幣借方金額"
  ,MJ005 AS "本幣貸方金額"
  ,MJ006 AS "幣別"
  ,MJ007 AS "原幣借方金額"
  ,MJ008 AS "原幣貸方金額"
  ,MJ009 AS "關係人"
  ,MJ010 AS "公司代號"
  ,MJ011 AS "帳別代號"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"
  ,MJ018 AS "合併代號"

FROM FCSMJ
