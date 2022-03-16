--BCSMG_保稅材料用量單身檔
SELECT
  ,MG001 AS "主件品號"
  ,MG002 AS "元件品號"
  ,MG003 AS "實用數量"
  ,MG004 AS "損耗數量"
  ,MG005 AS "應用數量"
  ,MG006 AS "生效日期"
  ,MG007 AS "失效日期"
  ,MG008 AS "備註"
  ,MG009 AS "主件生效日期"
  ,MG015 AS "保稅碼"
  ,MG016 AS "損耗率%"
  ,MG017 AS "核準文號"
  ,MG018 AS "核准文號生效日"

FROM BCSMG
