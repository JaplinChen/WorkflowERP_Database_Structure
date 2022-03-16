--ACTNP_多帳本幣別匯率檔單身
SELECT
  ,NP001 AS "來源幣別"
  ,NP002 AS "兌換幣別"
  ,NP003 AS "生效日期"
  ,NP004 AS "銀行買進匯率"
  ,NP005 AS "銀行賣出匯率"
  ,NP006 AS "報關買進匯率"
  ,NP007 AS "報關賣出匯率"

FROM ACTNP
