--TAXMF_彙總申報資料檔
SELECT
  ,MF001 AS "申報公司"
  ,MF002 AS "申報年月"
  ,MF003 AS "格式代號"
  ,MF004 AS "稅籍編號"
  ,MF005 AS "流水號"
  ,MF006 AS "開立日期"
  ,MF007 AS "買方統一編號"
  ,MF008 AS "賣方統一編號"
  ,MF009 AS "發票號碼"
  ,MF010 AS "銷售金額"
  ,CASE 
   WHEN '0' THEN N'應稅內含'
   WHEN '1' THEN N'應稅外加'
   WHEN '2' THEN N'零稅率'
   WHEN '3' THEN N'免稅'
   WHEN 'D' THEN N'作廢'
   ELSE ""
   END AS "課稅別"
  ,MF012 AS "營業稅額"
  ,CASE 
   WHEN '1' THEN N'可扣抵之進貨及費用'
   WHEN '2' THEN N'可扣抵之固定資產'
   ELSE ""
   END AS "扣抵代號"
  ,MF014 AS "空白欄位"
  ,CASE 
   WHEN 'A' THEN N'彙加資料 空白表非彙加資料'
   ELSE ""
   END AS "彙加註記"
  ,CASE 
   WHEN '1' THEN N'非經海關'
   WHEN '2' THEN N'經海關'
   ELSE ""
   END AS "通關方式"
  ,MF017 AS "備註"
  ,CASE 
   WHEN '1' THEN N'拋轉'
   WHEN '2' THEN N'人工'
   ELSE ""
   END AS "來源方式"
  ,MF024 AS "註記號"

FROM TAXMF
