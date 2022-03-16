--ASTMB_資產資料單頭檔
SELECT
  ,MB001 AS "資產編號"
  ,MB002 AS "資產名稱"
  ,MB003 AS "資產規格"
  ,CASE 
   WHEN '1' THEN N'主件'
   WHEN '2' THEN N'附件'
   ELSE ""
   END AS "型態"
  ,MB005 AS "主件編號"
  ,MB006 AS "資產類別"
  ,MB007 AS "供應廠商代號"
  ,MB008 AS "供應廠商簡稱"
  ,MB009 AS "製造廠商代號"
  ,MB010 AS "製造廠商簡稱"
  ,MB011 AS "單位"
  ,MB012 AS "數量"
  ,MB013 AS "管理區分"
  ,MB014 AS "耐用月數"
  ,MB015 AS "未攤月數"
  ,MB016 AS "取得日期"
  ,MB017 AS "銷帳日期"
  ,MB018 AS "幣別"
  ,MB019 AS "原幣取得成本"
  ,MB020 AS "取得成本"
  ,MB021 AS "改良成本"
  ,MB022 AS "預留殘值"
  ,CASE 
   WHEN '0' THEN N'不提折舊'
   WHEN '1' THEN N'平均法'
   WHEN '2' THEN N'定率遞減法'
   ELSE ""
   END AS "折舊方法"
  ,CASE 
   WHEN '0' THEN N'不分攤'
   WHEN '1' THEN N'依保管部門'
   WHEN '2' THEN N'依固定比率'
   ELSE ""
   END AS "折舊分攤方式"
  ,MB025 AS "折畢續提"
  ,MB026 AS "續提耐用月數"
  ,MB027 AS "續提殘值"
  ,MB028 AS "開始提列"
  ,MB029 AS "累積折舊"
  ,MB030 AS "資產科目"
  ,MB031 AS "累計折舊科目"
  ,MB032 AS "備註"
  ,CASE 
   WHEN '1' THEN N'未投抵'
   WHEN '2' THEN N'已投抵'
   WHEN '3' THEN N'不能投抵'
   ELSE ""
   END AS "投資抵減"
  ,MB034 AS "抵減率"
  ,MB035 AS "主管機關核准文號"
  ,MB036 AS "主管機關核准日期"
  ,MB037 AS "國稅局核准文號"
  ,MB038 AS "國稅局核核准日期"
  ,MB039 AS "確認碼"
  ,MB040 AS "投抵備註"
  ,MB041 AS "續提未用月數"
  ,MB042 AS "取得單別"
  ,MB043 AS "取得單號"
  ,MB044 AS "應付單別"
  ,MB045 AS "應付單號"
  ,MB046 AS "應付序號"
  ,MB047 AS "確認日"
  ,MB048 AS "確認者"
  ,MB049 AS "年折舊額"
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
  ,MB051 AS "月折舊額"
  ,MB052 AS "重估差價"
  ,MB053 AS "匯率"
  ,MB054 AS "再次續提耐用月數"
  ,MB059 AS "折舊方法(稅簽)"
  ,MB061 AS "折畢續提(稅簽)"
  ,MB062 AS "續提耐用月數(稅簽)"
  ,MB063 AS "續提未用月數(稅簽)"
  ,MB064 AS "續提殘值(稅簽)"
  ,MB065 AS "年折舊額(稅簽)"
  ,MB066 AS "月折舊額(稅簽)"
  ,MB067 AS "管理區分(稅簽)"
  ,MB068 AS "耐用月數(稅簽)"
  ,MB069 AS "未攤月數(稅簽)"
  ,MB070 AS "開始提列(稅簽)"
  ,MB071 AS "銷帳日期(稅簽)"
  ,MB072 AS "原幣取得成本(稅簽)"
  ,MB073 AS "取得成本(稅簽)"
  ,MB074 AS "改良成本(稅簽)"
  ,MB075 AS "重估差價(稅簽)"
  ,MB076 AS "累積折舊(稅簽)"
  ,MB077 AS "預留殘值(稅簽)"
  ,MB078 AS "減損差價"
  ,MB079 AS "減損差價(稅簽)"

FROM ASTMB
