--COPTI_銷退單單頭檔
SELECT
  ,TI001 AS "單別"
  ,TI002 AS "單號"
  ,TI003 AS "銷退日"
  ,TI004 AS "客戶"
  ,TI005 AS "部門"
  ,TI006 AS "業務員"
  ,TI007 AS "廠別"
  ,TI008 AS "幣別"
  ,TI009 AS "匯率"
  ,TI010 AS "原幣銷退金額"
  ,TI011 AS "原幣銷退稅額"
  ,CASE 
   WHEN '1' THEN N'二聯式'
   WHEN '2' THEN N'三聯式'
   WHEN '3' THEN N'二聯式收銀機發票'
   WHEN '4' THEN N'三聯式收銀機發票'
   WHEN '5' THEN N'電子計算機發票'
   WHEN '6' THEN N'免用統一發票'
   WHEN 'A' THEN N'增值稅專用發票'
   WHEN 'B' THEN N'普通發票'
   WHEN 'C' THEN N'免用發票'
   ELSE ""
   END AS "發票聯數"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TI014 AS "發票號碼(訖)"
  ,TI015 AS "統一編號"
  ,TI016 AS "列印次數"
  ,TI017 AS "發票日期"
  ,TI018 AS "更新碼"
  ,TI019 AS "確認碼"
  ,TI020 AS "備註"
  ,TI021 AS "客戶全名"
  ,TI022 AS "收款業務員"
  ,TI023 AS "備註一"
  ,TI024 AS "備註二"
  ,TI025 AS "備註三"
  ,CASE 
   WHEN '1' THEN N'可扣抵進貨及費用'
   WHEN '2' THEN N'可扣抵固定資產'
   WHEN '3' THEN N'不可扣抵進貨及費用'
   WHEN '4' THEN N'不可扣抵固定資產'
   ELSE ""
   END AS "扣抵區分"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,TI028 AS "件數"
  ,TI029 AS "總數量"
  ,TI030 AS "員工代號"
  ,TI031 AS "產生分錄碼(收入)"
  ,TI032 AS "產生分錄碼(成本)"
  ,TI033 AS "申報年月"
  ,TI034 AS "單據日期"
  ,TI035 AS "確認者"
  ,TI036 AS "營業稅率"
  ,TI037 AS "本幣銷退金額"
  ,TI038 AS "本幣銷退稅額"
  ,TI039 AS "付款條件代號"
  ,TI040 AS "總包裝數量"
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
  ,TI042 AS "流程代號"
  ,CASE 
   WHEN 'Y' THEN N'拋轉成功(來源廠商)'
   WHEN 'y' THEN N'拋轉成功(下游廠商)'
   WHEN 'N' THEN N'未拋轉'
   WHEN 'n' THEN N'訂單變更'
   WHEN 'U' THEN N'拋轉失敗'
   WHEN 'u' THEN N'還原失敗'
   ELSE ""
   END AS "拋轉狀態"
  ,CASE 
   WHEN '0' THEN N'依品號預設'
   WHEN 'Y' THEN N'預設為保稅品'
   WHEN 'N' THEN N'預設為非保稅品'
   ELSE ""
   END AS "保稅碼"
  ,TI045 AS "傳送次數"
  ,TI046 AS "取貨地址一"
  ,TI047 AS "取貨地址二"
  ,TI048 AS "折讓列印次數"
  ,TI049 AS "連絡人"
  ,TI050 AS "代送商代號"
  ,CASE 
   WHEN '1' THEN N'依品號'
   WHEN '2' THEN N'依總金額'
   ELSE ""
   END AS "營站佣金計算方式"
  ,TI052 AS "營站佣金比率"
  ,TI053 AS "佣金計算含稅否"
  ,TI054 AS "佣金總金額"
  ,TI055 AS "EBC銷退單號"
  ,TI056 AS "EBC銷退版次"
  ,CASE 
   WHEN '1' THEN N'一般'
   WHEN '2' THEN N'FOB'
   WHEN '3' THEN N'C&F'
   WHEN '4' THEN N'C&I'
   WHEN '5' THEN N'CIF'
   WHEN '6' THEN N'FOB&C'
   WHEN '7' THEN N'C&F&C'
   WHEN '8' THEN N'C&I&C'
   WHEN '9' THEN N'CIF&C'
   ELSE ""
   END AS "交易條件"
  ,TI058 AS "客戶英文全名"
  ,TI064 AS "稅別碼"
  ,TI065 AS "海關手冊"
  ,TI066 AS "註記號"
  ,TI067 AS "多發票"
  ,TI068 AS "發票號碼(起)"
  ,TI069 AS "發票張數"
  ,TI070 AS "單身多稅率"
  ,TI071 AS "稅幣匯率"
  ,TI072 AS "發票註記碼長度"
  ,TI073 AS "發票流水碼長度"

FROM COPTI
