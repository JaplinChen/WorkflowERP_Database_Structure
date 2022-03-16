--MPSMD_每日資源產能檔
SELECT
  ,MD001 AS "資源代號"
  ,MD002 AS "日期"
  ,MD003 AS "當日產能"
  ,MD004 AS "瓶頸耗用"
  ,MD005 AS "備註"
  ,MD006 AS "非瓶頸耗用"

FROM MPSMD
