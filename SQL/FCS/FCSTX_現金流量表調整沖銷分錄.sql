--FCSTX_現金流量表調整沖銷分錄
SELECT
  ,TX001 AS "子公司代號"
  ,TX002 AS "帳別/合併代號"
  ,TX003 AS "調整/沖銷代號"
  ,TX004 AS "序號"
  ,CASE 
   WHEN '1' THEN N'合併現金流量表項目科目各期餘額檔(FCSMU)'
   WHEN '2' THEN N'會計+關係人'
   WHEN '3' THEN N'差額'
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
  ,TX008 AS "科目編號"
  ,CASE 
   WHEN '1' THEN N'按比率沖銷'
   WHEN '2' THEN N'按1-比率沖銷'
   WHEN '3' THEN N'不按比率沖銷'
   ELSE ""
   END AS "比率沖銷類型"
  ,TX010 AS "備註"
  ,TX011 AS "關係人代號"
  ,TX012 AS "側流沖銷比率"
  ,TX013 AS "現金流量表項目"
  ,CASE 
   WHEN '1' THEN N'調整'
   WHEN '2' THEN N'沖銷'
   ELSE ""
   END AS "用途"
  ,TX033 AS "科目名稱"
  ,TX034 AS "項目名稱"

FROM FCSTX
