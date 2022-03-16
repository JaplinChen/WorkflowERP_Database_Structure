--QMSTD_託外進貨檢驗單單頭檔
SELECT
  ,TD001 AS "託外進貨單別"
  ,TD002 AS "託外進貨單號"
  ,TD003 AS "託外進貨序號"
  ,TD004 AS "檢驗日期"
  ,TD005 AS "檢驗期限"
  ,TD006 AS "檢驗人員"
  ,TD007 AS "破壞數"
  ,TD008 AS "驗退數"
  ,TD009 AS "扣款金額"
  ,TD010 AS "扣款原因"
  ,TD011 AS "判定"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'減量'
   WHEN '2' THEN N'正常'
   WHEN '3' THEN N'加嚴'
   WHEN '4' THEN N'全檢'
   ELSE ""
   END AS "檢驗方式"
  ,TD013 AS "列印次數"
  ,TD014 AS "確認碼"
  ,TD015 AS "備註"
  ,TD019 AS "單據日期"
  ,TD020 AS "確認者"
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
  ,TD022 AS "總抽樣數量"
  ,TD023 AS "不良數量合計"
  ,TD024 AS "傳送次數"
  ,TD025 AS "品管類別"
  ,TD500 AS "GROSS_DIE"
  ,TD501 AS "GOOD_DIE"
  ,TD502 AS "良率%"
  ,TD503 AS "加工片數"
  ,TD504 AS "進貨包裝數量"
  ,TD505 AS "報廢包裝數量"
  ,TD506 AS "包裝單位"
  ,TD507 AS "包裝驗退數"
  ,TD553 AS "不良品數量"
  ,TD554 AS "廢品數量"
  ,TD555 AS "不良品DIE數"
  ,TD556 AS "廢品DIE數"

FROM QMSTD
