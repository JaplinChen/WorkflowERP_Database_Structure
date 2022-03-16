--QMSTG_生產入庫檢驗單單頭檔
SELECT
  ,TG001 AS "生產入庫單別"
  ,TG002 AS "生產入庫單號"
  ,TG003 AS "生產入庫序號"
  ,TG004 AS "檢驗日期"
  ,TG005 AS "檢驗期限"
  ,TG006 AS "檢驗人員"
  ,TG007 AS "破壞數"
  ,TG008 AS "驗退數"
  ,TG011 AS "判定"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'減量'
   WHEN '2' THEN N'正常'
   WHEN '3' THEN N'加嚴'
   WHEN '4' THEN N'全檢'
   ELSE ""
   END AS "檢驗方式"
  ,TG013 AS "列印次數"
  ,TG014 AS "確認碼"
  ,TG015 AS "備註"
  ,TG019 AS "單據日期"
  ,TG020 AS "確認者"
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
  ,TG022 AS "總抽樣數量"
  ,TG023 AS "不良數量合計"
  ,TG024 AS "傳送次數"
  ,TG025 AS "品管類別"
  ,TG500 AS "GROSS_DIE"
  ,TG501 AS "GOOD_DIE"
  ,TG502 AS "良率%"
  ,TG503 AS "加工片數"
  ,TG504 AS "進貨包裝數量"
  ,TG505 AS "報廢包裝數量"
  ,TG506 AS "包裝單位"
  ,TG507 AS "包裝驗退數"
  ,TG553 AS "不良品數量"
  ,TG554 AS "廢品數量"
  ,TG555 AS "不良品DIE數"
  ,TG556 AS "廢品DIE數"

FROM QMSTG
