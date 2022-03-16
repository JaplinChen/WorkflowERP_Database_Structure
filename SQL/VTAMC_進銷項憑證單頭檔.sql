--VTAMC_進銷項憑證單頭檔
SELECT
  ,MC001 AS "申報公司"
  ,MC002 AS "申報年月"
  ,CASE 
   WHEN '1' THEN N'進項'
   WHEN '2' THEN N'銷項'
   ELSE ""
   END AS "進/銷項"
  ,MC004 AS "格式代號"
  ,MC005 AS "稅務編號"
  ,MC006 AS "流水號"
  ,MC007 AS "開立日期"
  ,MC008 AS "買方統一編號"
  ,MC009 AS "賣方統一編號"
  ,MC010 AS "發票註記碼"
  ,MC011 AS "發票流水碼"
  ,MC012 AS "銷售金額"
  ,MC013 AS "增值稅"
  ,CASE 
   WHEN '1' THEN N'應稅內含'
   WHEN '2' THEN N'應稅外加'
   WHEN '3' THEN N'零稅率'
   WHEN '4' THEN N'免稅'
   ELSE ""
   END AS "課稅別"
  ,MC015 AS "發票作廢"
  ,CASE 
   WHEN '1' THEN N'應稅貨物生產經營專用'
   WHEN '2' THEN N'不應稅貨物生產經營專用'
   WHEN '3' THEN N'應稅和不應稅貨物共用'
   ELSE ""
   END AS "扣抵區分"
  ,MC017 AS "備註"
  ,CASE 
   WHEN '1' THEN N'拋轉'
   WHEN '2' THEN N'人工'
   ELSE ""
   END AS "來源方式"
  ,MC019 AS "來源單別"
  ,MC020 AS "來源單號"
  ,MC021 AS "用途"
  ,MC022 AS "交易人代號"
  ,MC023 AS "交易人簡稱"
  ,MC024 AS "外銷方式"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,MC026 AS "證明文件名稱"
  ,MC027 AS "出口報單類別"
  ,MC028 AS "證明文件號碼"
  ,MC029 AS "輸出或結匯日期"

FROM VTAMC
