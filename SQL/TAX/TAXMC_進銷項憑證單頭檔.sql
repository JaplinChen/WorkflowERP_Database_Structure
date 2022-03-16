--TAXMC_進銷項憑證單頭檔
SELECT
  ,MC001 AS "申報公司"
  ,MC002 AS "申報年月"
  ,MC004 AS "格式代號"
  ,MC005 AS "稅籍編號"
  ,MC006 AS "流水號"
  ,MC007 AS "開立日期"
  ,MC008 AS "買方統一編號"
  ,MC009 AS "賣方統一編號"
  ,MC010 AS "發票號碼"
  ,MC011 AS "銷售金額"
  ,CASE 
   WHEN '0' THEN N'應稅內含'
   WHEN '1' THEN N'應稅外加'
   WHEN '2' THEN N'零稅率'
   WHEN '3' THEN N'免稅'
   WHEN 'D' THEN N'作廢'
   ELSE ""
   END AS "課稅別"
  ,MC013 AS "營業稅額"
  ,CASE 
   WHEN '1' THEN N'可扣抵之進貨及費用'
   WHEN '2' THEN N'可扣抵之固定資產'
   WHEN '3' THEN N'不可扣抵之進貨及費用'
   WHEN '4' THEN N'不可扣抵之固定資產'
   ELSE ""
   END AS "扣抵代號"
  ,MC015 AS "空白欄位"
  ,CASE 
   WHEN 'A' THEN N'彙加資料 空白表非彙加資料'
   ELSE ""
   END AS "彙加註記"
  ,MC017 AS "洋菸酒註記"
  ,MC018 AS "備註"
  ,CASE 
   WHEN '1' THEN N'拋轉'
   WHEN '2' THEN N'人工'
   ELSE ""
   END AS "來源方式"
  ,MC020 AS "來源單別"
  ,MC021 AS "來源單號"
  ,MC022 AS "買受人代號"
  ,MC023 AS "買受人簡稱"
  ,MC024 AS "貨物名稱"
  ,MC025 AS "數量"
  ,MC026 AS "外銷方式"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,MC028 AS "證明文件名稱"
  ,MC029 AS "出口報單類別"
  ,MC030 AS "證明文件號碼"
  ,MC031 AS "輸出或結匯日期"
  ,MC038 AS "用途"
  ,MC039 AS "註記號"
  ,MC040 AS "發票起始碼"
  ,MC041 AS "發票訖號"
  ,MC042 AS "賣方名稱"
  ,MC043 AS "賣方地址"
  ,MC044 AS "賣方負責人姓名"
  ,MC045 AS "賣方電話"
  ,MC046 AS "賣方傳真"
  ,MC047 AS "電子郵件地址"
  ,MC048 AS "買方名稱"
  ,MC049 AS "買方地址"
  ,MC050 AS "買方負責人姓名"
  ,MC051 AS "買方電話號碼"
  ,MC052 AS "買方傳真號碼"
  ,MC053 AS "買方電子郵件"
  ,MC054 AS "發票檢查碼"
  ,MC055 AS "稅捐稽徵處名稱"
  ,MC056 AS "核准日"
  ,MC057 AS "核准文"
  ,MC058 AS "核准號"
  ,MC059 AS "發票類別"
  ,CASE 
   WHEN '0' THEN N'非捐贈'
   WHEN '1' THEN N'捐贈'
   ELSE ""
   END AS "捐贈註記"
  ,MC061 AS "稅率"
  ,MC062 AS "總計"
  ,MC063 AS "扣抵金額"
  ,MC064 AS "原幣金額"
  ,MC065 AS "匯率"
  ,MC066 AS "幣別"
  ,MC067 AS "作廢日期"
  ,MC068 AS "作廢時間"
  ,MC069 AS "專案作廢核准文號"
  ,MC070 AS "作廢原因"
  ,MC071 AS "接收日期"
  ,MC072 AS "接收時間"
  ,CASE 
   WHEN '1' THEN N'電子發票'
   WHEN '2' THEN N'媒體轉出'
   WHEN '3' THEN N'接收確認'
   ELSE ""
   END AS "狀態碼"
  ,MC074 AS "賣方營業人角色註記"
  ,MC075 AS "買方營業人角色註記"
  ,MC076 AS "沖帳別"
  ,MC077 AS "相關號碼"
  ,MC078 AS "總備註"
  ,MC079 AS "開立日期"

FROM TAXMC
