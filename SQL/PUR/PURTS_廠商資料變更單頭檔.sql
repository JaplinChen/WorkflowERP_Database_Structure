--PURTS_廠商資料變更單頭檔
SELECT
  ,TS001 AS "廠商代號"
  ,TS002 AS "原廠商簡稱"
  ,TS003 AS "原公司全名"
  ,TS004 AS "變更版次"
  ,TS005 AS "變更日期"
  ,TS006 AS "刪除廠商代號"
  ,TS007 AS "新廠商簡稱"
  ,TS008 AS "新公司全名"
  ,TS009 AS "修改者"
  ,TS010 AS "備註"
  ,CASE 
   WHEN '0' THEN N'通用'
   WHEN '1' THEN N'全部'
   WHEN '2' THEN N'基本資料'
   WHEN '3' THEN N'地址資料'
   WHEN '4' THEN N'交易資料'
   ELSE ""
   END AS "修改欄位類別"
  ,TS012 AS "確認者"
  ,TS013 AS "確認日期"
  ,TS014 AS "確認碼"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確'
   ELSE ""
   END AS "簽核狀態"
  ,TS016 AS "列印次數"
  ,TS017 AS "傳送次數"
  ,TS104 AS "原版次"

FROM PURTS
