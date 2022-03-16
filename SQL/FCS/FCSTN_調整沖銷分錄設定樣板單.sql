--FCSTN_調整沖銷分錄設定樣板單
SELECT
  ,TN001 AS "子公司代號"
  ,TN002 AS "帳別/合併代號"
  ,TN003 AS "調整/沖銷代號"
  ,TN004 AS "序號"
  ,CASE 
   WHEN '1' THEN N'合併會計科目各期餘額檔(FCSMG)'
   WHEN '2' THEN N'關係人合併會計科目各期餘額檔(FCSMH)'
   WHEN '3' THEN N'依公式設定'
   WHEN '4' THEN N'差額'
   WHEN '5' THEN N'合併會計科目當期餘額檔(FCSMG)'
   WHEN '6' THEN N'關係人合併會計科目當期餘額檔(FCSMH)'
   ELSE ""
   END AS "金額來源"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   WHEN '3' THEN N'側流交易公司'
   ELSE ""
   END AS "公司別"
  ,CASE 
   WHEN '1' THEN N'借,'
   WHEN '-1' THEN N'貸'
   ELSE ""
   END AS "借/貸"
  ,TN008 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'按比率沖銷'
   WHEN '2' THEN N'按1-比率沖銷'
   WHEN '3' THEN N'不按比率沖銷'
   ELSE ""
   END AS "比率沖銷類型"
  ,TN010 AS "備註"
  ,TN011 AS "關係人代號"
  ,TN012 AS "側流沖銷比率"
  ,CASE 
   WHEN '1' THEN N'調整'
   WHEN '2' THEN N'沖銷'
   ELSE ""
   END AS "用途"
  ,TN020 AS "營運分類一"
  ,TN021 AS "營運分類一名稱"
  ,TN022 AS "營運分類二"
  ,TN023 AS "營運分類二名稱"
  ,TN024 AS "營運分類三"
  ,TN025 AS "營運分類三名稱"
  ,TN033 AS "科目名稱"

FROM FCSTN
