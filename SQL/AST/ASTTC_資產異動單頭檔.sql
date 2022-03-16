--ASTTC_資產異動單頭檔
SELECT
  ,TC001 AS "單別"
  ,TC002 AS "單號"
  ,TC003 AS "日期"
  ,TC004 AS "資產編號"
  ,TC005 AS "數量"
  ,TC006 AS "取得成本"
  ,TC007 AS "本幣未稅改良金額"
  ,TC008 AS "累積折舊"
  ,TC009 AS "未用月數"
  ,TC010 AS "預留殘值"
  ,TC011 AS "參考單別"
  ,TC012 AS "參考單號"
  ,TC013 AS "備註"
  ,TC014 AS "單據性質"
  ,TC015 AS "確認碼"
  ,TC016 AS "列印次數"
  ,TC017 AS "客戶代號"
  ,TC018 AS "客戶簡稱"
  ,TC019 AS "幣別"
  ,TC020 AS "匯率"
  ,TC021 AS "原幣出售未稅金額"
  ,TC022 AS "處分損益"
  ,TC023 AS "傳票單別"
  ,TC024 AS "傳票單號"
  ,TC025 AS "自動銷帳"
  ,TC026 AS "參考序號"
  ,TC027 AS "單據日期"
  ,TC028 AS "確認者"
  ,TC029 AS "原耐用月數"
  ,TC030 AS "原年折舊額"
  ,TC031 AS "產生分錄碼"
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
  ,TC033 AS "月折舊額"
  ,TC034 AS "傳送次數"
  ,TC035 AS "耐用月數"
  ,TC036 AS "重估差價"
  ,TC037 AS "續提耐用月數"
  ,TC038 AS "續提未攤月數"
  ,TC039 AS "續提預留殘值"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   WHEN '9' THEN N'不計稅'
   ELSE ""
   END AS "課稅別"
  ,TC041 AS "營業稅率"
  ,TC042 AS "原幣改良未稅金額"
  ,TC043 AS "原幣稅額"
  ,TC044 AS "本幣出售未稅金額"
  ,TC045 AS "本幣稅額"
  ,TC046 AS "本幣金額"
  ,TC047 AS "原幣金額"
  ,TC048 AS "發票日期"
  ,TC049 AS "發票號碼"
  ,TC050 AS "統一編號"
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
  ,TC052 AS "開票人"
  ,TC053 AS "發票代號"
  ,TC054 AS "申報年月"
  ,TC055 AS "客戶全名"
  ,TC056 AS "發票地址一"
  ,TC057 AS "發票地址二"
  ,TC058 AS "首次折畢續提"
  ,TC059 AS "更新折畢續提"
  ,TC060 AS "取消折畢續提"
  ,TC061 AS "原再次續提耐用月數"
  ,TC066 AS "稅別碼"
  ,TC067 AS "註記號"
  ,TC068 AS "累積折舊(稅簽)"
  ,TC069 AS "自動銷帳(稅簽)"
  ,TC070 AS "銷帳(稅簽)"
  ,TC071 AS "首次折畢續提(稅簽)"
  ,TC073 AS "未用月數(稅簽)"
  ,TC074 AS "耐用月數(稅簽)"
  ,TC075 AS "取得成本(稅簽)"
  ,TC076 AS "本幣未稅改良金額(稅簽)"
  ,TC077 AS "重估差價(稅簽)"
  ,TC078 AS "預留殘值(稅簽)"
  ,TC079 AS "月折舊額(稅簽)"
  ,TC080 AS "備註(稅簽)"
  ,TC081 AS "原幣金額(稅簽)"
  ,TC082 AS "原幣改良未稅金額(稅簽)"
  ,TC083 AS "原幣稅額(稅簽)"
  ,TC084 AS "本幣金額(稅簽)"
  ,TC085 AS "本幣稅額(稅簽)"
  ,TC086 AS "原幣出售未稅金額(稅簽)"
  ,TC087 AS "本幣出售未稅金額(稅簽)"
  ,TC088 AS "處分損益(稅簽)"
  ,TC090 AS "稅幣匯率"
  ,TC091 AS "專案代號"
  ,TC092 AS "減損差價"
  ,TC093 AS "減損差價(稅簽)"
  ,CASE 
   WHEN '0' THEN N'不提折舊'
   WHEN '1' THEN N'平均法'
   WHEN '2' THEN N'定率遞減法'
   ELSE ""
   END AS "折舊方法"
  ,CASE 
   WHEN '0' THEN N'不提折舊'
   WHEN '1' THEN N'平均法'
   WHEN '2' THEN N'定率遞減法'
   ELSE ""
   END AS "原折舊方法"
  ,CASE 
   WHEN '0' THEN N'不提折舊'
   WHEN '1' THEN N'平均法'
   WHEN '2' THEN N'定率遞減法'
   ELSE ""
   END AS "折舊方法(稅簽)"
  ,CASE 
   WHEN '0' THEN N'不提折舊'
   WHEN '1' THEN N'平均法'
   WHEN '2' THEN N'定率遞減法'
   ELSE ""
   END AS "原折舊方法(稅簽)"
  ,TC101 AS "原年折舊額(稅簽)"

FROM ASTTC
