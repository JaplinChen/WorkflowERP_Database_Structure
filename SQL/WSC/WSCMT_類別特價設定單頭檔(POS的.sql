--WSCMT_類別特價設定單頭檔(POS的
SELECT
  ,MT001 AS "組別"
  ,MT002 AS "品號類別"
  ,MT003 AS "起始生效日"
  ,MT004 AS "截止生效日"
  ,MT007 AS "幣別"
  ,MT008 AS "核價日"
  ,MT009 AS "含稅否"
  ,CASE 
   WHEN '0' THEN N'不計佣金'
   WHEN '1' THEN N'佣金單價'
   WHEN '2' THEN N'每批交易計價'
   WHEN '3' THEN N'佣金百分比'
   ELSE ""
   END AS "佣金計算方式"
  ,MT011 AS "佣金"
  ,MT012 AS "限時段"
  ,MT013 AS "起始時間"
  ,MT014 AS "截止時間"
  ,CASE 
   WHEN 'Y' THEN N'需輸入專櫃特價單身'
   WHEN 'N' THEN N'所有專櫃都適用'
   ELSE ""
   END AS "限專櫃"
  ,CASE 
   WHEN '1' THEN N'特價'
   WHEN '2' THEN N'折扣，預設'
   WHEN '2' THEN N'折扣，隱藏欄位'
   ELSE ""
   END AS "特價方式"
  ,MT017 AS "非會員特價"
  ,MT018 AS "會員VIP_A"
  ,MT019 AS "會員VIP_B"
  ,MT020 AS "會員VIP_C"
  ,MT021 AS "會員VIP_D"
  ,MT022 AS "會員VIP_E"
  ,MT023 AS "傳輸碼"
  ,MT024 AS "確認碼"
  ,MT025 AS "確認日"
  ,MT026 AS "分類方式"
  ,MT027 AS "確認者"
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

FROM WSCMT
