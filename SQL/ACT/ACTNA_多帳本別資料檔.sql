--ACTNA_多帳本別資料檔
SELECT
  ,NA001 AS "帳別代號"
  ,NA002 AS "帳別名稱"
  ,NA003 AS "備註"
  ,NA004 AS "啟用日期"
  ,NA010 AS "平行帳"
  ,NA011 AS "記帳幣別"
  ,NA012 AS "匯兌損失科目"
  ,NA013 AS "匯兌利益科目"
  ,NA014 AS "生效日期"
  ,NA015 AS "失效日期"

FROM ACTNA
