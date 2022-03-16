--ASTMH_資產資料子單頭檔
SELECT
  ,MH001 AS "資產編號"
  ,MH002 AS "資產名稱"
  ,MH003 AS "資產規格"
  ,CASE 
   WHEN '1' THEN N'主件'
   WHEN '2' THEN N'附件'
   ELSE ""
   END AS "型態"
  ,MH005 AS "主件編號"
  ,MH006 AS "資產類別"
  ,MH007 AS "供應廠商代號"
  ,MH008 AS "供應廠商簡稱"
  ,MH009 AS "製造廠商代號"
  ,MH010 AS "製造廠商簡稱"
  ,MH011 AS "單位"
  ,MH012 AS "數量"
  ,MH013 AS "管理區分"
  ,MH014 AS "耐用月數"
  ,MH015 AS "未攤月數"
  ,MH016 AS "取得日期"
  ,MH017 AS "銷帳日期"
  ,MH018 AS "幣別"
  ,MH019 AS "原幣取得成本"
  ,MH020 AS "取得成本"
  ,MH021 AS "改良成本"
  ,MH022 AS "預留殘值"
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
  ,MH025 AS "折畢續提"
  ,MH026 AS "續提耐用月數"
  ,MH027 AS "續提殘值"
  ,MH028 AS "開始提列"
  ,MH029 AS "累積折舊"
  ,MH030 AS "資產科目"
  ,MH031 AS "累計折舊科目"
  ,MH032 AS "備註"
  ,CASE 
   WHEN '1' THEN N'未投抵'
   WHEN '2' THEN N'已投抵'
   WHEN '3' THEN N'不能投抵'
   ELSE ""
   END AS "投資抵減"
  ,MH034 AS "抵減率"
  ,MH035 AS "主管機關核准文號"
  ,MH036 AS "主管機關核准日期"
  ,MH037 AS "國稅局核准文號"
  ,MH038 AS "國稅局核核准日期"
  ,MH039 AS "確認碼"
  ,MH040 AS "投抵備註"
  ,MH041 AS "續提未用月數"
  ,MH042 AS "取得單別"
  ,MH043 AS "取得單號"
  ,MH044 AS "應付單別"
  ,MH045 AS "應付單號"
  ,MH046 AS "應付序號"
  ,MH047 AS "確認日"
  ,MH048 AS "確認者"
  ,MH049 AS "年折舊額"
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
  ,MH051 AS "月折舊額"
  ,MH052 AS "重估差價"
  ,MH053 AS "匯率"
  ,MH054 AS "再次續提耐用月數"
  ,MH059 AS "折舊方法(稅簽)"
  ,MH061 AS "折畢續提(稅簽)"
  ,MH062 AS "續提耐用月數(稅簽)"
  ,MH063 AS "續提未用月數(稅簽)"
  ,MH064 AS "續提殘值(稅簽)"
  ,MH065 AS "年折舊額(稅簽)"
  ,MH066 AS "月折舊額(稅簽)"
  ,MH067 AS "管理區分(稅簽)"
  ,MH068 AS "耐用月數(稅簽)"
  ,MH069 AS "未攤月數(稅簽)"
  ,MH070 AS "開始提列(稅簽)"
  ,MH071 AS "銷帳日期(稅簽)"
  ,MH072 AS "原幣取得成本(稅簽)"
  ,MH073 AS "取得成本(稅簽)"
  ,MH074 AS "改良成本(稅簽)"
  ,MH075 AS "重估差價(稅簽)"
  ,MH076 AS "累積折舊(稅簽)"
  ,MH077 AS "預留殘值(稅簽)"
  ,MH078 AS "減損差價"
  ,MH079 AS "減損差價(稅簽)"
  ,MH080 AS "變更版次"
  ,MH081 AS "變更日期"

FROM ASTMH
