--BTSLC_庫存異動處理單頭資料檔
SELECT
  ,LC001 AS "工作ID"
  ,LC002 AS "作業種類"
  ,LC003 AS "處理狀態"
  ,LC004 AS "工作日期"
  ,LC005 AS "使用者代號"
  ,LC006 AS "廠別代號"
  ,LC007 AS "庫存異動單單別"
  ,LC008 AS "部門代號"
  ,LC011 AS "異常碼"

FROM BTSLC
