--HRSTK_訓練申請資料單頭檔
SELECT
  ,TK001 AS "申請日期"
  ,TK002 AS "申請序號"
  ,TK004 AS "申請部門"
  ,TK005 AS "申請人員代號"
  ,TK006 AS "訓練代號"
  ,TK007 AS "課程代號"
  ,CASE 
   WHEN '1' THEN N'年度計劃'
   WHEN '2' THEN N'不定期需求'
   WHEN '3' THEN N'專案計劃'
   WHEN '4' THEN N'培訓專案'
   ELSE ""
   END AS "課程發起來源"
  ,TK009 AS "類別"
  ,CASE 
   WHEN '1' THEN N'主管指派'
   WHEN '2' THEN N'個人申請'
   ELSE ""
   END AS "參加方式"
  ,TK011 AS "指派主管"
  ,TK012 AS "報名截止日期"
  ,TK013 AS "最高參加人數"
  ,TK014 AS "最低參加人數"
  ,TK015 AS "已報名人數"
  ,TK017 AS "訓練日期起"
  ,TK018 AS "訓練日期迄"
  ,TK019 AS "訓練時間起(時:分)"
  ,TK020 AS "訓練時間迄(時:分)"
  ,TK021 AS "訓練時數"
  ,TK022 AS "講師代號"
  ,TK023 AS "訓練對象"
  ,TK024 AS "課程目的"
  ,TK025 AS "訓練成果"
  ,TK026 AS "訓練地點"
  ,TK027 AS "住宿地點"
  ,TK028 AS "主辦單位"
  ,TK029 AS "主辦部門"
  ,TK030 AS "主辦人員"
  ,TK031 AS "協辦部門"
  ,TK032 AS "聯絡人"
  ,TK033 AS "聯絡電話"
  ,TK034 AS "傳真"
  ,TK035 AS "場地類別代號"
  ,TK036 AS "場地代號"
  ,CASE 
   WHEN '1' THEN N'書面報告'
   WHEN '2' THEN N'課程評估表'
   WHEN '3' THEN N'開會分享心得'
   WHEN '4' THEN N'辦理內部訓練'
   WHEN '5' THEN N'其他'
   ELSE ""
   END AS "受訓後報告方式"
  ,TK038 AS "報告日期"
  ,TK039 AS "心得報告地點"
  ,TK040 AS "費用總計"
  ,TK041 AS "每人預估費用"
  ,TK042 AS "備註"
  ,TK043 AS "確認日期"
  ,TK044 AS "確認者"
  ,TK045 AS "確認碼"
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
  ,TK047 AS "講師類別"

FROM HRSTK
