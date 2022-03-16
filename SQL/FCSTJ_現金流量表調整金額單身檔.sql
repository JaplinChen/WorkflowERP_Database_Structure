--FCSTJ_現金流量表調整金額單身檔
SELECT
  ,TJ001 AS "會計年度"
  ,TJ002 AS "期別"
  ,TJ003 AS "序號"
  ,TJ004 AS "項目名稱"
  ,TJ006 AS "科目編號"
  ,TJ007 AS "調整金額"
  ,TJ014 AS "合併代號"
  ,CASE 
   WHEN '1' THEN N'現金流量表項目'
   WHEN '2' THEN N'科目餘額'
   ELSE ""
   END AS "資料來源"
  ,CASE 
   WHEN '1' THEN N'子公司'
   WHEN '2' THEN N'母公司'
   ELSE ""
   END AS "公司別"

FROM FCSTJ
