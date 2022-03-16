--MOCTI_託外進貨單身檔
SELECT
  ,TI001 AS "託外進貨單別"
  ,TI002 AS "託外進貨單號"
  ,TI003 AS "序號"
  ,TI004 AS "品號"
  ,TI005 AS "品名"
  ,TI006 AS "規格"
  ,TI007 AS "進貨數量"
  ,TI008 AS "單位"
  ,TI009 AS "進貨庫別"
  ,TI010 AS "批號"
  ,TI011 AS "有效日期"
  ,TI012 AS "複檢日期"
  ,TI013 AS "製令單別"
  ,TI014 AS "製令單號"
  ,TI015 AS "製程代號"
  ,TI016 AS "進貨包裝數量"
  ,TI017 AS "驗收包裝數量"
  ,TI018 AS "驗收日期"
  ,TI019 AS "驗收數量"
  ,TI020 AS "計價數量"
  ,TI021 AS "報廢數量"
  ,TI022 AS "驗退數量"
  ,TI023 AS "計價單位"
  ,TI024 AS "原幣加工單價"
  ,TI025 AS "原幣加工金額"
  ,TI026 AS "原幣扣款金額"
  ,TI027 AS "進貨費用"
  ,TI028 AS "扣款說明"
  ,TI029 AS "應付憑單別"
  ,TI030 AS "應付憑單號"
  ,TI031 AS "應付憑單序號"
  ,TI032 AS "專案代號"
  ,TI033 AS "暫不付款"
  ,TI034 AS "逾期碼"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'待驗'
   WHEN '2' THEN N'合格'
   WHEN '3' THEN N'不良'
   WHEN '4' THEN N'特採'
   ELSE ""
   END AS "檢驗狀態"
  ,TI036 AS "驗退碼"
  ,TI037 AS "確認碼"
  ,TI038 AS "結帳碼"
  ,TI039 AS "更新碼"
  ,TI040 AS "備註"
  ,TI041 AS "產生分錄碼-成本"
  ,TI042 AS "產生分錄碼-費用"
  ,TI043 AS "確認者"
  ,TI044 AS "原幣未稅金額"
  ,TI045 AS "原幣稅額"
  ,TI046 AS "本幣未稅金額"
  ,TI047 AS "本幣稅額"
  ,TI048 AS "急料"
  ,TI049 AS "包裝單位"
  ,TI050 AS "報廢包裝數量"
  ,TI051 AS "驗退包裝數量"
  ,TI052 AS "保稅碼"
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
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'N' THEN N'未拋轉'
   ELSE ""
   END AS "拋轉碼"
  ,TI055 AS "產品序號數量"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "類型"
  ,TI057 AS "儲位"
  ,TI061 AS "海關手冊"
  ,TI062 AS "SFT批號"
  ,TI063 AS "DATECODE"
  ,TI064 AS "計價方式"
  ,TI065 AS "不良品單價"
  ,TI066 AS "廢品單價"
  ,TI067 AS "計價單價"
  ,TI068 AS "驗收單價"
  ,TI069 AS "EBC出貨通知單號"
  ,TI070 AS "EBC出貨通知版次"
  ,TI071 AS "營業稅率"
  ,TI200 AS "標籤包裝數"
  ,TI500 AS "本站製程"
  ,TI501 AS "下站製程"
  ,TI502 AS "不良品庫別"
  ,TI503 AS "GROSS_DIE"
  ,TI504 AS "GOOD_DIE"
  ,TI505 AS "良率%"
  ,TI506 AS "加工片數"
  ,TI507 AS "非存貨拋轉碼"
  ,CASE 
   WHEN '1' THEN N'量產品'
   WHEN '2' THEN N'工程品'
   ELSE ""
   END AS "性質"
  ,TI551 AS "材料單價比率"
  ,TI552 AS "材料金額"
  ,TI553 AS "不良品數量"
  ,TI554 AS "廢品數量"
  ,TI555 AS "不良品DIE數"
  ,TI556 AS "廢品DIE數"
  ,TI557 AS "材料金額拋轉碼"
  ,TI558 AS "材料產生進貨單別"
  ,TI559 AS "材料產生進貨單號"
  ,TI560 AS "工單拋轉碼"
  ,TI561 AS "進貨下站工單單別"
  ,TI562 AS "進貨下站工單單號"
  ,TI563 AS "非存貨入庫單別"
  ,TI564 AS "非存貨入庫單號"
  ,TI565 AS "刻號/BIN記錄"
  ,TI567 AS "刻號管理"
  ,TI568 AS "Claim單別"
  ,TI569 AS "Claim單號"
  ,TI570 AS "Claim序號"

FROM MOCTI
