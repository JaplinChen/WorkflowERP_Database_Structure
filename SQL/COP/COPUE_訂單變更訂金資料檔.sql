--COPUE_訂單變更訂金資料檔
SELECT
  ,UE001 AS "單別"
  ,UE002 AS "單號"
  ,UE003 AS "變更版次"
  ,UE004 AS "訂金序號"
  ,UE005 AS "訂金比率"
  ,UE006 AS "訂金金額"
  ,UE007 AS "預計收款日"
  ,UE104 AS "原訂金序號"
  ,UE105 AS "原訂金比率"
  ,UE106 AS "原訂金金額"
  ,UE107 AS "原預計收款日"
  ,UE108 AS "原結帳碼"

FROM COPUE
