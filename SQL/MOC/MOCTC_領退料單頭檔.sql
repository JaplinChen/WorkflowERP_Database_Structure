--MOCTC_領退料單頭檔
SELECT
  ,TC001 AS "領退料單別"
  ,TC002 AS "領退料單號"
  ,TC003 AS "領退料日期"
  ,TC004 AS "廠別代號"
  ,TC005 AS "生產線別"
  ,TC006 AS "加工廠商"
  ,TC007 AS "備註"
  ,TC008 AS "單據性質"
  ,TC009 AS "確認碼"
  ,TC010 AS "列印次數"
  ,TC011 AS "產生分錄碼-成本"
  ,CASE 
   WHEN '1' THEN N'依製令單號'
   WHEN '2' THEN N'依材料品號'
   WHEN '3' THEN N'依輸入序號+材料品號'
   WHEN '4' THEN N'材料品號+依輸入序號'
   ELSE ""
   END AS "產生依序"
  ,TC013 AS "庫存不足照領"
  ,TC014 AS "單據日期"
  ,TC015 AS "確認者"
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
  ,CASE 
   WHEN '0' THEN N'依品號預設'
   WHEN 'Y' THEN N'預設為保稅品'
   WHEN 'N' THEN N'預設為非保稅品'
   ELSE ""
   END AS "保稅碼"
  ,TC018 AS "傳送次數"
  ,CASE 
   WHEN '0' THEN N'自行輸入'
   WHEN '1' THEN N'製令單'
   WHEN '2' THEN N'生產入庫自動扣料'
   WHEN '3' THEN N'託外進自動扣料'
   WHEN '4' THEN N'託外退自動扣料'
   WHEN '5' THEN N'移轉單'
   WHEN '6' THEN N'挪料單'
   WHEN '7' THEN N'託外進貨廠供料'
   WHEN '8' THEN N'託外退貨廠供料'
   ELSE ""
   END AS "來源別"
  ,TC020 AS "來源單別"
  ,TC021 AS "來源單號"
  ,TC200 AS "單頭條碼"

FROM MOCTC
