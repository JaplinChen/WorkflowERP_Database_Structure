--IPSMB_進口參數設定檔
SELECT
  ,MB001 AS "隱藏欄位"
  ,MB002 AS "隱藏欄位"
  ,MB003 AS "推廣貿易費用代號"
  ,MB004 AS "推廣貿易費率"
  ,MB005 AS "貨物稅額費用代號"
  ,MB006 AS "進口關稅費用代號"
  ,MB007 AS "進口稅額費用代號"
  ,CASE 
   WHEN '1' THEN N'直接更新採購預交日'
   WHEN '2' THEN N'產生採購變更單'
   WHEN '3' THEN N'不更新'
   ELSE ""
   END AS "確認預交日更新採購單預交日"

FROM IPSMB
