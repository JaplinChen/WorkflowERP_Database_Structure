--PALTT_勞工退休金提繳異動檔
SELECT
  ,TT001 AS "員工代號"
  ,TT002 AS "異動日期"
  ,TT003 AS "異動別"
  ,TT004 AS "勞退月提繳工資"
  ,TT005 AS "備註"
  ,TT007 AS "勞工自提比率"
  ,TT008 AS "雇主提繳比率"

FROM PALTT
