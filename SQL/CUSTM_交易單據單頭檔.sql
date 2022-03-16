--CUSTM_交易單據單頭檔
SELECT
  ,TM001 AS "單別"
  ,TM002 AS "單號"
  ,TM003 AS "單據日期"
  ,TM004 AS "來源單別"
  ,TM005 AS "來源單號"
  ,TM006 AS "交易代碼"
  ,CASE 
   WHEN '1' THEN N'增'
   WHEN '2' THEN N'減'
   ELSE ""
   END AS "入出別"
  ,TM008 AS "海關手冊"
  ,TM009 AS "交易物件"
  ,TM010 AS "備註"
  ,CASE 
   WHEN '1' THEN N'系統轉入'
   WHEN '2' THEN N'自行輸入'
   WHEN '3' THEN N'轉入後修改'
   ELSE ""
   END AS "資訊來源"
  ,TM012 AS "確認者"
  ,TM013 AS "確認日期"
  ,TM014 AS "確認碼"

FROM CUSTM
