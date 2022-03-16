--FCSNG_被投資帳冊現金流量表項目
SELECT
  ,NG001 AS "類別"
  ,NG002 AS "現金流量表項目"
  ,NG003 AS "項目名稱"
  ,NG004 AS "備註"
  ,NG010 AS "項目名稱別名"
  ,CASE 
   WHEN '1' THEN N'現時匯率'
   WHEN '2' THEN N'歷史匯率'
   WHEN '3' THEN N'平均匯率'
   ELSE ""
   END AS "再衡量匯率來源"
  ,CASE 
   WHEN '1' THEN N'現時匯率'
   WHEN '2' THEN N'歷史匯率'
   WHEN '3' THEN N'平均匯率'
   ELSE ""
   END AS "換算匯率來源"
  ,NG013 AS "公司代號"
  ,NG014 AS "帳別代號"

FROM FCSNG
