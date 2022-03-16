--COPUF_費用預估資料單頭檔
SELECT
  ,CASE 
   WHEN '1' THEN N'報價'
   WHEN '2' THEN N'訂單'
   ELSE ""
   END AS "預估類型"
  ,UF002 AS "預估單別"
  ,UF003 AS "預估單號"
  ,UF004 AS "備註"
  ,UF005 AS "費用分攤依金額本幣合計"
  ,UF006 AS "費用分攤依數量本幣合計"
  ,UF007 AS "費用分攤依毛重本幣合計"
  ,UF008 AS "費用分攤依材積本幣合計"
  ,UF009 AS "本幣金額合計"
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
   END AS "預留欄位"
  ,UF022 AS "幣別"
  ,UF023 AS "匯率"
  ,UF024 AS "總金額"
  ,UF025 AS "本幣總金額"
  ,UF026 AS "總加扣款"
  ,UF027 AS "本幣總加扣款"
  ,CASE 
   WHEN '1' THEN N'標準成本'
   WHEN '2' THEN N'移動平均成本'
   WHEN '3' THEN N'最近進價'
   WHEN '4' THEN N'業務底價'
   ELSE ""
   END AS "成本依據"
  ,UF029 AS "銷售成本"
  ,UF030 AS "利潤金額"
  ,UF031 AS "利潤率"

FROM COPUF
