--FCSTB_調整沖銷單身檔
SELECT
  ,TB001 AS "子公司代號"
  ,TB002 AS "會計年度"
  ,TB003 AS "期別"
  ,TB004 AS "序號"
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
  ,TB007 AS "科目編號"
  ,TB008 AS "金額"
  ,TB009 AS "摘要"
  ,TB010 AS "備註"
  ,TB011 AS "確認碼"
  ,TB012 AS "統制科目編號"
  ,TB018 AS "帳別/合併代號"
  ,TB019 AS "關係人代號"
  ,TB020 AS "調整/沖銷代號"
  ,CASE 
   WHEN '1' THEN N'自動產生'
   WHEN '2' THEN N'手動輸入'
   ELSE ""
   END AS "來源碼"
  ,CASE 
   WHEN '1' THEN N'調整'
   WHEN '2' THEN N'沖銷'
   ELSE ""
   END AS "用途"
  ,TB024 AS "營運分類一"
  ,TB025 AS "營運分類一名稱"
  ,TB026 AS "營運分類二"
  ,TB027 AS "營運分類二名稱"
  ,TB028 AS "營運分類三"
  ,TB029 AS "營運分類三名稱"
  ,TB037 AS "科目名稱"

FROM FCSTB
