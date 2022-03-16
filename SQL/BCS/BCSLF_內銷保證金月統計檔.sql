--BCSLF_內銷保證金月統計檔
SELECT
  ,LF001 AS "年月"
  ,LF002 AS "更新日期"
  ,LF003 AS "內銷保證金期初值"
  ,LF004 AS "保證金調整金額"
  ,LF005 AS "本期預估稅額"
  ,LF006 AS "繳納證號碼"
  ,LF007 AS "補稅金額"
  ,LF008 AS "備註"

FROM BCSLF
