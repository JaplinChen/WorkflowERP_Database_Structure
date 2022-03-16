--IDLTH_委工單身檔
SELECT
  ,TH001 AS "委工單別"
  ,TH002 AS "委工單號"
  ,TH003 AS "發料品號"
  ,TH004 AS "委工序號"
  ,CASE 
   WHEN '0' THEN N'BODY'
   WHEN '1' THEN N'未測晶圓'
   WHEN '2' THEN N'已測晶圓'
   WHEN '3' THEN N'未測IC'
   WHEN '4' THEN N'已測IC;作廢'
   ELSE ""
   END AS "發料產品屬性"
  ,TH006 AS "發料品名"
  ,TH007 AS "發料規格"
  ,TH008 AS "發料批號"
  ,TH009 AS "刻號管理"
  ,TH010 AS "片號記錄"
  ,TH011 AS "發料量"
  ,TH012 AS "發料單位"
  ,TH013 AS "發料包裝量"
  ,TH014 AS "預計回貨量"
  ,TH015 AS "預計回貨日"
  ,TH016 AS "備註"
  ,TH017 AS "製令單別"
  ,TH018 AS "製令單號"
  ,TH019 AS "製令序號"
  ,TH020 AS "確認碼"
  ,TH021 AS "發料庫別"
  ,TH022 AS "回貨批號"
  ,TH023 AS "產品品號"
  ,TH024 AS "產品品名"
  ,TH025 AS "產品規格"
  ,TH026 AS "產品單位"
  ,TH027 AS "發料包裝單位"
  ,TH028 AS "Gross_Die"
  ,TH029 AS "加工單位"
  ,TH030 AS "加工單價"
  ,TH031 AS "工單性質"
  ,TH032 AS "標準產出率"
  ,TH033 AS "產品包裝量"
  ,TH034 AS "產品包裝單位"
  ,TH035 AS "回貨DAETCODE"
  ,TH036 AS "加工項目代號"
  ,TH037 AS "專案代號"
  ,TH038 AS "MARKING"
  ,TH039 AS "BONDING"
  ,TH040 AS "幣別"
  ,TH041 AS "匯率"
  ,TH042 AS "訂單單別"
  ,TH043 AS "訂單單號"
  ,TH044 AS "訂單序號"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "發料類型"
  ,CASE 
   WHEN '1' THEN N'工程品號'
   WHEN '2' THEN N'正式品號'
   ELSE ""
   END AS "產品類型"
  ,TH047 AS "序號"
  ,TH048 AS "Marking代號"
  ,TH054 AS "計價方式"
  ,TH055 AS "不良品單價"
  ,TH056 AS "廢品單價"
  ,TH057 AS "儲位"
  ,TH058 AS "發料DAETCODE"
  ,TH059 AS "計價單價"
  ,TH060 AS "驗收單價"
  ,TH061 AS "進貨/託外進貨單別"
  ,TH062 AS "進貨/託外進貨單號"
  ,TH063 AS "進貨/託外進貨序號"

FROM IDLTH
