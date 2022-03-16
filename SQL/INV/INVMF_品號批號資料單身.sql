--INVMF_品號批號資料單身
SELECT
  ,MF001 AS "品號"
  ,MF002 AS "批號"
  ,MF003 AS "異動日期"
  ,MF004 AS "異動單別"
  ,MF005 AS "異動單號"
  ,MF006 AS "異動序號"
  ,MF007 AS "庫別"
  ,MF008 AS "I/O別"
  ,CASE 
   WHEN '1' THEN N'入庫'
   WHEN '2' THEN N'銷貨'
   WHEN '3' THEN N'領用'
   WHEN '4' THEN N'轉撥'
   WHEN '5' THEN N'調整'
   ELSE ""
   END AS "異動別"
  ,MF010 AS "數量"
  ,MF013 AS "備註"
  ,MF014 AS "包裝數量"
  ,MF021 AS "DATECODE"
  ,MF500 AS "本站製程"
  ,MF501 AS "下站製程"
  ,MF502 AS "GOOD_DIE"
  ,MF503 AS "GROSS_DIE"
  ,MF504 AS "良率%"
  ,MF505 AS "加工項目"
  ,MF506 AS "供應廠商"

FROM INVMF
