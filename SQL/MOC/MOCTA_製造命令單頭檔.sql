--MOCTA_製造命令單頭檔
SELECT
  ,TA001 AS "製令單別"
  ,TA002 AS "製令單號"
  ,TA003 AS "開單日期"
  ,TA004 AS "BOM日期"
  ,TA005 AS "BOM版次"
  ,TA006 AS "產品品號"
  ,TA007 AS "單位"
  ,TA009 AS "預計開工"
  ,TA010 AS "預計完工"
  ,CASE 
   WHEN '1' THEN N'未生產'
   WHEN '2' THEN N'已發料'
   WHEN '3' THEN N'生產中'
   WHEN 'Y' THEN N'已完工'
   WHEN 'y' THEN N'指定完工'
   ELSE ""
   END AS "狀態碼"
  ,TA012 AS "實際開工"
  ,TA013 AS "確認碼"
  ,TA014 AS "實際完工"
  ,TA015 AS "預計產量"
  ,TA016 AS "已領套數"
  ,TA017 AS "已生產量"
  ,TA018 AS "報廢數量"
  ,TA019 AS "廠別代號"
  ,TA020 AS "入庫庫別"
  ,TA021 AS "生產線別"
  ,TA022 AS "加工單價"
  ,TA023 AS "加工單位"
  ,TA024 AS "母製令別"
  ,TA025 AS "母製令編號"
  ,TA026 AS "訂單單別"
  ,TA027 AS "訂單單號"
  ,TA028 AS "訂單序號"
  ,TA029 AS "備註"
  ,CASE 
   WHEN '1' THEN N'廠內製令'
   WHEN '2' THEN N'託外製令'
   ELSE ""
   END AS "性質"
  ,TA031 AS "列印次數"
  ,TA032 AS "加工廠商"
  ,TA033 AS "計劃批號"
  ,TA034 AS "產品品名"
  ,TA035 AS "產品規格"
  ,TA036 AS "預計開工"
  ,TA037 AS "預計完工"
  ,TA038 AS "實際開工"
  ,TA039 AS "實際完工"
  ,TA040 AS "確認日"
  ,TA041 AS "確認者"
  ,TA042 AS "幣別"
  ,TA043 AS "匯率"
  ,TA044 AS "急料"
  ,TA045 AS "預計產包裝量"
  ,TA046 AS "已生產包裝量"
  ,TA047 AS "報廢包裝數量"
  ,TA048 AS "包裝單位"
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
  ,TA050 AS "傳送次數"
  ,TA051 AS "客戶品號"
  ,TA052 AS "APS規劃製令號碼"
  ,TA053 AS "產品序號數量"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TA055 AS "生管/採購人員"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TA057 AS "營業稅率"
  ,TA058 AS "價格條件"
  ,TA059 AS "付款條件代號"
  ,TA060 AS "送貨地址(一)"
  ,TA061 AS "送貨地址(二)"
  ,TA062 AS "版次"
  ,TA063 AS "預計批號"
  ,TA069 AS "原幣加工金額"
  ,TA070 AS "稅別碼"
  ,TA071 AS "Marking代號"
  ,TA072 AS "計價方式"
  ,TA073 AS "不良品單價"
  ,TA074 AS "廢品單價"
  ,TA075 AS "製造廠商"
  ,TA076 AS "計價單價"
  ,TA077 AS "驗收單價"
  ,TA078 AS "進貨/託外進貨單別"
  ,TA079 AS "進貨/託外進貨單號"
  ,TA080 AS "進貨/託外進貨序號"
  ,TA081 AS "採購限制日期"
  ,TA083 AS "鎖定完工時間"
  ,TA085 AS "預計完工時間"
  ,TA090 AS "鎖定開工時間"
  ,TA091 AS "預計開工時間"
  ,TA092 AS "製程否"
  ,CASE 
   WHEN '1' THEN N'固定期間'
   WHEN '2' THEN N'固定開始結束時間'
   ELSE ""
   END AS "外包類型"
  ,TA094 AS "作業時間"
  ,TA095 AS "優先順序"
  ,CASE 
   WHEN '0' THEN N'可異動，'
   WHEN '1' THEN N'不可異動'
   ELSE ""
   END AS "可否異動"
  ,TA500 AS "不良品庫別"
  ,TA501 AS "MARKING"
  ,TA502 AS "BONDING"
  ,TA503 AS "加工片數"
  ,TA504 AS "已交片數"
  ,TA505 AS "加工項目代號"
  ,TA506 AS "晶片厚度"
  ,TA507 AS "晶片尺寸"
  ,TA508 AS "領料單單別"
  ,TA509 AS "領料單單號"
  ,TA510 AS "備註說明A"
  ,TA511 AS "備註說明B"
  ,TA512 AS "備註說明C"
  ,TA513 AS "備註說明D"
  ,TA514 AS "需領用總數"
  ,TA515 AS "需領用包裝總數"
  ,TA516 AS "GROSS_DIE總數"
  ,TA520 AS "特性1"
  ,TA521 AS "特性2"
  ,TA522 AS "特性3"
  ,TA523 AS "特性4"
  ,TA524 AS "特性5"
  ,TA525 AS "特性6"
  ,TA526 AS "特性7"
  ,TA527 AS "特性8"
  ,TA528 AS "特性9"
  ,TA530 AS "下站加工項目"
  ,TA531 AS "下站加工廠商"
  ,TA532 AS "下站加工聯絡人"
  ,TA533 AS "下站加工電話"
  ,TA534 AS "送貨地址一"
  ,TA535 AS "送貨地址二"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TA551 AS "專案代號"
  ,TA552 AS "材料單價比率"

FROM MOCTA
