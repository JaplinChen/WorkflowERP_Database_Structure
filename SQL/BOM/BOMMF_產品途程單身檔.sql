--BOMMF_產品途程單身檔
SELECT
  ,MF001 AS "途程品號"
  ,MF002 AS "途程代號"
  ,MF003 AS "加工順序"
  ,MF004 AS "製程代號"
  ,CASE 
   WHEN '1' THEN N'廠內製程'
   WHEN '2' THEN N'託外製程'
   ELSE ""
   END AS "性質"
  ,MF006 AS "線別/廠商代號"
  ,MF007 AS "線別/廠商名稱"
  ,MF008 AS "製程敘述"
  ,MF009 AS "固定人時(秒)"
  ,MF010 AS "變動人時(秒)"
  ,MF011 AS "移轉批量"
  ,MF012 AS "固定天數"
  ,MF013 AS "變動天數"
  ,MF014 AS "落後天數"
  ,MF015 AS "幣別"
  ,MF016 AS "保留欄位"
  ,MF017 AS "加工單位"
  ,MF018 AS "未稅加工單價"
  ,MF019 AS "工時批量"
  ,MF020 AS "單位產出分子"
  ,CASE 
   WHEN '0' THEN N'免檢'
   WHEN '1' THEN N'抽檢(減量)'
   WHEN '2' THEN N'抽檢(正常)'
   WHEN '3' THEN N'抽檢(加嚴)'
   WHEN '4' THEN N'全檢'
   ELSE ""
   END AS "檢驗方式"
  ,MF023 AS "備註"
  ,MF024 AS "固定機時(秒)"
  ,MF025 AS "變動機時(秒)"
  ,MF026 AS "檢驗天數"
  ,CASE 
   WHEN '1' THEN N'數量'
   WHEN '2' THEN N'包裝數量'
   ELSE ""
   END AS "完工判斷依據"
  ,MF029 AS "單位產出分母"
  ,MF034 AS "資源群組"
  ,MF035 AS "資源群組名稱"
  ,MF036 AS "APS固定工時"
  ,MF038 AS "批次加工量"
  ,MF040 AS "機台代號"
  ,MF041 AS "機台名稱"
  ,MF042 AS "指定資源"
  ,MF044 AS "基準數量"
  ,MF045 AS "設備規格一"
  ,MF046 AS "設備規格二"
  ,MF047 AS "設備規格三"
  ,MF048 AS "設備規格四"
  ,MF049 AS "設備規格五"
  ,MF050 AS "設備規格六"
  ,MF051 AS "設備規格七"
  ,MF052 AS "設備規格八"
  ,MF053 AS "設備規格九"
  ,MF054 AS "設備規格十"
  ,MF055 AS "設備規格十一"
  ,MF056 AS "設備規格十二"
  ,MF057 AS "設備規格十三"
  ,MF058 AS "設備規格十四"
  ,MF059 AS "設備規格十五"
  ,MF060 AS "後製工時"
  ,MF061 AS "APS變動工時"
  ,MF062 AS "機台數/人數"
  ,MF063 AS "產出頻率"

FROM BOMMF
