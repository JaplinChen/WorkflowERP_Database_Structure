--FCSMA_合併財報參數設定檔
SELECT
  ,MA001 AS "合併財報公司名稱"
  ,MA002 AS "合併財報年度"
  ,MA003 AS "合併財報期間"
  ,MA009 AS "再衡量兌換損失科目"
  ,MA010 AS "換算調整數科目"
  ,MA011 AS "合併銷貨收入科目"
  ,MA012 AS "合併銷貨成本科目"
  ,MA013 AS "合併資產交易損益科目"
  ,MA014 AS "功能幣別"
  ,MA015 AS "報導幣別"
  ,CASE 
   WHEN '1' THEN N'記帳幣別'
   WHEN '2' THEN N'功能幣別'
   ELSE ""
   END AS "合併幣來源"
  ,MA017 AS "未實現銷貨利益科目"
  ,MA018 AS "未實現銷貨損失科目"
  ,MA019 AS "遞延貸項科目"
  ,MA020 AS "遞延借項科目"
  ,MA021 AS "再衡量兌換利益科目"
  ,MA031 AS "啟動被投資帳冊"

FROM FCSMA
