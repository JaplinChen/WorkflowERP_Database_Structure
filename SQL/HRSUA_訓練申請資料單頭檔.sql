--HRSUA_訓練申請資料單頭檔
SELECT
  ,UA001 AS "申請日期"
  ,UA002 AS "申請序號"
  ,UA004 AS "申請部門"
  ,UA005 AS "申請人員代號"
  ,UA006 AS "訓練代號"
  ,UA007 AS "課程代號"
  ,CASE 
   WHEN '1' THEN N'年度計劃'
   WHEN '2' THEN N'不定期需求'
   WHEN '3' THEN N'專案計劃'
   WHEN '4' THEN N'培訓專案'
   ELSE ""
   END AS "課程發起來源"
  ,UA009 AS "類別"
  ,CASE 
   WHEN '1' THEN N'主管指派'
   WHEN '2' THEN N'個人申請'
   ELSE ""
   END AS "參加方式"
  ,UA011 AS "指派主管"
  ,UA012 AS "報名截止日期"
  ,UA013 AS "最高參加人數"
  ,UA014 AS "最低參加人數"
  ,UA015 AS "已報名人數"
  ,UA017 AS "訓練日期起"
  ,UA018 AS "訓練日期迄"
  ,UA019 AS "訓練時間起(時:分)"
  ,UA020 AS "訓練時間迄(時:分)"
  ,UA021 AS "訓練時數"
  ,UA022 AS "講師代號"
  ,UA023 AS "訓練對象"
  ,UA024 AS "課程目的"
  ,UA025 AS "訓練成果"
  ,UA026 AS "訓練地點"
  ,UA027 AS "住宿地點"
  ,UA028 AS "主辦單位"
  ,UA029 AS "主辦部門"
  ,UA030 AS "主辦人員"
  ,UA031 AS "協辦部門"
  ,UA032 AS "聯絡人"
  ,UA033 AS "聯絡電話"
  ,UA034 AS "傳真"
  ,UA035 AS "場地類別代號"
  ,UA036 AS "場地代號"
  ,CASE 
   WHEN '1' THEN N'書面報告'
   WHEN '2' THEN N'課程評估表'
   WHEN '3' THEN N'開會分享心得'
   WHEN '4' THEN N'辦理內部訓練'
   WHEN '5' THEN N'其他'
   ELSE ""
   END AS "受訓後報告方式"
  ,UA038 AS "報告日期"
  ,UA039 AS "心得報告地點"
  ,UA040 AS "費用總計"
  ,UA041 AS "每人預估費用"
  ,UA042 AS "備註"
  ,UA043 AS "確認日期"
  ,UA044 AS "確認者"
  ,UA045 AS "確認碼"
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
  ,UA047 AS "講師類別"
  ,UA048 AS "單別"
  ,UA049 AS "單號"
  ,UA050 AS "結案碼"

FROM HRSUA
