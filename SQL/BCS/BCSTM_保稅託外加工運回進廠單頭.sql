--BCSTM_保稅託外加工運回進廠單頭
SELECT
  ,TM001 AS "保留欄位"
  ,TM002 AS "單別"
  ,TM003 AS "單號"
  ,TM004 AS "單據日期"
  ,TM005 AS "加工廠商代號"
  ,TM006 AS "託外加工出廠單別"
  ,TM007 AS "託外加工出廠單號"
  ,TM008 AS "產品品號"
  ,TM009 AS "進廠數量"
  ,TM010 AS "進廠日期"
  ,TM011 AS "確認碼"
  ,TM012 AS "確認者"
  ,TM013 AS "入庫庫別"
  ,TM014 AS "列印次數"
  ,TM015 AS "傳送次數"
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
   END AS "簽核狀態碼"
  ,TM017 AS "部門代號"
  ,TM018 AS "保稅人員"
  ,TM019 AS "備註"
  ,TM020 AS "製令單別"
  ,TM021 AS "製令單號"
  ,TM022 AS "運回截止日期"
  ,TM023 AS "製程代號"
  ,TM024 AS "出廠紀錄卡號"

FROM BCSTM
