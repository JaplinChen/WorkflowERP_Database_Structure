--FCSTM_調整沖銷分錄設定樣板單
SELECT
  ,TM001 AS "子公司代號"
  ,TM002 AS "帳別/合併代號"
  ,TM003 AS "調整/沖銷代號"
  ,TM004 AS "有效"
  ,TM005 AS "備註"
  ,CASE 
   WHEN '1' THEN N'調整'
   WHEN '2' THEN N'沖銷'
   ELSE ""
   END AS "用途"

FROM FCSTM
