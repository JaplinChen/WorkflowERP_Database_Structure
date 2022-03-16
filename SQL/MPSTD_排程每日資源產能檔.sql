--MPSTD_排程每日資源產能檔
SELECT
  ,TD001 AS "計劃批號"
  ,TD002 AS "資源代號"
  ,TD003 AS "日期"
  ,TD004 AS "每日產能"
  ,TD005 AS "瓶頸耗用"
  ,TD006 AS "計劃瓶頸耗用"
  ,TD007 AS "備註"
  ,TD008 AS "非瓶頸耗用"
  ,TD009 AS "計劃非瓶頸耗用"

FROM MPSTD
