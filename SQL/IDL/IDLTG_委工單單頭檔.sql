--IDLTG_委工單單頭檔
SELECT
  ,TG001 AS "委工單別"
  ,TG002 AS "委工單號"
  ,TG003 AS "開單日期"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TG005 AS "入庫庫別"
  ,TG006 AS "回貨地址"
  ,TG007 AS "加工廠商"
  ,TG008 AS "確認日"
  ,TG009 AS "確認者"
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
  ,TG011 AS "確認碼"
  ,TG012 AS "傳送次數"
  ,TG013 AS "備註A"
  ,TG014 AS "備註B"
  ,TG015 AS "備註C"
  ,TG016 AS "備註D"
  ,TG017 AS "幣別"
  ,TG018 AS "母製令別"
  ,TG019 AS "廠別代號"
  ,TG020 AS "不良品入庫別"
  ,TG021 AS "下站加工項目"
  ,TG022 AS "下站加工廠商"
  ,TG023 AS "下站加工聯絡人"
  ,TG024 AS "下站加工電話"
  ,TG025 AS "送貨地址一"
  ,TG026 AS "送貨地址二"
  ,TG027 AS "稅別碼"
  ,TG033 AS "製造廠商"

FROM IDLTG
