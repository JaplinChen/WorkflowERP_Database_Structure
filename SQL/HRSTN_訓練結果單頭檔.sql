--HRSTN_訓練結果單頭檔
SELECT
  ,TN002 AS "登錄日期"
  ,TN003 AS "課程代號"
  ,TN004 AS "類別"
  ,TN005 AS "訓練代號"
  ,TN006 AS "講師類別"
  ,TN007 AS "講師代號"
  ,TN008 AS "訓練日期起"
  ,TN009 AS "訓練日期迄"
  ,TN010 AS "訓練時間起"
  ,TN011 AS "訓練時間迄"
  ,TN012 AS "訓練時數"
  ,TN013 AS "應到人數"
  ,TN014 AS "實到人數"
  ,TN015 AS "訓練地點"
  ,TN016 AS "主辦單位"
  ,TN017 AS "主辦部門"
  ,TN018 AS "主辦人員"
  ,TN019 AS "協辦部門"
  ,TN020 AS "聯絡人"
  ,TN021 AS "聯絡電話"
  ,TN022 AS "傳真"
  ,TN023 AS "場地類別代號"
  ,TN024 AS "場地代號"
  ,TN025 AS "異常說明"
  ,TN026 AS "費用分攤說明"
  ,TN027 AS "意見彙總"
  ,TN028 AS "改善對策事項"
  ,CASE 
   WHEN '1' THEN N'書面報告'
   WHEN '2' THEN N'課程評估表'
   WHEN '3' THEN N'開會分享心得'
   WHEN '4' THEN N'辦理內部訓練'
   WHEN '5' THEN N'其他'
   ELSE ""
   END AS "報告方式"
  ,TN030 AS "心得報告地點"
  ,TN031 AS "報告日期"
  ,TN032 AS "備註"
  ,TN033 AS "確認日期"
  ,TN034 AS "確認者"
  ,TN035 AS "確認碼"
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

FROM HRSTN
