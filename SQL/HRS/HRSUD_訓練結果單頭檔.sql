--HRSUD_訓練結果單頭檔
SELECT
  ,UD002 AS "登錄日期"
  ,UD003 AS "課程代號"
  ,UD004 AS "類別"
  ,UD005 AS "訓練代號"
  ,UD006 AS "講師類別"
  ,UD007 AS "講師代號"
  ,UD008 AS "訓練日期起"
  ,UD009 AS "訓練日期迄"
  ,UD010 AS "訓練時間起"
  ,UD011 AS "訓練時間迄"
  ,UD012 AS "訓練時數"
  ,UD013 AS "應到人數"
  ,UD014 AS "實到人數"
  ,UD015 AS "訓練地點"
  ,UD016 AS "主辦單位"
  ,UD017 AS "主辦部門"
  ,UD018 AS "主辦人員"
  ,UD019 AS "協辦部門"
  ,UD020 AS "聯絡人"
  ,UD021 AS "聯絡電話"
  ,UD022 AS "傳真"
  ,UD023 AS "場地類別代號"
  ,UD024 AS "場地代號"
  ,UD025 AS "異常說明"
  ,UD026 AS "費用分攤說明"
  ,UD027 AS "意見彙總"
  ,UD028 AS "改善對策事項"
  ,CASE 
   WHEN '1' THEN N'書面報告'
   WHEN '2' THEN N'課程評估表'
   WHEN '3' THEN N'開會分享心得'
   WHEN '4' THEN N'辦理內部訓練'
   WHEN '5' THEN N'其他'
   ELSE ""
   END AS "報告方式"
  ,UD030 AS "心得報告地點"
  ,UD031 AS "報告日期"
  ,UD032 AS "備註"
  ,UD033 AS "確認日期"
  ,UD034 AS "確認者"
  ,UD035 AS "確認碼"
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
  ,UD037 AS "訓練完成碼"
  ,UD038 AS "訓練申請單別"
  ,UD039 AS "訓練申請單號"
  ,UD040 AS "訓練結果單別"
  ,UD041 AS "訓練結果單號"

FROM HRSUD
