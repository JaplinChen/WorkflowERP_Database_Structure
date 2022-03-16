--FCSTO_調整沖銷分錄設定樣板子
SELECT
  ,TO001 AS "子公司代號"
  ,TO002 AS "帳別/合併代號"
  ,TO003 AS "調整/沖銷代號"
  ,TO004 AS "單身序號"
  ,TO005 AS "子單身序號"
  ,CASE 
   WHEN '1' THEN N'合併會計科目各期餘額檔(FCSMG)'
   WHEN '2' THEN N'關係人合併會計科目各期餘額檔(FCSMH)'
   WHEN '3' THEN N'合併會計科目當期餘額檔(FCSMG)'
   WHEN '4' THEN N'關係人合併會計科目當期餘額檔(FCSMH)'
   ELSE ""
   END AS "金額來源"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   WHEN '3' THEN N'側流交易公司'
   ELSE ""
   END AS "公司別"
  ,TO008 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'按比率沖銷'
   WHEN '2' THEN N'按1-比率沖銷'
   WHEN '3' THEN N'不按比率沖銷'
   ELSE ""
   END AS "比率沖銷類型"
  ,TO010 AS "運算子"
  ,TO011 AS "備註"
  ,TO012 AS "關係人代號"
  ,TO013 AS "側流沖銷比率"
  ,TO019 AS "括號"
  ,CASE 
   WHEN '1' THEN N'調整'
   WHEN '2' THEN N'沖銷'
   ELSE ""
   END AS "用途"
  ,TO022 AS "營運分類一"
  ,TO023 AS "營運分類一名稱"
  ,TO024 AS "營運分類二"
  ,TO025 AS "營運分類二名稱"
  ,TO026 AS "營運分類三"
  ,TO027 AS "營運分類三名稱"
  ,TO035 AS "科目名稱"

FROM FCSTO
