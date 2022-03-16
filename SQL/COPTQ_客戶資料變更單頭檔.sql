--COPTQ_客戶資料變更單頭檔
SELECT
  ,TQ001 AS "客戶代號"
  ,TQ002 AS "原客戶簡稱"
  ,TQ003 AS "原客戶全名"
  ,TQ004 AS "變更版次"
  ,TQ005 AS "變更日期"
  ,TQ006 AS "刪除客戶代號"
  ,TQ007 AS "新客戶簡稱"
  ,TQ008 AS "新客戶全名"
  ,TQ009 AS "修改者"
  ,TQ010 AS "備註"
  ,CASE 
   WHEN '0' THEN N'通用'
   WHEN '1' THEN N'全部'
   WHEN '2' THEN N'基本資料'
   WHEN '3' THEN N'地址資料'
   WHEN '4' THEN N'交易資料(一)'
   WHEN '5' THEN N'交易資料(二)'
   WHEN '6' THEN N'國外資料'
   ELSE ""
   END AS "修改欄位類別"
  ,TQ012 AS "確認者"
  ,TQ013 AS "確認日期"
  ,TQ014 AS "確認碼"
  ,CASE 
   WHEN '0' THEN N'待處理'
   WHEN '1' THEN N'簽核中'
   WHEN '2' THEN N'退件'
   WHEN '3' THEN N'已核准'
   WHEN '4' THEN N'取消確認中'
   WHEN '5' THEN N'作廢中'
   WHEN '6' THEN N'取消作廢中'
   WHEN 'N' THEN N'不執行電子簽核'
   ELSE ""
   END AS "簽核狀態"
  ,TQ016 AS "列印次數"
  ,TQ017 AS "傳送次數"
  ,TQ104 AS "原版次"

FROM COPTQ
