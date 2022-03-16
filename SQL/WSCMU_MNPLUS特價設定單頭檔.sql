--WSCMU_MNPLUS特價設定單頭檔
SELECT
  ,MU001 AS "組別"
  ,MU002 AS "品號"
  ,MU003 AS "起始生效日"
  ,MU004 AS "截止生效日"
  ,MU007 AS "幣別"
  ,MU008 AS "核價日"
  ,MU009 AS "含稅否"
  ,CASE 
   WHEN '0' THEN N'不計佣金'
   WHEN '1' THEN N'佣金單價'
   WHEN '2' THEN N'每批交易計價'
   WHEN '3' THEN N'佣金百分比'
   ELSE ""
   END AS "佣金計算方式"
  ,MU011 AS "佣金"
  ,MU012 AS "限時段"
  ,MU013 AS "起始時間"
  ,MU014 AS "截止時間"
  ,CASE 
   WHEN 'Y' THEN N'需輸入專櫃特價單身'
   WHEN 'N' THEN N'所有專櫃都適用'
   ELSE ""
   END AS "限專櫃"
  ,CASE 
   WHEN '1' THEN N'特價'
   WHEN '2' THEN N'折扣'
   ELSE ""
   END AS "特價方式"
  ,MU017 AS "非會員特價"
  ,MU018 AS "會員VIP_A"
  ,MU019 AS "會員VIP_B"
  ,MU020 AS "會員VIP_C"
  ,MU021 AS "會員VIP_D"
  ,MU022 AS "會員VIP_E"
  ,MU023 AS "傳輸碼"
  ,MU024 AS "確認碼"
  ,MU025 AS "確認日"
  ,CASE 
   WHEN '例' THEN N'買一個35元，買三個100元'
   ELSE ""
   END AS "數量"
  ,MU027 AS "確認者"
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

FROM WSCMU
