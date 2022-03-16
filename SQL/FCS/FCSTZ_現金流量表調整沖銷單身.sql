--FCSTZ_現金流量表調整沖銷單身
SELECT
  ,TZ001 AS "子公司代號"
  ,TZ002 AS "會計年度"
  ,TZ003 AS "期別"
  ,TZ004 AS "序號"
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
  ,TZ007 AS "科目編號"
  ,TZ008 AS "金額"
  ,TZ009 AS "摘要"
  ,TZ010 AS "備註"
  ,TZ011 AS "確認碼"
  ,TZ012 AS "統制科目編號"
  ,TZ018 AS "帳別/合併代號"
  ,TZ019 AS "關係人代號"
  ,TZ020 AS "調整/沖銷代號"
  ,TZ021 AS "現金流量表項目"
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
  ,TZ037 AS "科目名稱"
  ,TZ038 AS "項目名稱"

FROM FCSTZ
