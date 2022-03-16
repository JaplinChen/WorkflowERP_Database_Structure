--FCSTL_子公司股東權益資料異動單
SELECT
  ,TL001 AS "子公司代號"
  ,TL002 AS "異動日期"
  ,TL003 AS "股東權益科目"
  ,TL004 AS "股本"
  ,TL005 AS "增減記帳金額"
  ,TL006 AS "增減持股比率"
  ,TL007 AS "增減投資股數"
  ,TL008 AS "增減功能金額"
  ,TL009 AS "增減合併金額"
  ,TL010 AS "備註"
  ,TL015 AS "母公司代號"
  ,TL016 AS "合併代號"
  ,TL017 AS "科目名稱"

FROM FCSTL
