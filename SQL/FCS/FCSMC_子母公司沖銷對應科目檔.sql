--FCSMC_子母公司沖銷對應科目檔
SELECT
  ,MC001 AS "子公司代號"
  ,MC002 AS "科目編號"
  ,MC003 AS "科目名稱"
  ,MC004 AS "對應科目編號"
  ,MC005 AS "沖銷科目編號"
  ,MC006 AS "按比率沖銷"
  ,MC013 AS "母公司代號"
  ,MC014 AS "對應科目名稱"
  ,MC015 AS "沖銷科目名稱"

FROM FCSMC
