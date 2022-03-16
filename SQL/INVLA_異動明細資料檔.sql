--INVLA_異動明細資料檔
SELECT
  ,LA001 AS "品號"
  ,LA004 AS "日期"
  ,LA005 AS "入出別"
  ,LA006 AS "單別"
  ,LA007 AS "單號"
  ,LA008 AS "序號"
  ,LA009 AS "庫別"
  ,LA010 AS "備註"
  ,LA011 AS "單據異動庫存數量"
  ,LA012 AS "單據單位成本"
  ,LA013 AS "金額"
  ,LA014 AS "異動別"
  ,LA015 AS "成本碼"
  ,LA016 AS "批號"
  ,LA017 AS "金額-材料"
  ,LA018 AS "金額-人工"
  ,LA019 AS "金額-製費"
  ,LA020 AS "金額-加工"
  ,LA021 AS "單據異動包裝數量"
  ,LA022 AS "儲位"
  ,LA028 AS "DATECODE"

FROM INVLA
