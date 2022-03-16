--EISLF_生產線別分析資料匯總檔
SELECT
  ,LF001 AS "生產線別"
  ,LF002 AS "日期"
  ,LF003 AS "總人工成本"
  ,LF004 AS "總製造費用"
  ,LF005 AS "總有效時數"
  ,LF006 AS "總投入時數"
  ,LF007 AS "生產線+名稱"

FROM EISLF
